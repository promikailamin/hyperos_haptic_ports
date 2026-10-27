.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# static fields
.field public static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field public static final ALLOWLIST_TOKEN:Landroid/os/IBinder;

.field static final AUTOGROUP_SPARSE_GROUPS_AT_COUNT:I = 0x6

.field public static final BITMAP_DURATION:Ljava/time/Duration;

.field public static final DBG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field public static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field public static final DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field public static final MY_PID:I

.field public static final MY_UID:I

.field public static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field public static final NOTIFICATION_MAX_AGE_AT_POST:J

.field public static final NOTIFICATION_TTL:J

.field public static final POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

.field public static final TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

.field public static final ZEN_BROADCAST_DELAY:Ljava/time/Duration;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

.field public mAm:Landroid/app/IActivityManager;

.field public mAmi:Landroid/app/ActivityManagerInternal;

.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppOpsListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field public mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field public mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

.field public mAutoGroupAtCount:I

.field public final mAutobundledSummaries:Landroid/util/ArrayMap;

.field public mBitmapOffloader:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

.field public mBroadcastsHandler:Landroid/os/Handler;

.field public final mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

.field mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field public mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field public mDefaultSearchSelectorPkg:Ljava/lang/String;

.field public mDefaultUnsupportedAdjustments:[Ljava/lang/String;

.field public mDeviceIdleManager:Landroid/os/DeviceIdleManager;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mEffectsSuppressors:Ljava/util/List;

.field public final mEnqueuedNotifications:Ljava/util/ArrayList;

.field public mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mForegroundToken:Landroid/os/IBinder;

.field public mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field public mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

.field public final mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field public mInterruptionFilter:I

.field public mIsCurrentToastShown:Z

.field public mIsTelevision:Z

.field public mLastOverRateLogTime:J

.field public mListenerHints:I

.field public mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final mListenersDisablingEffects:Landroid/util/SparseArray;

.field public final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mLockScreenAllowSecureNotifications:Z

.field public mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxPackageEnqueueRate:F

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMsgPkgsAllowedAsConvos:Ljava/util/Set;

.field public mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field public mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final mNotificationList:Ljava/util/ArrayList;

.field public mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

.field public final mNotificationLock:Ljava/lang/Object;

.field public mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

.field public mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

.field public final mNotificationsByKey:Landroid/util/ArrayMap;

.field public final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerClient:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public mPermissionManager:Landroid/permission/PermissionManager;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field public mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mPolicyFile:Landroid/util/AtomicFile;

.field public mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

.field public mPowerManager:Landroid/os/PowerManager;

.field mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

.field public mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field public final mRankingThread:Landroid/os/HandlerThread;

.field public mRedactOtpNotifications:Z

.field public final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field public mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

.field public volatile mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field public final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field public mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

.field final mService:Landroid/os/IBinder;

.field public mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field protected mShowReviewPermissionsNotification:Z

.field public mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStripRemoteViewsSizeBytes:I

.field public mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

.field public final mSummaryByGroupKey:Landroid/util/ArrayMap;

.field public mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mToastQueue:Ljava/util/ArrayList;

.field public mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public final mToastRateLimitingDisabledUids:Ljava/util/Set;

.field public mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

.field public mUgm:Landroid/app/IUriGrantsManager;

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUm:Landroid/os/UserManager;

.field public mUmInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public mWarnRemoteViewsSizeBytes:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$3Oad7UMPTjrelHKvKWVL4q07zFA(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$notifyListenersPostedAndLogLocked$20(Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4uZ6f20pK1CwVPfbV4narImUQWg(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$cancelNotificationLocked$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BGqE3Tukeb8qvtmE5wMYTFOXiC0(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$sendZenBroadcastWithDelay$8(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C57GhaXyNG-zrgjVdj-SeW-YBi4(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$applyNotificationUpdateForUserProfilesAndChannelType$5(ILjava/lang/String;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D44DpzZeOXgFd2Du-iS4b2Yyhi8(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserStopping$11(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbuLFW6eurteMhd0XF6m4tzWYLU(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$sendAppBlockStateChangedBroadcast$10(ZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IokSZo7ncrAslzUBWaAhhgZ_xdg(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onUserUnlocked$9(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OBmCdrQ--ip-uAYY8kteCJ2nTEE(I)Z
    .registers 2

    .line 10701
    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_d

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$QPieBjzXqBJXacG4q4ay98D_r5M(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$updateNotificationChannelInt$12(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXQ00XbT-jlA9rOCAzk820oD5sA(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$applyNotificationUpdateForUserProfiles$1(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U66_JaBekmi9WgPiDKE4Sfxax88(Lcom/android/server/notification/NotificationManagerService;IILcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$applyNotificationUpdateForUserProfilesAndType$6(IILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aOPfwfDgEQQVEzRGEJYhIwrv4rA(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$cancelNotificationLocked$17(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJSfd2L7X9EdzWObzA7QOOQ1m78(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->lambda$reportForegroundServiceUpdate$13(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibY8NyoOiaLovHKyv6d7q7AGgLA(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$onStart$7(ILcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYFIDEcWoLAYUYKeGjvl50FfPbY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l23zH28EGelQw4k9067E8g2RbzI(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$doChannelWarningToast$15(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nTtFPx-sjKGZ4aD-JIyqhW68uDU(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$postNotificationsWhenExitLockDownMode$19(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-VDxWkDzo_X85gm5sxnbwfakx8(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$maybeNotifySystemUiListenerLifetimeExtendedLocked$21(Lcom/android/server/notification/NotificationRecord;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVgSq5GCwevSUDfOXHRKdyANaCY(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->lambda$acquireWakeLockForPost$14(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t0DMocyGaQQeS7A4Uki7cZ5oP8Q(ILjava/lang/String;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    .line 1960
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_16

    .line 1961
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCurrentToastShown(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationListenerStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationListenerStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRedactOtpNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTtlHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/TimeToLiveHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRedactOtpNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyAdjustmentLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyNotificationUpdateForUid(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->applyNotificationUpdateForUid(ILjava/lang/String;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyNotificationUpdateForUserProfiles(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyNotificationUpdateForUserProfiles(ILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyNotificationUpdateForUserProfilesAndChannelType(Lcom/android/server/notification/NotificationManagerService;IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->applyNotificationUpdateForUserProfilesAndChannelType(IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyNotificationUpdateForUserProfilesAndType(Lcom/android/server/notification/NotificationManagerService;IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->applyNotificationUpdateForUserProfilesAndType(IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 14

    .line 0
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .registers 13

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationsWhenEnterLockDownMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUi(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUi()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPostPromotedNotificationPermission(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->checkPostPromotedNotificationPermission(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUseFullScreenIntentPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdestroyPermissionOwner(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindAppNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findAppNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindInCurrentAndSnoozedNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNotificationCount(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/notification/NotificationManagerService;->getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationPermissionChange(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->handleNotificationPermissionChange(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRankingReconsideration(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasCompanionDevice(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallerSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;II)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUiOrShell()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNotificationAssistant(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IInterface;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAssistant(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNotificationRecent(Lcom/android/server/notification/NotificationManagerService;J)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isNotificationRecent(J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPromotable(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPromotable(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedListLocked(Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->notifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monConversationRemovedInternal(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->postNotificationsWhenExitLockDownMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpullNotificationStates(Lcom/android/server/notification/NotificationManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->pullNotificationStates(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreclassifyNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->reclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveBitmapAndRepost(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeBitmapAndRepost(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munclassifyNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munsnoozeAll(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeAll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munsummarizeNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unsummarizeNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNotificationBubbleFlags(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_PID()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMY_UID()I
    .registers 1

    .line 0
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smfindNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisAnimatedReply(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->isAnimatedReply(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisBitmapExpired(JJJ)Z
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->isBitmapExpired(JJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnotificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->wasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 463
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 465
    const-string v0, "debug.child_notifs"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 470
    const-string v0, "debug.notification.interruptiveness"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    const-wide/16 v3, 0x18

    .line 488
    invoke-static {v3, v4}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->BITMAP_DURATION:Ljava/time/Duration;

    .line 510
    const-string v13, "key_type"

    const-string v14, "key_summarization"

    const-string v3, "key_people"

    const-string v4, "key_snooze_criteria"

    const-string v5, "key_user_sentiment"

    const-string v6, "key_contextual_actions"

    const-string v7, "key_text_replies"

    const-string v8, "key_importance"

    const-string v9, "key_importance_proposal"

    const-string v10, "key_sensitive_content"

    const-string v11, "key_ranking_score"

    const-string v12, "key_not_conversation"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 526
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

    .line 530
    const-string v0, "android.app.role.DIALER"

    const-string v2, "android.app.role.EMERGENCY"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    const-wide/16 v2, 0x14

    .line 544
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v0

    const-wide/16 v1, 0x2a

    .line 545
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    const-wide/16 v2, 0x44

    .line 546
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 575
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    .line 664
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0x3

    .line 666
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_TTL:J

    const-wide/16 v0, 0xe

    .line 668
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_MAX_AGE_AT_POST:J

    const-wide/16 v0, 0xfa

    .line 676
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ZEN_BROADCAST_DELAY:Ljava/time/Duration;

    .line 797
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 798
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 799
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 2649
    new-instance v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;-><init>()V

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V
    .registers 6

    .line 2658
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 714
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 717
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v0, "ranker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 722
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 724
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    const/4 p1, 0x0

    .line 726
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 731
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 734
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 736
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 740
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 744
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    .line 746
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 749
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 785
    new-instance p1, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    const/4 p1, 0x1

    .line 792
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 793
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 802
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 804
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    .line 825
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 828
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 1373
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 2131
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 2263
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2275
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 2295
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2404
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4134
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 8345
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 9426
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 2659
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 2660
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2661
    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    sput-object p0, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    return-void
.end method

.method public static clamp(III)I
    .registers 3

    .line 0
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 5

    .line 12082
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 12084
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 12085
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10

    .line 12052
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_49

    .line 12054
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 12055
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x700

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-static {v3, p4, v4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 12056
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_46

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 12057
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    return-object v3

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11

    .line 12066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12067
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_45

    .line 12069
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 12070
    invoke-static {v4, p4, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_42

    .line 12071
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 12072
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 12073
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_45
    return-object v0
.end method

.method public static isAnimatedReply(Ljava/lang/CharSequence;)Z
    .registers 7

    .line 2001
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 2002
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 2003
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v2, Landroid/text/Annotation;

    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/Annotation;

    if-eqz p0, :cond_39

    .line 2005
    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_39

    aget-object v3, p0, v2

    .line 2006
    const-string v4, "isAnimatedReply"

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "1"

    .line 2007
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_39
    return v1
.end method

.method public static isBigPictureWithBitmapOrIcon(Landroid/app/Notification;)Z
    .registers 5

    .line 8581
    const-class v0, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {p0, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 8586
    :cond_a
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.picture"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8587
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1e

    return v3

    .line 8592
    :cond_1e
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.pictureIcon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8593
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_31

    return v3

    :cond_31
    return v1
.end method

.method public static isBitmapExpired(JJJ)Z
    .registers 6

    .line 0
    sub-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-lez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 11714
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_38

    .line 11715
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 11716
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 11717
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p1, :cond_38

    .line 11718
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public static isPromotable(Landroid/app/Notification;Landroid/app/NotificationChannel;)Z
    .registers 4

    .line 9222
    invoke-virtual {p0}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 9225
    :cond_8
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_10

    return v0

    .line 9228
    :cond_10
    sget-object p0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 9229
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v1
.end method

.method public static notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 11629
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    const/4 p2, -0x1

    if-eq p1, p2, :cond_1d

    .line 11635
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    if-eq v2, p2, :cond_1d

    .line 11637
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static privateSpaceFlagsEnabled()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2e

    .line 11448
    :try_start_2
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 11449
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 11451
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_16
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 11454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canceled PendingIntent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    return-void
.end method

.method public static wasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 11731
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ne v0, p1, :cond_38

    .line 11732
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 11733
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 11734
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p1, :cond_38

    .line 11735
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final acquireWakeLockForPost(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .registers 4

    .line 8718
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    return-object p0
.end method

.method public final addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 9

    .line 7857
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 7858
    const-string p0, "key_group_key"

    invoke-virtual {v3, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7859
    new-instance v0, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 7860
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 7861
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 7811
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_b

    goto :goto_50

    .line 7815
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_50

    .line 7817
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7819
    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 7820
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 7824
    :cond_2d
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7825
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    if-eqz p3, :cond_3a

    .line 7828
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 7832
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 7833
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7835
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_FORCE_GROUP:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public final addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5

    .line 3821
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 3822
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3825
    :cond_12
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 3826
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 3808
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    .line 3812
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_10
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_17

    .line 3816
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    :cond_17
    return-void
.end method

.method public addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 2727
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2729
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 2716
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2717
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2718
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2720
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 2722
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public final allowAssistant(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 1162
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    const/high16 v2, 0xc0000

    .line 1163
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 1166
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 1167
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    return v0

    :cond_17
    return v1
.end method

.method public allowDefaultApprovedServices(I)V
    .registers 5

    .line 984
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 985
    :goto_7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 986
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 987
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowNotificationListener(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 990
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackages(I)V

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    return-void
.end method

.method public final allowDndPackage(ILjava/lang/String;)V
    .registers 4

    .line 1145
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1147
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public allowDndPackages(I)V
    .registers 5

    .line 997
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultPackages()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 998
    :goto_7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 999
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackage(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1001
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isDNDMigrationDone(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDNDMigrationDone(I)V

    :cond_22
    return-void
.end method

.method public final allowNotificationListener(ILandroid/content/ComponentName;)V
    .registers 4

    .line 1154
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0, v0}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1157
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final applyAdjustmentLocked(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V
    .registers 15

    if-nez p1, :cond_4

    goto/16 :goto_115

    .line 7725
    :cond_4
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_115

    .line 7727
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_14

    move v0, v2

    goto :goto_18

    .line 7728
    :cond_14
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v0

    .line 7729
    :goto_18
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x1

    .line 7730
    invoke-static {v1, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 7732
    const-string v4, "key_type"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 7733
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationRecord;->setBundleType(I)V

    .line 7735
    :cond_2f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7736
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3c
    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7737
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v8, v0, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_53

    .line 7738
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7740
    :cond_53
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 7741
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v8, v0, v7, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAdjustmentTypeSupportedState(ILjava/lang/String;Z)V

    .line 7742
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7743
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 7742
    invoke-virtual {v8, v0, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isClassificationTypeAllowed(II)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 7744
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 7745
    :cond_6e
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7747
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 7746
    invoke-virtual {v8, v0, v4, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowedForPackage(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_81

    .line 7748
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7752
    :cond_81
    :goto_81
    const-string v8, "key_summarization"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 7753
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v9, v0, v7, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAdjustmentTypeSupportedState(ILjava/lang/String;Z)V

    .line 7754
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7755
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 7754
    invoke-virtual {v9, v0, v8, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowedForPackage(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 7756
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 7760
    :cond_a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a6
    if-ge v2, v0, :cond_b4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 7761
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_a6

    .line 7763
    :cond_b4
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 7764
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->getClassificationChannelLocked(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 7766
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    goto :goto_f0

    .line 7768
    :cond_d3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x40000

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 7771
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_f3

    .line 7774
    :cond_e5
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7776
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7777
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->logClassificationChannelAdjustmentReceived(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_f3

    .line 7767
    :cond_f0
    :goto_f0
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7780
    :cond_f3
    :goto_f3
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 7781
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_sensitive_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 7783
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 7784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result p1

    .line 7782
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->logSensitiveAdjustmentReceived(ZZI)V

    :cond_115
    :goto_115
    return-void
.end method

.method public final applyNotificationUpdateForUid(ILjava/lang/String;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 5

    .line 1959
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->applyUpdateForNotificationsFiltered(Ljava/util/function/Predicate;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public final applyNotificationUpdateForUserProfiles(ILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 4

    .line 1953
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService;->applyUpdateForNotificationsFiltered(Ljava/util/function/Predicate;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public final applyNotificationUpdateForUserProfilesAndChannelType(IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 5

    .line 1984
    invoke-static {p2}, Landroid/app/NotificationChannel;->getChannelIdForBundleType(I)Ljava/lang/String;

    move-result-object p2

    .line 1985
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->applyUpdateForNotificationsFiltered(Ljava/util/function/Predicate;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public final applyNotificationUpdateForUserProfilesAndType(IILcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 5

    .line 1994
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/notification/NotificationManagerService;II)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->applyUpdateForNotificationsFiltered(Ljava/util/function/Predicate;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V

    return-void
.end method

.method public final applyUpdateForNotificationsFiltered(Ljava/util/function/Predicate;Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;)V
    .registers 8

    .line 2110
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 2111
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 2112
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2113
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2114
    invoke-interface {p2, v3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;->apply(Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_43

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2118
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 2119
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 2120
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x1

    .line 2121
    invoke-interface {p2, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationUpdate;->apply(Lcom/android/server/notification/NotificationRecord;Z)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2124
    :cond_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_1f

    throw p0
.end method

.method public final applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 11092
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 11093
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 11094
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 11095
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 11094
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    return-void

    :cond_1b
    const/4 p0, 0x0

    .line 11097
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    return-void
.end method

.method public final areNotificationsEnabledForPackageInt(I)Z
    .registers 2

    .line 9690
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method public final blockToast(IZZZ)Z
    .registers 5

    if-eqz p3, :cond_11

    if-nez p2, :cond_11

    if-nez p4, :cond_11

    const-wide/32 p2, 0x7aa7659

    .line 10969
    invoke-static {p2, p3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 8

    if-eqz p1, :cond_43

    .line 14950
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_40

    if-eqz p3, :cond_21

    .line 14954
    :try_start_b
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ICallNotificationEventCallback;

    .line 14955
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/ICallNotificationEventCallback;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_36

    .line 14957
    :cond_21
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ICallNotificationEventCallback;

    .line 14958
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 14959
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 14958
    invoke-interface {v1, v2, v3}, Landroid/app/ICallNotificationEventCallback;->onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_36} :catch_39

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_39
    move-exception p0

    .line 14963
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 14965
    :cond_40
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_43
    return-void
.end method

.method public final calculateHints()I
    .registers 5

    .line 3831
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_23

    .line 3832
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3833
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3835
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    or-int/2addr v1, v2

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_23
    return v1
.end method

.method public final calculateSuppressedEffects()J
    .registers 5

    .line 3844
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x3

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_14

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_14
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1b

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_1b
    return-wide v0
.end method

.method public calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 7

    .line 3902
    iget p0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_6

    return p0

    :cond_6
    const/4 p1, 0x7

    .line 3905
    new-array v0, p1, [I

    fill-array-data v0, :array_54

    const/16 v1, 0x1c

    if-ge p3, v1, :cond_2b

    const/4 p3, 0x0

    :goto_11
    if-ge p3, p1, :cond_1e

    .line 3919
    aget v1, v0, p3

    not-int v2, v1

    and-int/2addr p0, v2

    .line 3920
    iget v2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_1e
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_24

    or-int/lit8 p0, p0, 0xc

    :cond_24
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_2a

    or-int/lit8 p0, p0, 0x10

    :cond_2a
    return p0

    :cond_2b
    add-int/lit8 p1, p0, -0x3

    if-lez p1, :cond_47

    and-int/lit8 p1, p0, -0x4

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_37

    or-int/lit8 p1, p1, 0x2

    :cond_37
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_46

    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_46

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_46

    or-int/lit8 p0, p1, 0x1

    return p0

    :cond_46
    return p1

    :cond_47
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_4d

    or-int/lit16 p0, p0, 0x8c

    :cond_4d
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_53

    or-int/lit8 p0, p0, 0x10

    :cond_53
    return p0

    :array_54
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public final canBeNonDismissible(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)Z
    .registers 4

    .line 9273
    invoke-virtual {p2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isEnterpriseExempted(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_27

    const-class v0, Landroid/app/Notification$CallStyle;

    .line 9274
    invoke-virtual {p2, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_27

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9275
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isDefaultSearchSelectorPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_27

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9276
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isDefaultAdservicesPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method public canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 4

    if-eqz p3, :cond_18

    .line 12534
    :try_start_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p3, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_10

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception p0

    .line 12539
    const-string p1, "NotificationService"

    const-string p2, "can\'t talk to pm"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V
    .registers 20

    .line 11857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 11858
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v2, p5

    move/from16 v8, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAllNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p7

    .line 11745
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    const/4 v2, 0x0

    move v13, v1

    move-object v14, v2

    :goto_13
    if-ltz v13, :cond_ad

    .line 11746
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p6, :cond_27

    .line 11748
    invoke-virtual {v0, v1, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v2

    if-nez v2, :cond_2f

    :goto_23
    move-object/from16 v15, p5

    goto/16 :goto_a9

    :cond_27
    const/4 v2, 0x0

    .line 11751
    invoke-static {v1, v11, v2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_23

    :cond_2f
    if-eqz p3, :cond_3b

    if-nez v9, :cond_3b

    .line 11755
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3b

    goto :goto_23

    .line 11758
    :cond_3b
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    move-object/from16 v15, p5

    invoke-interface {v15, v2}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_a9

    :cond_48
    if-eqz v9, :cond_59

    .line 11761
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_a9

    :cond_59
    if-eqz v10, :cond_6a

    .line 11764
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_a9

    .line 11767
    :cond_6a
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-nez v14, :cond_85

    .line 11769
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 11771
    :cond_85
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 11774
    :cond_8d
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11775
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11776
    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v5, p10

    move/from16 v4, p11

    move-wide/from16 v6, p12

    .line 11777
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :goto_a9
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_13

    :cond_ad
    if-eqz v14, :cond_eb

    .line 11781
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move v9, v1

    :goto_b5
    if-ltz v9, :cond_e6

    .line 11783
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 11784
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 11787
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11788
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11789
    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v5, p10

    move/from16 v4, p11

    move-wide/from16 v6, p12

    .line 11790
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_e3
    add-int/lit8 v9, v9, -0x1

    goto :goto_b5

    .line 11794
    :cond_e6
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_eb
    return-void
.end method

.method public cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 22

    .line 11658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 11659
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v5, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIIILjava/lang/String;J)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p9

    .line 11919
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    :goto_d
    if-ltz v10, :cond_78

    .line 11920
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 11921
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    move/from16 v3, p2

    move-object/from16 v13, p3

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 11922
    invoke-interface {v4, v1, v3, v13, v5}, Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;->apply(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    if-eqz v9, :cond_33

    .line 11923
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v6

    invoke-interface {v9, v6}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 11924
    :cond_33
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPromotedOutOfGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v6, 0x2

    move/from16 v7, p12

    if-eq v7, v6, :cond_73

    goto :goto_41

    :cond_3f
    move/from16 v7, p12

    .line 11925
    :goto_41
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v14

    .line 11926
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v17, 0x0

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v20, p6

    move/from16 v16, v3

    .line 11925
    invoke-static/range {v11 .. v20}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 11927
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11928
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xc

    move-object/from16 v5, p6

    move/from16 v2, p7

    move/from16 v4, p8

    move-wide/from16 v6, p13

    .line 11929
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    :cond_73
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    goto :goto_d

    :cond_78
    return-void
.end method

.method public final cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V
    .registers 28

    if-nez p2, :cond_e

    .line 11900
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "NotificationService"

    const-string v1, "No package for group summary"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    .line 11904
    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p11

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    .line 11907
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;ILjava/lang/String;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 32

    move-object/from16 v1, p0

    .line 11617
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object v2, v0

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 11619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    const/4 v1, 0x0

    move-object/from16 v2, v17

    .line 11617
    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V

    return-void
.end method

.method public cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    .line 11600
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;III)V
    .registers 21

    move-object/from16 v9, p5

    move/from16 v10, p6

    const/4 v5, 0x0

    .line 8637
    const-string v6, "cancelNotificationWithTag"

    const/4 v4, 0x1

    move-object v7, p1

    move v2, p3

    move/from16 v1, p4

    move/from16 v3, p7

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v1, -0x1

    .line 8645
    :try_start_13
    invoke-virtual {p0, p2, p1, p3, v3}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move v4, v1

    :goto_19
    if-ne v4, v1, :cond_45

    .line 8652
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to cancel notification for nonexistent pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8659
    :cond_45
    invoke-static/range {p1 .. p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 8660
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8662
    :try_start_4e
    invoke-virtual {p0, p1, v9, v10, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 8664
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_87

    .line 8665
    :cond_63
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to cancel a notification they did not post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_85
    move-exception v0

    goto :goto_89

    .line 8669
    :cond_87
    :goto_87
    monitor-exit v1

    goto :goto_8b

    :goto_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_4e .. :try_end_8a} :catchall_85

    throw v0

    :cond_8b
    :goto_8b
    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v2, p4

    move/from16 v5, p6

    move/from16 v7, p8

    move v1, v4

    move-object v4, v9

    move v9, v3

    move-object v3, p1

    .line 8676
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 18

    .line 11304
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 11305
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/TimeToLiveHelper;->cancelScheduledTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 11308
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 11310
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    .line 11311
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    :cond_1b
    if-eqz p2, :cond_2e

    .line 11316
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->sendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_2e
    if-eqz p6, :cond_98

    .line 11322
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_93

    const/16 v1, 0x12

    if-eq p3, v1, :cond_41

    const/4 v1, 0x1

    .line 11324
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 11326
    :cond_41
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v3

    invoke-virtual {v1, p1, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 11328
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 11329
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11337
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    if-eqz p2, :cond_90

    .line 11339
    invoke-static {p2}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 11340
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 11342
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 11343
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 11344
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 11364
    :cond_90
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V

    .line 11368
    :cond_93
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearEffectsLocked(Ljava/lang/String;)V

    :cond_98
    const/4 p2, 0x2

    if-eq p3, p2, :cond_bf

    const/4 p2, 0x3

    if-eq p3, p2, :cond_bf

    const/16 p2, 0x18

    if-eq p3, p2, :cond_bf

    packed-switch p3, :pswitch_data_168

    goto :goto_c4

    .line 11383
    :pswitch_a6
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 11384
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    .line 11385
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-wide/from16 v4, p8

    .line 11384
    invoke-virtual {p2, v1, v3, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V

    goto :goto_c4

    .line 11379
    :cond_bf
    :pswitch_bf
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 11389
    :goto_c4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    .line 11390
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-eqz v1, :cond_e1

    .line 11391
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 11392
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11394
    :cond_e1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 11395
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_10c

    .line 11402
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 11403
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 11402
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 11404
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10c
    const/16 p2, 0x14

    if-eq p3, p2, :cond_119

    .line 11409
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->getSbnForArchive(Lcom/android/server/notification/NotificationRecord;I)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;I)V

    .line 11412
    :cond_119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 11413
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 v1, 0x5

    .line 11414
    invoke-virtual {p2, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 11415
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    if-eq p4, v2, :cond_141

    if-eq p5, v2, :cond_141

    const/16 v1, 0x31e

    .line 11417
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x573

    .line 11418
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 11420
    :cond_141
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 11422
    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result p2

    invoke-virtual {p1, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v4

    move v3, p2

    move v1, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    .line 11421
    invoke-static/range {v0 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    if-eqz p6, :cond_167

    .line 11425
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 11426
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result p2

    .line 11425
    invoke-interface {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V

    :cond_167
    return-void

    :pswitch_data_168
    .packed-switch 0x8
        :pswitch_a6
        :pswitch_a6
        :pswitch_bf
        :pswitch_bf
    .end packed-switch
.end method

.method public final cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 18

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    .line 11295
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method public final cancelNotificationsWhenEnterLockDownMode(I)V
    .registers 9

    .line 12142
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    .line 12145
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 12146
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v4, p1, :cond_1f

    goto :goto_2a

    .line 12149
    :cond_1f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 12150
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    const/16 v6, 0x17

    .line 12149
    invoke-virtual {v4, v3, v6, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 12153
    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_2d

    throw p0
.end method

.method public cancelToastLocked(I)V
    .registers 4

    .line 10814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10815
    invoke-virtual {v0}, Lcom/android/server/notification/toast/ToastRecord;->hide()V

    if-nez p1, :cond_10

    const/4 v1, 0x0

    .line 10818
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 10821
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    .line 10824
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    .line 10826
    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10827
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 10831
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V

    :cond_2d
    return-void
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 4

    .line 12318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    return-void
.end method

.method public final checkCallerIsSameApp(Ljava/lang/String;II)V
    .registers 6

    if-nez p2, :cond_c

    .line 12322
    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1a

    .line 12325
    :cond_c
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_1b

    :goto_1a
    return-void

    .line 12326
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not owned by uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystem()V
    .registers 3

    .line 12224
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 12227
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 12254
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 12257
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrShell()V
    .registers 3

    .line 12216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_e

    if-nez v0, :cond_b

    goto :goto_e

    .line 12220
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    :cond_e
    :goto_e
    return-void
.end method

.method public final checkCallerIsSystemOrSystemUi()V
    .registers 3

    .line 12231
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 12234
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed call for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell()V
    .registers 2

    const/4 v0, 0x0

    .line 12238
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method public final checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V
    .registers 4

    .line 12242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    if-nez v0, :cond_b

    goto :goto_1b

    .line 12246
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1b

    .line 12249
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 5

    .line 4131
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z
    .registers 16

    .line 9502
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 9503
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9505
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    .line 9506
    :goto_20
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v2, :cond_111

    if-nez v5, :cond_111

    .line 9511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9512
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 9513
    :try_start_31
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_67

    .line 9514
    invoke-virtual {p0, v2, p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(II)Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_67

    .line 9519
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instant app "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot create notifications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_64
    move-exception p0

    goto/16 :goto_10f

    .line 9527
    :cond_67
    :goto_67
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findPreviousNotificationLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_d6

    .line 9529
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getProgressState()I

    move-result v2

    .line 9530
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getProgressState()I

    move-result v6

    if-ne v2, v6, :cond_d6

    if-nez p6, :cond_d6

    .line 9532
    iget-object p6, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p6, v1}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result p6

    .line 9533
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_d6

    .line 9534
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 9535
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 9536
    iget-wide p3, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long p3, p1, p3

    const-wide/16 v2, 0x1388

    cmp-long p3, p3, v2

    if-lez p3, :cond_d4

    .line 9537
    const-string p3, "NotificationService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Package enqueue rate is "

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, ". Shedding "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9538
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p5

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ". package="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 9537
    invoke-static {p3, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9539
    iput-wide p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 9541
    :cond_d4
    monitor-exit v5

    return v4

    .line 9562
    :cond_d6
    monitor-exit v5
    :try_end_d7
    .catchall {:try_start_31 .. :try_end_d7} :catchall_64

    .line 9566
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p6

    if-nez p6, :cond_111

    invoke-static {p5}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p6

    if-nez p6, :cond_111

    .line 9567
    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I

    move-result p3

    const/16 p4, 0x32

    if-lt p3, p4, :cond_111

    .line 9569
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 9570
    const-string p0, "NotificationService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package has already posted or enqueued "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " notifications.  Not showing more.  package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9562
    :goto_10f
    :try_start_10f
    monitor-exit v5
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_64

    throw p0

    .line 9578
    :cond_111
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    const/high16 p4, 0x4000000

    if-eqz p3, :cond_157

    .line 9579
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_157

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 9581
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p6

    invoke-virtual {p6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p6

    .line 9580
    invoke-virtual {p3, p6}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result p3

    if-nez p3, :cond_13c

    goto :goto_157

    .line 9583
    :cond_13c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to bubbles must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9587
    :cond_157
    :goto_157
    iget-object p3, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p3, :cond_19d

    .line 9588
    array-length p6, p3

    move v2, v4

    :goto_15d
    if-ge v2, p6, :cond_19d

    aget-object v5, p3, v2

    .line 9589
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_16d

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_17f

    :cond_16d
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 9590
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_182

    :cond_17f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    .line 9592
    :cond_182
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9599
    :cond_19d
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1f0

    .line 9600
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p6

    move v2, v4

    :cond_1ac
    :goto_1ac
    if-ge v2, p6, :cond_1f0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Landroid/app/Notification$Action;

    .line 9601
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-nez v6, :cond_1c2

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_1ac

    :cond_1c2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 9602
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_1d5

    goto :goto_1ac

    .line 9604
    :cond_1d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. PendingIntents attached to contextual actions with remote inputs must be mutable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9611
    :cond_1f0
    const-class p3, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, p3}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_230

    .line 9612
    iget-object p3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_1fe

    move p3, v3

    goto :goto_1ff

    :cond_1fe
    move p3, v4

    .line 9613
    :goto_1ff
    iget p4, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_207

    move p4, v3

    goto :goto_208

    :cond_207
    move p4, v4

    .line 9614
    :goto_208
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p6

    if-nez p6, :cond_230

    if-nez p3, :cond_230

    if-nez p4, :cond_230

    if-eqz p7, :cond_215

    goto :goto_230

    .line 9616
    :cond_215
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Not posted. CallStyle notifications must be for a foreground service or user initated job or use a fullScreenIntent."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9623
    :cond_230
    :goto_230
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, v1, p4}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_27c

    .line 9624
    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p2

    const/4 p3, 0x6

    .line 9625
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p3, 0x33f

    .line 9626
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 9624
    invoke-static {p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 9627
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, p3, p5}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 9630
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_273

    .line 9631
    const-string p2, "NotificationService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignored enqueue for snoozed notification "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9633
    :cond_273
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 9634
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return v4

    .line 9639
    :cond_27c
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(I)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 9640
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p3

    .line 9641
    :try_start_284
    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p4

    or-int/2addr p1, p4

    .line 9642
    monitor-exit p3
    :try_end_28a
    .catchall {:try_start_284 .. :try_end_28a} :catchall_311

    if-eqz p1, :cond_2c5

    .line 9643
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p1

    if-nez p1, :cond_2c5

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    if-nez p1, :cond_2c5

    .line 9644
    sget-boolean p1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p1, :cond_2bf

    .line 9645
    const-string p1, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suppressing notification from package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by user request."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9648
    :cond_2bf
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    return v4

    .line 9652
    :cond_2c5
    invoke-virtual {v0}, Landroid/app/Notification;->hasAppProvidedWhen()Z

    move-result p1

    if-eqz p1, :cond_310

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_310

    .line 9653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    sub-long/2addr p1, p3

    sget-wide p3, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_MAX_AGE_AT_POST:J

    cmp-long p1, p1, p3

    if-lez p1, :cond_310

    .line 9654
    const-string p1, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignored enqueue for old "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " notification "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9655
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p5}, Lcom/android/server/notification/NotificationUsageStats;->registerTooOldBlocked(Lcom/android/server/notification/NotificationRecord;)V

    return v4

    :cond_310
    return v3

    :catchall_311
    move-exception p0

    .line 9642
    :try_start_312
    monitor-exit p3
    :try_end_313
    .catchall {:try_start_312 .. :try_end_313} :catchall_311

    throw p0
.end method

.method public checkNotificationListenerAccess()V
    .registers 3

    .line 7668
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_11

    .line 7670
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_NOTIFICATION_LISTENERS"

    const-string v1, "Caller must hold android.permission.MANAGE_NOTIFICATION_LISTENERS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final checkPostPromotedNotificationPermission(Ljava/lang/String;I)Z
    .registers 4

    .line 9334
    new-instance v0, Landroid/content/AttributionSource$Builder;

    invoke-direct {v0, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 9335
    invoke-virtual {v0, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p1

    .line 9337
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    const-string p2, "android.permission.POST_PROMOTED_NOTIFICATIONS"

    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 7

    .line 9360
    iget-object v0, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 9361
    iput-object v1, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 9363
    :cond_b
    iget-object v0, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9364
    iput-object v1, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 9366
    :cond_15
    iget-object v0, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9367
    iput-object v1, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 9369
    :cond_1f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_4b

    .line 9370
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9371
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 9373
    :cond_2f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 9374
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 9376
    :cond_3d
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 9377
    iget-object p0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_4b
    return-void
.end method

.method public final checkRestrictedCategories(Landroid/app/Notification;)V
    .registers 5

    .line 12271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c

    if-nez v0, :cond_17

    goto :goto_4a

    .line 12275
    :catch_c
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "NotificationService"

    const-string v1, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12278
    :cond_17
    const-string v0, "car_emergency"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "car_warning"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 12279
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "car_information"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 12280
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 12281
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 12283
    const-string v0, "Notification category %s restricted"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12281
    const-string v0, "android.permission.SEND_CATEGORY_CAR_NOTIFICATIONS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 6

    .line 9315
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-ge p2, v0, :cond_8

    return v1

    .line 9319
    :cond_8
    const-string p2, "android.permission.USE_FULL_SCREEN_INTENT"

    if-eqz p3, :cond_14

    .line 9320
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p0

    goto :goto_1a

    .line 9323
    :cond_14
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    :goto_1a
    if-nez p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public clearAutogroupSummaryLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 7874
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_1f

    .line 7876
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 7877
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p3

    goto :goto_27

    .line 7879
    :cond_1f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/notification/NotificationRecord;

    :goto_27
    if-eqz p3, :cond_45

    .line 7882
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    .line 7883
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v9, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_45
    return-void
.end method

.method public clearNotifications()V
    .registers 3

    .line 2706
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2707
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2708
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2709
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2710
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 2711
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public convertSummaryToNotificationLocked(Ljava/lang/String;)Z
    .registers 6

    .line 8052
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 8057
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 8058
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 8059
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_41

    .line 8060
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 8061
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8064
    :cond_41
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 8065
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, v0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 8067
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationSummaryConverted(Ljava/lang/String;)V

    .line 8068
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_FORCE_GROUP_SUMMARY:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_5b
    return v1
.end method

.method public correctCategory(III)I
    .registers 5

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_b

    and-int v0, p3, p2

    if-nez v0, :cond_b

    not-int p0, p2

    and-int/2addr p0, p1

    return p0

    :cond_b
    if-nez p0, :cond_14

    and-int p0, p3, p2

    if-eqz p0, :cond_14

    or-int p0, p1, p2

    return p0

    :cond_14
    return p1
.end method

.method public createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/NotificationRecord;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v1, p6

    .line 7968
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move/from16 v3, p1

    invoke-virtual {v2, v6, v3}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v13

    .line 7969
    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v14

    .line 7970
    :try_start_13
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/notification/NotificationRecord;

    const/16 v16, 0x0

    if-nez v15, :cond_27

    .line 7974
    monitor-exit v14

    return-object v16

    :catchall_24
    move-exception v0

    goto/16 :goto_13b

    .line 7976
    :cond_27
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 7977
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 7978
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v18

    .line 7979
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_4a

    .line 7981
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    :cond_4a
    move-object v10, v2

    .line 7983
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7988
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 7989
    iget-object v3, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    if-nez v2, :cond_115

    .line 7998
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.appInfo"

    const-class v5, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 8000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 8001
    const-string v5, "android.appInfo"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8004
    new-instance v5, Landroid/app/Notification$Builder;

    .line 8005
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 8006
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 8007
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v7, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 8008
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 8009
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v7, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 8010
    invoke-virtual {v3, v7, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 8011
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v1, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 8012
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 8013
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 8014
    iget-object v1, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 8015
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_cb

    .line 8017
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 8021
    :cond_cb
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    .line 8022
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8023
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 8025
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    .line 8026
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    .line 8027
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    move-object v8, v11

    .line 8028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v4, v10

    move-object/from16 v10, p4

    move-object/from16 v5, p4

    move-object v0, v4

    move/from16 v4, p5

    invoke-direct/range {v1 .. v12}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 8029
    new-instance v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8030
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 8031
    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 8033
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v3

    .line 8032
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 8036
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    goto :goto_117

    :cond_115
    move-object/from16 v5, v16

    :goto_117
    if-eqz v5, :cond_139

    .line 8042
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    .line 8041
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 8044
    monitor-exit v14

    return-object v5

    .line 8046
    :cond_139
    monitor-exit v14

    return-object v16

    :goto_13b
    monitor-exit v14
    :try_end_13c
    .catchall {:try_start_13 .. :try_end_13c} :catchall_24

    throw v0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 14

    .line 3732
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3736
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 3737
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 3737
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZIZ)V

    if-nez v5, :cond_26

    .line 3740
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    :cond_26
    if-nez p5, :cond_36

    .line 3743
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x1

    .line 3743
    invoke-virtual {p0, v2, p1, v4, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    :cond_36
    return-void
.end method

.method public createReviewPermissionsNotification()Landroid/app/Notification;
    .registers 11

    .line 15360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15361
    new-instance v1, Landroid/content/Intent;

    const-string v2, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15363
    new-instance v3, Landroid/content/Intent;

    const-string v4, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15366
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 15367
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040983

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 15370
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0xc000000

    .line 15369
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 15372
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 15373
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 15374
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x1040982

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 15377
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 15376
    invoke-static {v9, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v4, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 15379
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 15381
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SYSTEM_CHANGES_ALERTS"

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x10809c8

    .line 15382
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 15383
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040985

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 15384
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040984

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 15385
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 15387
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v4, 0x20

    const/4 v5, 0x1

    .line 15388
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 15389
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 15390
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 15391
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 15392
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 15394
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 2

    .line 4126
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimits([Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public final destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 8

    .line 11583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 11585
    :try_start_4
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_21

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": destroying owner"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_2c

    .line 11586
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 p3, 0x0

    const/4 v2, -0x1

    invoke-interface {p0, p1, p3, v2, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_1f

    .line 11588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11589
    throw p0
.end method

.method public doChannelWarningToast(ILjava/lang/CharSequence;)V
    .registers 3

    .line 9455
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 13

    .line 8214
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8215
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 8216
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_16
    const/16 v0, 0x3a

    .line 8218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 8220
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    if-nez v0, :cond_57

    .line 8223
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 8224
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_53

    .line 8226
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_3a
    if-ge v4, v3, :cond_4e

    .line 8228
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/toast/ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :catchall_4c
    move-exception p0

    goto :goto_55

    .line 8230
    :cond_4e
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8232
    :cond_53
    monitor-exit v2

    goto :goto_57

    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_2c .. :try_end_56} :catchall_4c

    throw p0

    .line 8235
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_102

    .line 8239
    :try_start_5c
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_67

    .line 8240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_67

    :catchall_64
    move-exception p0

    goto/16 :goto_262

    .line 8242
    :cond_67
    :goto_67
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_a2

    .line 8243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMaxPackageEnqueueRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  hideSilentStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8245
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8244
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8246
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8248
    :cond_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8249
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    if-nez v0, :cond_102

    .line 8252
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_fd

    .line 8254
    const-string v4, "  Enqueued Notification List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v1

    :goto_d1
    if-ge v4, v3, :cond_f8

    .line 8256
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8257
    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v6, :cond_ea

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_ea

    goto :goto_f5

    .line 8258
    :cond_ea
    const-string v6, "    "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    .line 8260
    :cond_f8
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8263
    :cond_fd
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    :cond_102
    if-nez v0, :cond_1a6

    .line 8268
    const-string v3, "\n  Ranking Config:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8269
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8271
    const-string v3, "\n Notification Preferences:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8272
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 8274
    const-string p3, "\n  Notification listeners:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8275
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8276
    const-string p3, "    mListenerHints: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 8278
    const-string p3, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8279
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    move v3, v1

    :goto_13c
    if-ge v3, p3, :cond_18b

    .line 8281
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lez v3, :cond_14b

    const/16 v5, 0x3b

    .line 8282
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 8283
    :cond_14b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8285
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 8286
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v1

    :goto_171
    if-ge v6, v5, :cond_188

    if-lez v6, :cond_17a

    const/16 v7, 0x2c

    .line 8289
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 8290
    :cond_17a
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    if-eqz v7, :cond_185

    .line 8292
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_185
    add-int/lit8 v6, v6, 0x1

    goto :goto_171

    :cond_188
    add-int/lit8 v3, v3, 0x1

    goto :goto_13c

    :cond_18b
    const/16 p3, 0x29

    .line 8296
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(C)V

    .line 8298
    const-string p3, "\n  NotificationListenerStats:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8299
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    const-string v1, "    "

    invoke-virtual {p3, p1, v1}, Lcom/android/server/notification/NotificationListenerStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8301
    const-string p3, "\n  Notification assistant services:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8302
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8305
    :cond_1a6
    iget-boolean p3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz p3, :cond_1ac

    if-eqz v0, :cond_1cc

    .line 8306
    :cond_1ac
    const-string p3, "\n  Zen Mode:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8307
    const-string p3, "    mInterruptionFilter="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 8308
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "    "

    invoke-virtual {p3, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8310
    const-string p3, "\n  Zen Log:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8311
    const-string p3, "    "

    invoke-static {p1, p3}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8314
    :cond_1cc
    const-string p3, "\n  Condition providers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8315
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8317
    const-string p3, "\n  Group summaries:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8318
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1e5
    :goto_1e5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 8320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8321
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_1e5

    .line 8322
    const-string v1, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8323
    const-string v1, "      "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_1e5

    :cond_23a
    if-nez v0, :cond_254

    .line 8328
    const-string p3, "\n  Usage Stats:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8329
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v0, "    "

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8331
    const-string p2, "\n  TimeToLive alarms:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8332
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    const-string p3, "    "

    invoke-virtual {p2, p1, p3}, Lcom/android/server/notification/TimeToLiveHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8336
    :cond_254
    const-string p2, "\n  GroupHelper:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8337
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    const-string p2, "    "

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8339
    monitor-exit v2

    return-void

    :goto_262
    monitor-exit v2
    :try_end_263
    .catchall {:try_start_5c .. :try_end_263} :catchall_64

    throw p0
.end method

.method public final dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 7

    .line 8099
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8101
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8102
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8103
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8104
    const-string/jumbo p3, "stats"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8105
    const-string p3, "channels"

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    .line 8107
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 8109
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10

    .line 8197
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8199
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 8201
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3a

    .line 8203
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 8204
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2c

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_37

    :catchall_2a
    move-exception p0

    goto :goto_41

    .line 8205
    :cond_2c
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 8207
    :cond_3a
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8209
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_2a

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 14

    .line 8123
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8124
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8125
    :try_start_8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_10
    if-ge v8, v6, :cond_3b

    .line 8127
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 8128
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_38

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto/16 :goto_163

    .line 8129
    :cond_2d
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x1

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 8132
    :cond_3b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_42
    if-ge v8, v6, :cond_69

    .line 8134
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 8135
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_66

    .line 8136
    :cond_5b
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x0

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 8139
    :cond_69
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v6

    .line 8140
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_74
    if-ge v9, v8, :cond_99

    .line 8142
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 8143
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_8b

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_8b

    goto :goto_96

    .line 8144
    :cond_8b
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v5, 0x2

    const-wide v2, 0x20b00000001L

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    :goto_96
    add-int/lit8 v9, v9, 0x1

    goto :goto_74

    :cond_99
    const-wide v2, 0x10b00000002L

    .line 8148
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8149
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 8150
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-wide v5, 0x20b00000004L

    .line 8151
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_ad

    .line 8153
    :cond_c2
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000003L

    .line 8155
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8156
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8157
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8159
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v0, v7

    .line 8161
    :goto_e1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_126

    const-wide v2, 0x20b00000005L

    .line 8162
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8165
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 8166
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-wide v5, 0x10500000001L

    .line 8165
    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8167
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 8168
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move v5, v7

    .line 8169
    :goto_109
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_120

    .line 8170
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    const-wide v8, 0x20b00000003L

    .line 8171
    invoke-virtual {v6, v1, v8, v9}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_109

    .line 8175
    :cond_120
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    :cond_126
    const-wide v2, 0x10b00000006L

    .line 8178
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8180
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8181
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000007L

    .line 8183
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8184
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8185
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000008L

    .line 8187
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8188
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8189
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 8190
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8191
    monitor-exit p1
    :try_end_15f
    .catchall {:try_start_8 .. :try_end_15f} :catchall_29

    .line 8193
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 8191
    :goto_163
    :try_start_163
    monitor-exit p1
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_29

    throw p0
.end method

.method public final dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6

    .line 8113
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-wide v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p0

    if-nez p0, :cond_12

    .line 8115
    const-string/jumbo p0, "no remote view stats reported."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 8118
    :cond_12
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/notification/PulledStats;->dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V
    .registers 23

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 8689
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V
    .registers 25

    move/from16 v3, p3

    .line 8698
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(I)I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_11

    .line 8700
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;->NOTIFICATION_POSTED_CACHED:Lcom/android/server/notification/NotificationManagerService$NotificationPostEvent;

    invoke-interface {v0, v1, v3, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 8703
    :cond_11
    invoke-virtual {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->acquireWakeLockForPost(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 8706
    :try_start_28
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;ZZ)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_32

    if-nez p0, :cond_31

    .line 8711
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    :cond_31
    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->cancel()V

    .line 8713
    throw p0
.end method

.method public final enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;ZZ)Z
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 8752
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v3, " notification="

    const-string v4, " id="

    const-string v12, "NotificationService"

    if-eqz v2, :cond_34

    .line 8753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueNotificationInternal: pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    if-eqz v1, :cond_369

    if-eqz v10, :cond_369

    const/4 v5, 0x0

    .line 8762
    const-string v6, "enqueueNotification"

    const/4 v4, 0x1

    move/from16 v2, p3

    move/from16 v3, p8

    move-object v7, v1

    move/from16 v1, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v13, v2

    move v14, v3

    move-object v1, v7

    .line 8764
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    const/4 v2, -0x1

    .line 8771
    :try_start_4f
    invoke-virtual {v0, v9, v1, v13, v5}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_53} :catch_55

    move v7, v3

    goto :goto_56

    :catch_55
    move v7, v2

    :goto_56
    if-eq v7, v2, :cond_339

    .line 8781
    invoke-virtual {v10}, Landroid/app/Notification;->getAllowlistToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 8782
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    if-ne v2, v3, :cond_63

    goto :goto_7a

    .line 8783
    :cond_63
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected allowlist token received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8788
    :cond_7a
    :goto_7a
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v10, v2}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 8790
    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 8797
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move-object/from16 v3, p5

    move v6, v5

    move v4, v8

    move-object v2, v10

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v1

    move v3, v4

    move-object v4, v5

    move v5, v6

    .line 8801
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    const/4 v15, 0x1

    if-eqz v2, :cond_a4

    .line 8803
    invoke-interface {v2, v3, v5, v4}, Lcom/android/server/job/JobSchedulerInternal;->isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v15

    move v8, v2

    goto :goto_a5

    :cond_a4
    move v8, v15

    :goto_a5
    const/4 v10, 0x0

    move-object v2, v4

    move v6, v7

    move-object v7, v1

    move v4, v3

    move-object/from16 v3, p5

    move-object/from16 v1, p7

    .line 8808
    :try_start_ae
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/ActivityManagerInternal$ServiceNotificationPolicy;Z)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_321

    move-object v1, v2

    move v2, v6

    .line 8818
    sget-object v6, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne v7, v6, :cond_c7

    .line 8822
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_c7

    const/4 v1, 0x0

    move-object/from16 v2, p7

    move v3, v4

    move-object/from16 v4, p1

    .line 8823
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return v10

    .line 8828
    :cond_c7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 8830
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    const/4 v9, 0x0

    move v4, v10

    move-object v8, v11

    .line 8832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v15, p0

    move/from16 v6, p4

    move-object/from16 v7, p7

    move/from16 v17, v4

    move v13, v5

    move v5, v2

    move-object v4, v3

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object v6, v0

    move-object v9, v2

    move v2, v5

    move-object v10, v7

    move-object v11, v8

    move v8, v3

    move-object v7, v4

    .line 8835
    invoke-virtual {v10}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 8836
    iget-boolean v1, v15, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v1, :cond_10a

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v10}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 8837
    new-instance v0, Landroid/app/Notification$TvExtender;

    invoke-direct {v0, v10}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v0}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    :cond_10a
    move-object v4, v0

    .line 8839
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    move v3, v2

    move-object v0, v15

    move/from16 v2, p3

    .line 8840
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->getNotificationChannelRestoreDeleted(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-nez v5, :cond_1a1

    .line 8843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Channel found for pkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", channelId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tag="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", opPkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingUid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", incomingUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notificationUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notification="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8854
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8855
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 8859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Developer warning for package \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nFailed to post notification on channel \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\nSee log for more details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(ILjava/lang/CharSequence;)V

    :cond_1a0
    return v17

    .line 8867
    :cond_1a1
    invoke-virtual {v15, v10, v5, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->fixNotificationWithChannel(Landroid/app/Notification;Landroid/app/NotificationChannel;ILjava/lang/String;)V

    .line 8869
    new-instance v9, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v15}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0, v6, v5}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 8870
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v1, v13}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    move/from16 v0, p9

    .line 8871
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    move/from16 v6, v17

    .line 8872
    invoke-virtual {v9, v6}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    .line 8873
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setPkgAllowedAsConvo(Z)V

    .line 8874
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v1, v13}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v0

    .line 8875
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 8876
    invoke-virtual {v10}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-eqz v0, :cond_210

    .line 8877
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    const/4 v6, 0x4

    and-int/2addr v0, v6

    if-eqz v0, :cond_1e6

    .line 8878
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_1f4

    .line 8879
    :cond_1e6
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_213

    .line 8880
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-nez v0, :cond_1f4

    goto :goto_213

    .line 8893
    :cond_1f4
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_210

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_210

    const-string/jumbo v0, "miscellaneous"

    .line 8894
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    const/4 v14, 0x1

    .line 8895
    invoke-virtual {v5, v14}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 8896
    invoke-virtual {v9, v5}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_210
    move-object v14, v1

    move v2, v3

    goto :goto_23b

    :cond_213
    :goto_213
    const/4 v0, 0x2

    .line 8883
    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 8884
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 8885
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isUserVisibleTaskShown()Z

    move-result v0

    if-nez v0, :cond_227

    .line 8886
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->unlockFields(I)V

    const/4 v14, 0x1

    .line 8887
    invoke-virtual {v5, v14}, Landroid/app/NotificationChannel;->setUserVisibleTaskShown(Z)V

    .line 8889
    :cond_227
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v4, 0x0

    .line 8891
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v6

    move-object/from16 v26, v5

    move v5, v2

    move v2, v3

    move-object/from16 v3, v26

    .line 8889
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V

    move-object v14, v1

    .line 8892
    invoke-virtual {v9, v3}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 8900
    :goto_23b
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-eqz v0, :cond_248

    .line 8901
    invoke-virtual {v10}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14, v11}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    goto :goto_249

    :cond_248
    const/4 v0, 0x0

    .line 8903
    :goto_249
    invoke-virtual {v10}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26f

    if-nez v0, :cond_26f

    .line 8904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " added an invalid shortcut"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8906
    :cond_26f
    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 8907
    iget-object v1, v15, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/server/notification/NotificationRecord;->setHasSentValidMsg(Z)V

    .line 8908
    iget-object v1, v15, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8909
    invoke-virtual {v1, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v1

    .line 8908
    invoke-virtual {v9, v1}, Lcom/android/server/notification/NotificationRecord;->userDemotedAppFromConvoSpace(Z)V

    .line 8912
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_298

    const/4 v6, 0x1

    :goto_28f
    move-object v4, v7

    move v3, v8

    move-object v5, v9

    move v1, v13

    move/from16 v7, p11

    move-object v8, v0

    move-object v0, v15

    goto :goto_29a

    :cond_298
    const/4 v6, 0x0

    goto :goto_28f

    .line 8911
    :goto_29a
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;ZZ)Z

    move-result v2

    move-object/from16 v26, v5

    move v5, v1

    move-object/from16 v1, v26

    if-nez v2, :cond_2a8

    const/16 v17, 0x0

    return v17

    .line 8916
    :cond_2a8
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByAppAndAccepted(Ljava/lang/String;)V

    if-eqz v8, :cond_2b4

    .line 8923
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {v2, v8, v11}, Lcom/android/server/notification/ShortcutHelper;->cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V

    .line 8927
    :cond_2b4
    iget-object v2, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v2, :cond_2f9

    .line 8928
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2f9

    .line 8930
    const-class v3, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleInternal;

    .line 8931
    invoke-interface {v3}, Lcom/android/server/DeviceIdleInternal;->getNotificationAllowlistDuration()J

    move-result-wide v21

    const/4 v3, 0x0

    :goto_2cb
    if-ge v3, v2, :cond_2f9

    .line 8933
    iget-object v4, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    if-eqz v4, :cond_2f6

    .line 8935
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v19

    sget-object v20, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    const/16 v24, 0x136

    const-string v25, "NotificationManagerService"

    const/16 v23, 0x0

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v25}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    move-object/from16 v6, v20

    .line 8940
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v7, v4, v6, v8}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    :cond_2f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2cb

    .line 8949
    :cond_2f9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_303

    const/4 v10, 0x1

    goto :goto_304

    :cond_303
    const/4 v10, 0x0

    .line 8951
    :goto_304
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move-object/from16 p7, p10

    move/from16 p6, p12

    move-object/from16 p2, v0

    move-object/from16 p4, v1

    move-object/from16 p1, v3

    move/from16 p3, v5

    move/from16 p5, v10

    invoke-direct/range {p1 .. p7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v16, 0x1

    return v16

    :catch_321
    move-exception v0

    move-object v10, v1

    .line 8811
    invoke-virtual {v10}, Landroid/app/Notification;->isForegroundService()Z

    move-result v1

    if-nez v1, :cond_331

    .line 8814
    const-string v1, "Cannot fix notification"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v17, 0x0

    return v17

    .line 8812
    :cond_331
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid FGS notification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_339
    move v2, v13

    .line 8777
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " trying to post for invalid pkg "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8758
    :cond_369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null not allowed: pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final exitIdle()V
    .registers 2

    .line 3649
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    if-eqz p0, :cond_a

    .line 3650
    const-string/jumbo v0, "notification interaction"

    invoke-virtual {p0, v0}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final findAppNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;
    .registers 9

    .line 11977
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11978
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_2d

    .line 11980
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11981
    invoke-static {v3, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 11982
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 11983
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2d
    return-object p0
.end method

.method public findCurrentAndSnoozedGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6

    .line 11948
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/SnoozeHelper;->getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11949
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10

    .line 11992
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11993
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_37

    .line 11995
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 11996
    invoke-static {v3, p4, v1}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 11997
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 11998
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_37
    return-object p0
.end method

.method public findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6

    .line 11956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11957
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11958
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 11959
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 11958
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3

    .line 11965
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-nez v0, :cond_d

    .line 11967
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v0
.end method

.method public final findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3

    .line 12026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 12029
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 6

    .line 12038
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 12041
    :cond_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 3

    .line 11103
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public final findPreviousNotificationLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 5

    .line 12012
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->reversed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 12013
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    .line 12017
    :cond_21
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0
.end method

.method public finishWindowTokenLocked(Landroid/os/IBinder;I)V
    .registers 4

    .line 10836
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10841
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/ActivityManagerInternal$ServiceNotificationPolicy;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9023
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p5, v2, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, p5

    :goto_9
    const/high16 v4, 0x10000000

    invoke-virtual {v0, p2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 9026
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 9029
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.summarization"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9031
    invoke-virtual {p1}, Landroid/app/Notification;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne p7, v3, :cond_29

    .line 9032
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, -0x41

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9034
    :cond_29
    invoke-virtual {p1}, Landroid/app/Notification;->isUserInitiatedJob()Z

    move-result p7

    if-eqz p7, :cond_39

    if-eqz p8, :cond_39

    .line 9035
    iget p7, p1, Landroid/app/Notification;->flags:I

    const p8, -0x8001

    and-int/2addr p7, p8

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9039
    :cond_39
    invoke-virtual {p1}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result p7

    if-eqz p7, :cond_45

    .line 9040
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, -0x11

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9044
    :cond_45
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p7, p7, 0x2

    if-lez p7, :cond_52

    .line 9046
    iget p7, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p7, p7, 0x2000

    iput p7, p1, Landroid/app/Notification;->flags:I

    goto :goto_58

    .line 9048
    :cond_52
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p7, p7, -0x2001

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9051
    :goto_58
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string p8, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {p7, p8, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p7

    if-nez p7, :cond_6b

    .line 9055
    iget p7, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p7, p7, 0x800

    iput p7, p1, Landroid/app/Notification;->flags:I

    goto :goto_71

    .line 9057
    :cond_6b
    iget p7, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p7, p7, -0x801

    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9060
    :goto_71
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.allowDuringSetup"

    invoke-virtual {p7, p8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p7

    const-string/jumbo v3, "warning: pkg "

    const-string v4, "NotificationService"

    if-eqz p7, :cond_af

    .line 9061
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string v5, "android.permission.NOTIFICATION_DURING_SETUP"

    invoke-virtual {p7, v5, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p7

    if-eqz p7, :cond_af

    .line 9064
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p7, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9065
    sget-boolean p7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p7, :cond_af

    .line 9066
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " attempting to show during setup without holding perm "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v4, p7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9073
    :cond_af
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.app.preferSmallIcon"

    invoke-virtual {p7, p8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p7

    if-eqz p7, :cond_e8

    .line 9074
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p7

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p7, v5, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p7

    if-eqz p7, :cond_e8

    .line 9077
    iget-object p7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p7, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9078
    sget-boolean p7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p7, :cond_e8

    .line 9079
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " attempting to show small icon without holding perm "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v4, p7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9086
    :cond_e8
    iget p7, p1, Landroid/app/Notification;->flags:I

    const p8, -0x14001

    and-int/2addr p7, p8

    .line 9090
    iput p7, p1, Landroid/app/Notification;->flags:I

    .line 9093
    iget-object p7, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p7, :cond_10b

    .line 9094
    new-instance p7, Landroid/content/AttributionSource$Builder;

    invoke-direct {p7, p6}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 9095
    invoke-virtual {p7, p2}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p7

    const/4 p8, 0x1

    .line 9096
    invoke-virtual {p0, p7, v0, p8}, Lcom/android/server/notification/NotificationManagerService;->checkUseFullScreenIntentPermission(Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p7

    if-nez p7, :cond_10b

    .line 9099
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/notification/NotificationManagerService;->makeStickyHun(Landroid/app/Notification;Ljava/lang/String;I)V

    .line 9104
    :cond_10b
    iget-object p5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 p7, 0x0

    if-eqz p5, :cond_145

    .line 9106
    array-length p5, p5

    move p8, v1

    :goto_112
    if-ge p8, p5, :cond_145

    .line 9108
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p8

    if-nez v0, :cond_142

    .line 9114
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_120
    if-ge v0, p5, :cond_12e

    .line 9116
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v5, v5, v0

    if-eqz v5, :cond_12b

    .line 9117
    invoke-virtual {p8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12b
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    .line 9120
    :cond_12e
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eqz p5, :cond_13f

    .line 9121
    new-array p5, v1, [Landroid/app/Notification$Action;

    invoke-virtual {p8, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/app/Notification$Action;

    iput-object p5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_145

    .line 9123
    :cond_13f
    iput-object p7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_145

    :cond_142
    add-int/lit8 p8, p8, 0x1

    goto :goto_112

    .line 9129
    :cond_145
    :goto_145
    iget p5, p1, Landroid/app/Notification;->flags:I

    const p8, -0x40001

    and-int/2addr p5, p8

    iput p5, p1, Landroid/app/Notification;->flags:I

    .line 9132
    const-class p5, Landroid/app/Notification$CallStyle;

    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_172

    .line 9134
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p5

    .line 9135
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p5

    check-cast p5, Landroid/app/Notification$CallStyle;

    .line 9136
    invoke-virtual {p5}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object p5

    .line 9137
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p8

    new-array p8, p8, [Landroid/app/Notification$Action;

    iput-object p8, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 9138
    invoke-interface {p5, p8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9142
    :cond_172
    const-class p5, Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-nez p5, :cond_182

    const-class p5, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 9143
    invoke-virtual {p1, p5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_1cf

    .line 9144
    :cond_182
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string p8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p5, p8, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    if-eqz p5, :cond_1c0

    .line 9147
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.mediaRemoteDevice"

    invoke-virtual {p5, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9148
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.mediaRemoteIcon"

    invoke-virtual {p5, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9149
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.mediaRemoteIntent"

    invoke-virtual {p5, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9150
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_1c0

    .line 9151
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Package "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, ": Use of setRemotePlayback requires the MEDIA_CONTENT_CONTROL permission"

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c0
    const-wide/32 v5, 0xfbf0fec

    .line 9157
    invoke-static {v5, v6, p6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p5

    if-eqz p5, :cond_1cf

    .line 9159
    iget p5, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p5, p5, 0x20

    iput p5, p1, Landroid/app/Notification;->flags:I

    .line 9164
    :cond_1cf
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p8, "android.substName"

    invoke-virtual {p5, p8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_208

    .line 9165
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string v0, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {p5, v0, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    if-eqz p5, :cond_208

    .line 9168
    iget-object p5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p5, p8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9169
    sget-boolean p5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p5, :cond_208

    .line 9170
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " attempting to substitute app name without holding perm "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9178
    :cond_208
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/notification/NotificationManagerService;->checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 9180
    invoke-virtual {p1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide p3

    const-wide/16 v5, 0x0

    cmp-long p3, p3, v5

    if-nez p3, :cond_21a

    .line 9181
    sget-wide p3, Lcom/android/server/notification/NotificationManagerService;->NOTIFICATION_TTL:J

    invoke-virtual {p1, p3, p4}, Landroid/app/Notification;->setTimeoutAfter(J)V

    .line 9185
    :cond_21a
    invoke-virtual {p1}, Landroid/app/Notification;->fixSilentGroup()V

    .line 9188
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->shouldOffloadBitmap(Landroid/app/Notification;)Z

    move-result p3

    if-eqz p3, :cond_247

    .line 9189
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p3}, Landroid/app/Notification$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    .line 9191
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService;->mBitmapOffloader:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p4, v1, p3}, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;->offloadBitmap(ILandroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_247

    .line 9193
    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    .line 9194
    iget-object p4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p5, "android.picture"

    invoke-virtual {p4, p5, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9195
    iget-object p4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p5, "android.pictureIcon"

    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9201
    :cond_247
    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p4, "android.hideStatusBarNotification"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_279

    .line 9203
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p3, "android.permission.HIDE_STATUS_BAR_NOTIFICATION"

    invoke-virtual {p0, p3, v2, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_279

    .line 9206
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, p4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attempting to hide status bar notification without holding permission permission.HIDE_STATUS_BAR_NOTIFICATION"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_279
    return-void
.end method

.method public fixNotificationWithChannel(Landroid/app/Notification;Landroid/app/NotificationChannel;ILjava/lang/String;)V
    .registers 5

    .line 9247
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPromotable(Landroid/app/Notification;Landroid/app/NotificationChannel;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 9252
    new-instance p2, Landroid/content/AttributionSource$Builder;

    invoke-direct {p2, p3}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 9254
    invoke-virtual {p2, p4}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p2

    .line 9255
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    const-string p3, "android.permission.POST_PROMOTED_NOTIFICATIONS"

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p2, p4}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_25

    .line 9262
    iget p0, p1, Landroid/app/Notification;->flags:I

    const/high16 p2, 0x40000

    or-int/2addr p0, p2

    iput p0, p1, Landroid/app/Notification;->flags:I

    :cond_25
    return-void
.end method

.method public getAllUsersNotificationPermissions()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 8082
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8083
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 8086
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 8087
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 8089
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 8088
    invoke-virtual {v3, v2}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8090
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 8091
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_47
    return-object v0
.end method

.method public getApprovedAssistant(I)Landroid/content/ComponentName;
    .registers 2

    .line 15319
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 15320
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    .line 15321
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getBinderService()Landroid/app/INotificationManager;
    .registers 1

    .line 3884
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public final getClassificationChannelLocked(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)Landroid/app/NotificationChannel;
    .registers 6

    .line 7794
    const-string v0, "key_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_37

    const/4 v0, 0x4

    if-gt p2, v0, :cond_37

    .line 7796
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7797
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 7796
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/notification/PreferencesHelper;->getReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_36

    .line 7799
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7800
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 7799
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->createReservedChannel(Ljava/lang/String;II)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 7801
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-object p1

    :cond_36
    return-object v0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 1

    .line 12471
    const-string p0, "companiondevice"

    .line 12472
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 12471
    invoke-static {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 9

    .line 3301
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 3302
    new-instance v1, Lcom/android/server/notification/GroupHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v7, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/GroupHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;IIILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v1
.end method

.method public getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 10468
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    if-nez p0, :cond_f

    return-object v0

    .line 10472
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryText(Landroid/app/Notification;)Ljava/lang/String;
    .registers 6

    .line 4036
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 4037
    const-string v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 4040
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$BigTextStyle;

    if-eqz v3, :cond_26

    .line 4041
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_50

    .line 4042
    :cond_26
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$MessagingStyle;

    if-eqz v3, :cond_50

    .line 4043
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle;

    .line 4044
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 4045
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 4046
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4050
    :cond_50
    :goto_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 4051
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5e

    :cond_5d
    move-object v0, v1

    :cond_5e
    :goto_5e
    if-nez v0, :cond_61

    return-object v1

    .line 4054
    :cond_61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;
    .registers 4

    .line 4020
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    .line 4021
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_16

    .line 4023
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    if-nez v0, :cond_28

    .line 4026
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x104071f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4028
    :cond_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1

    .line 4122
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public final getNotificationChannelRestoreDeleted(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 24

    move-object/from16 v0, p0

    .line 8963
    sget-object v1, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_e

    return-object v9

    .line 8968
    :cond_e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8970
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v6, p5

    .line 8968
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v13

    if-eqz v13, :cond_55

    .line 8972
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 8973
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 8974
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 8977
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move-object/from16 v11, p1

    .line 8976
    invoke-virtual {v1, v11, v2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v15

    const/16 v17, 0x1

    const/4 v14, 0x1

    move/from16 v16, p2

    move/from16 v12, p3

    .line 8974
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZIZ)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 8980
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-object v13

    :cond_54
    return-object v9

    :cond_55
    return-object v13
.end method

.method public final getNotificationCount(Ljava/lang/String;I)I
    .registers 10

    .line 9695
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9696
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_36

    .line 9698
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 9699
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 9700
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_33

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_65

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 9704
    :cond_36
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3c
    if-ge v2, v1, :cond_63

    .line 9706
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9707
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 9708
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_60

    add-int/lit8 v4, v4, 0x1

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 9712
    :cond_63
    monitor-exit v0

    return v4

    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_31

    throw p0
.end method

.method public getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 9719
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9720
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_4e

    .line 9722
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 9723
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 9724
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_4b

    .line 9725
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, p3, :cond_49

    .line 9726
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_4b

    :catchall_47
    move-exception p0

    goto :goto_7d

    :cond_49
    add-int/lit8 v4, v4, 0x1

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 9732
    :cond_4e
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_54
    if-ge v2, p3, :cond_7b

    .line 9734
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/notification/NotificationRecord;

    .line 9735
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 9736
    invoke-virtual {p4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p4

    if-ne p4, p2, :cond_78

    add-int/lit8 v4, v4, 0x1

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 9740
    :cond_7b
    monitor-exit v0

    return v4

    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_47

    throw p0
.end method

.method public getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3

    .line 2734
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2735
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2736
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getNotificationRecordCount()I
    .registers 9

    .line 2687
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2688
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 2689
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2691
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_25
    :goto_25
    if-ge v4, v3, :cond_56

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 2692
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    add-int/lit8 v1, v1, -0x1

    .line 2695
    :cond_3d
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :catchall_54
    move-exception p0

    goto :goto_58

    .line 2700
    :cond_56
    monitor-exit v0

    return v1

    .line 2701
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_54

    throw p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5

    .line 8630
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 8631
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getPackageImportanceWithIdentity(I)I
    .registers 4

    .line 13747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13749
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 13751
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13752
    throw p0
.end method

.method public final getPackageImportanceWithIdentity(Ljava/lang/String;)I
    .registers 4

    .line 13735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 13738
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 13740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13741
    throw p0
.end method

.method public final getRealUserId(I)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return p1
.end method

.method public final getSbnForArchive(Lcom/android/server/notification/NotificationRecord;I)Landroid/service/notification/StatusBarNotification;
    .registers 5

    .line 11432
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/16 v1, 0xd

    if-ne p2, v1, :cond_1f

    .line 11434
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 11435
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->wasSummaryBeforeAutoGrouping(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 11436
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 11437
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p2, p2, 0x200

    iput p2, p1, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_1f
    return-object v0
.end method

.method public getShortcutHelper()Lcom/android/server/notification/ShortcutHelper;
    .registers 1

    .line 2677
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method public getStringArrayResource(I)[Ljava/lang/String;
    .registers 2

    .line 3107
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuppressors()Ljava/util/ArrayList;
    .registers 6

    .line 3769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3770
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_34

    .line 3771
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3773
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3775
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 3776
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_34
    return-object v0
.end method

.method public final getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 25

    if-nez p7, :cond_1d

    .line 4112
    new-instance v0, Lcom/android/server/notification/toast/TextToastRecord;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/toast/TextToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)V

    return-object v0

    .line 4115
    :cond_1d
    new-instance v1, Lcom/android/server/notification/toast/CustomToastRecord;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/notification/toast/CustomToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Landroid/app/ITransientNotification;ILandroid/os/Binder;I)V

    return-object v1
.end method

.method public final grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 17

    if-eqz p2, :cond_57

    .line 11548
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_57

    .line 11549
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 11551
    :try_start_13
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 11552
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 11554
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    const/4 v8, 0x1

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    move/from16 v10, p5

    .line 11551
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2a} :catch_31
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2e

    .line 11561
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_53

    .line 11559
    :catch_31
    :try_start_31
    const-string p0, "NotificationService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot grant uri access; "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not own "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2e

    .line 11561
    :catch_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_57

    :goto_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11562
    throw p0

    :cond_57
    :goto_57
    return-void
.end method

.method public final handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5

    .line 10868
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10869
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10870
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p1

    if-ltz p1, :cond_39

    .line 10872
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3b

    .line 10874
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_37

    throw p0
.end method

.method public final handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 18

    .line 10665
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 10666
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 10667
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 10670
    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, -0x201

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 10675
    :cond_1a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/NotificationManagerService;->wasSummaryAutogrouped(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 10676
    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, -0x201

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 10680
    :cond_26
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 10681
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p2, :cond_3a

    .line 10683
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    goto :goto_3b

    :cond_3a
    move-object v5, v4

    :goto_3b
    if-eqz p2, :cond_45

    .line 10684
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    :cond_45
    if-eqz p2, :cond_4f

    .line 10685
    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v5, 0x1

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    if-eqz v5, :cond_87

    .line 10688
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eq v6, p2, :cond_87

    if-eqz v6, :cond_63

    .line 10691
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    goto :goto_65

    :cond_63
    const-string v6, "<null>"

    .line 10692
    :goto_65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", removed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotificationService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    if-eqz v3, :cond_8e

    .line 10697
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10700
    :cond_8e
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;-><init>()V

    if-eqz v5, :cond_c2

    if-eqz v3, :cond_9d

    .line 10711
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 10712
    :cond_9d
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v8}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda17;-><init>()V

    .line 10714
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    .line 10715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    .line 10712
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    :cond_c2
    return-void
.end method

.method public final handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5

    .line 10887
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10888
    :cond_1c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10889
    :try_start_1f
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    .line 10890
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final handleListenerHintsChanged(I)V
    .registers 3

    .line 11126
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11127
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 11128
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final handleListenerInterruptionFilterChanged(I)V
    .registers 3

    .line 11132
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11133
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 11134
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final handleNotificationPermissionChange(Ljava/lang/String;I)V
    .registers 13

    .line 7651
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 7654
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 7656
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "No uid found for %s, %s!"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7659
    :cond_28
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 7661
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v7, 0x0

    const/4 v9, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 10

    .line 11140
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 11141
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 11142
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 11143
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result p2

    or-int/2addr p2, p1

    if-eqz p1, :cond_3b

    .line 11146
    array-length p1, p3

    array-length v0, p4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_3b

    .line 11148
    aget-object v1, p3, v0

    .line 11149
    aget v2, p4, v0

    .line 11150
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 11153
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->removePackageNotifications(Ljava/lang/String;I)V

    .line 11154
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/notification/NotificationHistoryManager;->onPackageRemoved(ILjava/lang/String;)V

    .line 11156
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/notification/NotificationListenerStats;->onPackageRemoved(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_3b
    if-eqz p2, :cond_40

    .line 11160
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_40
    return-void
.end method

.method public final handleRankingReconsideration(Landroid/os/Message;)V
    .registers 11

    .line 10973
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_8

    goto/16 :goto_a8

    .line 10974
    :cond_8
    check-cast p1, Lcom/android/server/notification/RankingReconsideration;

    .line 10975
    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 10977
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10978
    :try_start_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    if-nez v1, :cond_23

    .line 10980
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto/16 :goto_a9

    .line 10982
    :cond_23
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 10983
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 10984
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v4

    .line 10985
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v5

    .line 10987
    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10988
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 10989
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 10990
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, p1, :cond_4a

    move p1, v7

    goto :goto_4b

    :cond_4a
    move p1, v6

    .line 10991
    :goto_4b
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eq v3, v2, :cond_53

    move v2, v7

    goto :goto_54

    :cond_53
    move v2, v6

    .line 10992
    :goto_54
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    if-eq v4, v8, :cond_5c

    move v4, v7

    goto :goto_5d

    :cond_5c
    move v4, v6

    .line 10996
    :goto_5d
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v8

    if-eq v5, v8, :cond_6b

    move v5, v7

    goto :goto_6c

    :cond_6b
    move v5, v6

    :goto_6c
    if-nez p1, :cond_74

    if-nez v2, :cond_74

    if-nez v4, :cond_74

    if-eqz v5, :cond_75

    :cond_74
    move v6, v7

    :cond_75
    if-eqz v3, :cond_a0

    .line 11002
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result p1

    if-nez p1, :cond_a0

    .line 11003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 11005
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v2, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 11007
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    .line 11006
    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-direct {v2, v3, v4}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(ZI)V

    .line 11005
    invoke-virtual {p1, v1, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    .line 11010
    invoke-static {v1}, Lcom/android/server/notification/ZenLog;->traceAlertOnUpdatedIntercept(Lcom/android/server/notification/NotificationRecord;)V

    .line 11012
    :cond_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_10 .. :try_end_a1} :catchall_20

    if-eqz v6, :cond_a8

    .line 11014
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    :cond_a8
    :goto_a8
    return-void

    .line 11012
    :goto_a9
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_20

    throw p0
.end method

.method public handleRankingSort()V
    .registers 28

    move-object/from16 v0, p0

    .line 11019
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v1, :cond_7

    return-void

    .line 11020
    :cond_7
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11021
    :try_start_a
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 11023
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v4, 0x0

    move v6, v4

    :goto_17
    if-ge v6, v2, :cond_ad

    .line 11026
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v7, v5

    .line 11027
    new-instance v5, Lcom/android/server/notification/NotificationRecordExtractorData;

    move-object v8, v7

    .line 11029
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    move-object v9, v8

    .line 11030
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v8

    move-object v10, v9

    .line 11031
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    .line 11032
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v11

    move-object v12, v10

    move v10, v11

    .line 11033
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v11

    move-object v13, v12

    .line 11034
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    move-object v14, v13

    .line 11035
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v13

    move-object v15, v14

    .line 11036
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    .line 11037
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 11038
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 11039
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v19, v18

    .line 11040
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v20, v19

    .line 11041
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v19

    move-object/from16 v21, v20

    .line 11042
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v20

    move-object/from16 v22, v21

    .line 11043
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v21

    move-object/from16 v23, v22

    .line 11044
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v22

    move-object/from16 v24, v23

    .line 11045
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v23

    move-object/from16 v25, v24

    .line 11046
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v26, v25

    invoke-direct/range {v5 .. v24}, Lcom/android/server/notification/NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZLjava/lang/String;)V

    .line 11047
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11048
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v7, v26

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_17

    :catchall_ab
    move-exception v0

    goto :goto_10e

    .line 11050
    :cond_ad
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    move v5, v4

    :goto_b5
    if-ge v5, v2, :cond_10c

    .line 11052
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 11053
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ca

    goto :goto_109

    .line 11058
    :cond_ca
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecordExtractorData;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 11059
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 11064
    :cond_df
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->hasPendingLogUpdate()Z

    move-result v7

    if-eqz v7, :cond_109

    .line 11068
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecordExtractorData;

    .line 11069
    invoke-virtual {v7, v6, v5}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 11070
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 11071
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    .line 11070
    invoke-interface {v7, v6, v5, v4, v8}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V

    .line 11076
    :cond_106
    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    :cond_109
    :goto_109
    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    .line 11079
    :cond_10c
    monitor-exit v1

    return-void

    :goto_10e
    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_a .. :try_end_10f} :catchall_ab

    throw v0
.end method

.method public handleSavePolicyFile()V
    .registers 4

    .line 1311
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1312
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method

.method public final handleSendRankingUpdate()V
    .registers 3

    .line 11107
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11108
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 11109
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final hasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 7955
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    .line 7960
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_1e

    .line 7961
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4

    .line 12436
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final hasCompanionDevice(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 9

    .line 12442
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_c

    .line 12443
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 12446
    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    .line 12449
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 12451
    :try_start_16
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 12452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    if-eqz p3, :cond_3f

    .line 12454
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    .line 12453
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_36} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_36} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_3b
    .catchall {:try_start_16 .. :try_end_36} :catchall_39

    if-eqz v1, :cond_20

    goto :goto_3f

    :catchall_39
    move-exception p0

    goto :goto_6b

    :catch_3b
    move-exception p0

    goto :goto_48

    :catch_3d
    move-exception p0

    goto :goto_65

    .line 12465
    :cond_3f
    :goto_3f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catch_44
    :cond_44
    :goto_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6f

    .line 12463
    :goto_48
    :try_start_48
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot verify caller pkg="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 12461
    :goto_65
    const-string p1, "Cannot reach companion device service"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_39

    goto :goto_44

    .line 12465
    :goto_6b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12466
    throw p0

    :goto_6f
    return v2
.end method

.method public hasFlag(II)Z
    .registers 3

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasParent(Landroid/content/pm/UserInfo;)Z
    .registers 3

    .line 1061
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final hideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 9

    .line 12103
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12104
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 12105
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12107
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_58

    .line 12109
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 12110
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 12111
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x1

    .line 12112
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 12113
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_5f

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 12117
    :cond_58
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 12118
    monitor-exit v0

    return-void

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_53

    throw p0
.end method

.method public indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5

    .line 12093
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 12095
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 7

    .line 10895
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10896
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 10898
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    .line 10899
    iget-object v3, v2, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, v2, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    if-ne v2, p2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/os/Handler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Landroid/permission/PermissionManager;Landroid/os/PowerManager;Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;Lcom/android/internal/logging/UiEventLogger;Lcom/android/server/bitmapoffload/BitmapOffloadInternal;Lcom/android/server/notification/NotificationListenerStats;)V
    .registers 72

    move-object/from16 v0, p0

    move-object/from16 v1, p17

    move-object/from16 v2, p37

    move-object/from16 v3, p1

    .line 2810
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v3, p3

    .line 2812
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mBroadcastsHandler:Landroid/os/Handler;

    .line 2814
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2815
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "max_notification_enqueue_rate"

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 2820
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v4, p16

    .line 2821
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 2822
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2823
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    move-object/from16 v1, p20

    .line 2824
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    move-object/from16 v1, p21

    .line 2825
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    move-object/from16 v1, p4

    .line 2826
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v1, p5

    .line 2827
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2828
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v1, p33

    .line 2829
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 2830
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2831
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    move-object/from16 v1, p29

    .line 2832
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v1, p22

    .line 2833
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v1, p18

    .line 2834
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2835
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v1, p10

    .line 2836
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    move-object/from16 v1, p14

    .line 2837
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v1, p26

    .line 2838
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 2839
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/os/DeviceIdleManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DeviceIdleManager;

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    move-object/from16 v1, p19

    .line 2840
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    move-object/from16 v12, p23

    .line 2841
    iput-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    move-object/from16 v1, p30

    .line 2842
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p34

    .line 2843
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v1, p35

    .line 2844
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 2845
    const-string/jumbo v1, "platform_compat"

    .line 2846
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2845
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object/from16 v1, p36

    .line 2847
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2849
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    const v1, 0x10700b4

    const/4 v4, 0x0

    .line 2852
    :try_start_e0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_e4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e0 .. :try_end_e4} :catch_e9

    :goto_e4
    move-object/from16 v19, v1

    move-object/from16 v1, p12

    goto :goto_ec

    .line 2854
    :catch_e9
    new-array v1, v4, [Ljava/lang/String;

    goto :goto_e4

    .line 2856
    :goto_ec
    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 2857
    new-instance v6, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v6}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v6, p2

    .line 2858
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    move-object/from16 v6, p9

    .line 2859
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v6, p38

    .line 2860
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    .line 2861
    new-instance v6, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v11, Lcom/android/server/notification/ZenModeEventLogger;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-direct {v11, v13}, Lcom/android/server/notification/ZenModeEventLogger;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 p21, p32

    move-object/from16 p16, v6

    move-object/from16 p17, v7

    move-object/from16 p18, v8

    move-object/from16 p19, v9

    move-object/from16 p20, v10

    move-object/from16 p22, v11

    invoke-direct/range {p16 .. p22}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V

    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2863
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v7, v0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    move-object/from16 v6, p28

    .line 2924
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v6, p31

    .line 2925
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 2926
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2927
    new-instance v20, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v21

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 2938
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v32

    move/from16 v31, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    invoke-direct/range {v20 .. v32}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Landroid/permission/PermissionManager;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/uri/UriGrantsManagerInternal;ZLjava/time/Clock;)V

    move-object/from16 v4, v20

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2939
    new-instance v13, Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    move-object/from16 v21, p15

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v21}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;Lcom/android/server/notification/GroupHelper;)V

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v4, p11

    .line 2941
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    move-object/from16 v4, p15

    .line 2942
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    move-object/from16 v4, p24

    .line 2943
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 2944
    new-instance v4, Lcom/android/server/notification/TimeToLiveHelper;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/server/notification/TimeToLiveHelper;-><init>(Lcom/android/server/notification/NotificationManagerPrivate;Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mTtlHelper:Lcom/android/server/notification/TimeToLiveHelper;

    move-object/from16 v4, p7

    .line 2947
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v4, p8

    .line 2950
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2953
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    move-object/from16 v4, p13

    .line 2955
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 2956
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 2957
    const-class v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v4, :cond_1de

    .line 2959
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 2962
    :cond_1de
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 2963
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v4

    iput v4, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2965
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v4, v0, v6}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 2967
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v6, 0x10e010c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v4, v3}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 2970
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_219

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.type.television"

    .line 2971
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_217

    goto :goto_219

    :cond_217
    const/4 v3, 0x0

    goto :goto_21a

    :cond_219
    :goto_219
    const/4 v3, 0x1

    :goto_21a
    iput-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2973
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10700be

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    .line 2978
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    const v3, 0x10700b3

    .line 2981
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService;->getStringArrayResource(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 2983
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v6, "string"

    const-string v7, "android"

    .line 2984
    const-string v8, "config_defaultSearchSelectorPackageName"

    invoke-virtual {v4, v8, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2983
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultSearchSelectorPkg:Ljava/lang/String;

    move-object/from16 v3, p32

    .line 2986
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-object/from16 v4, p25

    .line 2988
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    move-object/from16 v4, p27

    .line 2990
    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 2992
    new-instance v6, Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationManagerPrivate:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2995
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/VibrationStatsWriter;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/VibrationStatsWriter;

    move-result-object v17

    move-object/from16 v9, p6

    move-object v13, v1

    move-object/from16 v16, v3

    invoke-direct/range {v6 .. v17}, Lcom/android/server/notification/NotificationAttentionHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerPrivate;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/internal/util/VibrationStatsWriter;)V

    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 3000
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3001
    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3005
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3006
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3007
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3008
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3009
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 3010
    const-string v3, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3012
    :cond_2d3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p5, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v1, p4

    .line 3014
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3015
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3016
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3017
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3018
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3019
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p5, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3023
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3024
    const-string v4, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3025
    const-string v4, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3026
    const-string v4, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p5, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3030
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 p5, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3034
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3037
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3040
    new-instance v1, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    invoke-direct {v1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 3041
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 3042
    invoke-static {}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v6, 0x4

    .line 3041
    invoke-virtual {v1, v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 3045
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 3054
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 3056
    iput-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mBitmapOffloader:Lcom/android/server/bitmapoffload/BitmapOffloadInternal;

    if-eqz v2, :cond_3a5

    .line 3058
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;

    invoke-direct {v1, v0, v5}, Lcom/android/server/notification/NotificationManagerService$BitmapAccessHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/android/server/bitmapoffload/BitmapOffloadInternal;->registerPermissionHandler(ILcom/android/server/bitmapoffload/BitmapOffloadInternal$PermissionHandler;)V

    :cond_3a5
    return-void
.end method

.method public final isCallNotification(Ljava/lang/String;I)Z
    .registers 6

    .line 9670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9672
    :try_start_4
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.telecom"

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_24

    if-eqz p2, :cond_2f

    .line 9675
    :try_start_13
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 9676
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_21} :catch_2b
    .catchall {:try_start_13 .. :try_end_21} :catchall_24

    if-eqz p0, :cond_27

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_33

    :cond_26
    :goto_26
    const/4 v2, 0x1

    .line 9685
    :cond_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9686
    throw p0
.end method

.method public final isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 5

    .line 9663
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p3, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 9664
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerAndroid(Ljava/lang/String;I)Z
    .registers 3

    .line 12261
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    const-string p0, "android"

    .line 12262
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerInstantApp(II)Z
    .registers 7

    .line 12291
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    move p2, v2

    .line 12300
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 12304
    aget-object v1, v1, v2

    .line 12305
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 12307
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 12311
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0

    :catch_2c
    move-exception p0

    goto :goto_5a

    .line 12309
    :cond_2e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12302
    :cond_45
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5a} :catch_2c

    .line 12313
    :goto_5a
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isCallerSameApp(Ljava/lang/String;II)Z
    .registers 4

    .line 12332
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public isCallerSystemOrPhone()Z
    .registers 2

    .line 12195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result p0

    return p0
.end method

.method public isCallerSystemOrSystemUi()Z
    .registers 3

    .line 12200
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 12203
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallerSystemOrSystemUiOrShell()Z
    .registers 3

    .line 12208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10

    if-nez v0, :cond_b

    goto :goto_10

    .line 12212
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public isCallingAppIdSystem()Z
    .registers 2

    .line 12182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 12183
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isCallingUidSystem()Z
    .registers 2

    .line 12177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 10629
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isDNDMigrationDone(I)Z
    .registers 4

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dnd_settings_migrated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_13

    return p1

    :cond_13
    return v1
.end method

.method public final isDefaultAdservicesPackage(Ljava/lang/String;)Z
    .registers 4

    .line 9284
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 9288
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getApkInApexPackageNames()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9289
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_22
    return v0
.end method

.method public final isDefaultSearchSelectorPackage(Ljava/lang/String;)Z
    .registers 2

    .line 9280
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultSearchSelectorPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEnterpriseExempted(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 9299
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9300
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return v1

    .line 9304
    :cond_18
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_20

    return v3

    .line 9307
    :cond_20
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x7d

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2d

    return v1

    :cond_2d
    return v3
.end method

.method public final isExemptFromRateLimiting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 10790
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.UNLIMITED_TOASTS"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v0

    .line 10794
    :catch_e
    const-string p0, "NotificationService"

    const-string p1, "Failed to connect with package manager"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isInLockDownMode(I)Z
    .registers 2

    .line 12432
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->isInLockDownMode(I)Z

    move-result p0

    return p0
.end method

.method public isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 4

    .line 12504
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isNotificationAssistant(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 12505
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public isNASMigrationDone(I)Z
    .registers 4

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "nas_settings_updated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    return p1

    :cond_14
    return v1
.end method

.method public final isNotificationAssistant(Landroid/os/IInterface;)Z
    .registers 3

    .line 12509
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12510
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 12511
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isNotificationRecent(J)Z
    .registers 5

    .line 11850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x1388

    cmp-long p0, v0, p0

    if-gez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 6

    .line 8681
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8682
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 8683
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final isPackageInForegroundForToast(I)Z
    .registers 2

    .line 10952
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasResumedActivity(I)Z

    move-result p0

    return p0
.end method

.method public isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .registers 5

    .line 10198
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 10201
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 10200
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 10204
    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 5

    .line 12515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 12516
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 12518
    :try_start_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 12525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    goto :goto_21

    :catch_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 12520
    :catch_19
    :try_start_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Could not talk to package manager service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_12

    .line 12525
    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12526
    throw p0
.end method

.method public isProfileUser(Landroid/content/pm/UserInfo;)Z
    .registers 5

    .line 1054
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 1055
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasParent(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v2

    :cond_15
    return v1

    .line 1057
    :cond_16
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    return v1

    :cond_24
    :goto_24
    return v2
.end method

.method public final isPromotable(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 9218
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPromotable(Landroid/app/Notification;Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method public final isPromotedOutOfGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 11941
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-nez p0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 9750
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9751
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 9752
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 9753
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public final isSameUserOrProfile(II)Z
    .registers 3

    if-eq p1, p2, :cond_d

    .line 1942
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    if-ne p0, p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isUidSystemOrPhone(I)Z
    .registers 3

    .line 12188
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 6

    .line 12478
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 12481
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 12484
    :cond_17
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p3, p3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 12486
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isTypeAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    new-instance p2, Landroid/content/pm/VersionedPackage;

    .line 12488
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 12487
    invoke-virtual {p0, p2}, Landroid/service/notification/NotificationListenerFilter;->isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z

    move-result p0

    if-nez p0, :cond_3b

    :cond_3a
    return v1

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 11

    .line 10483
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "INTERRUPTIVENESS: "

    const-string v3, "NotificationService"

    if-eqz v0, :cond_3d

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 10484
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_3c

    .line 10485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10486
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: summary"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10485
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v1

    :cond_3d
    const/4 v0, 0x1

    if-nez p1, :cond_60

    .line 10492
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_5f

    .line 10493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10494
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: new notification"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10493
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v0

    .line 10499
    :cond_60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 10500
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 10501
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_2c1

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v5, :cond_7a

    goto/16 :goto_2c1

    .line 10511
    :cond_7a
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 10512
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_a7

    .line 10513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10514
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: FGS/UIJ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10513
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return v1

    .line 10519
    :cond_a8
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10520
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10521
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_134

    .line 10522
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_133

    .line 10523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10524
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed title"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10523
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10526
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v5, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10525
    const-string p2, "   old title: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10528
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v6, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10527
    const-string p2, "   new title: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    return v0

    .line 10534
    :cond_134
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10535
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10536
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c0

    .line 10537
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_1bf

    .line 10538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10539
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed text"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10538
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10540
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10541
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v5, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10540
    const-string p2, "   old text: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10543
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v6, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 10542
    const-string p2, "   new text: %s (%s@0x%08x)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bf
    return v0

    .line 10549
    :cond_1c0
    invoke-virtual {p1}, Landroid/app/Notification;->getProgressState()I

    move-result v5

    invoke-virtual {v4}, Landroid/app/Notification;->getProgressState()I

    move-result v6

    if-eq v5, v6, :cond_1ea

    .line 10550
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_1e9

    .line 10551
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10552
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: significantly changed progress"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10551
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e9
    return v0

    .line 10566
    :cond_1ea
    invoke-static {p1, v4}, Landroid/app/Notification;->areIconsDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_210

    .line 10567
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_20f

    .line 10568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10569
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: icons differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10568
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20f
    return v0

    .line 10575
    :cond_210
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v5

    if-eqz v5, :cond_236

    .line 10576
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_235

    .line 10577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10578
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: bubble"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10577
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_235
    return v1

    .line 10584
    :cond_236
    invoke-static {p1, v4}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 10585
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_25b

    .line 10586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10587
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: changed actions"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10586
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25b
    return v0

    .line 10593
    :cond_25c
    :try_start_25c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 10594
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 10597
    invoke-static {p1, p0}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v4

    if-eqz v4, :cond_295

    .line 10598
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_294

    .line 10599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10600
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: styles differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10599
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    :catch_292
    move-exception p0

    goto :goto_2bb

    :cond_294
    :goto_294
    return v0

    .line 10606
    :cond_295
    invoke-static {p1, p0}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result p0

    if-eqz p0, :cond_2c0

    .line 10607
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_2ba

    .line 10608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10609
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is interruptive: remoteviews differ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10608
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_2ba} :catch_292

    :cond_2ba
    return v0

    .line 10614
    :goto_2bb
    const-string p1, "error recovering builder"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c0
    return v1

    .line 10502
    :cond_2c1
    :goto_2c1
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz p0, :cond_2e0

    .line 10503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10504
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not interruptive: no extras"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10503
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e0
    return v1
.end method

.method public keepProcessAliveForToastIfNeeded(I)V
    .registers 3

    .line 10910
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10911
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 10912
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final keepProcessAliveForToastIfNeededLocked(I)V
    .registers 9

    .line 10918
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 10919
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-ge v3, v1, :cond_20

    .line 10921
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/toast/ToastRecord;

    .line 10922
    iget v6, v5, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    if-ne v6, p1, :cond_1d

    invoke-virtual {v5}, Lcom/android/server/notification/toast/ToastRecord;->keepProcessAlive()Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v4, v4, 0x1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 10927
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_27

    const/4 v2, 0x1

    :cond_27
    const-string/jumbo v1, "toast"

    invoke-interface {v0, p0, p1, v2, v1}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2d} :catch_2d

    :catch_2d
    return-void
.end method

.method public final synthetic lambda$acquireWakeLockForPost$14(Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
    .registers 6

    .line 8719
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationManagerService:post:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 8721
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 8722
    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 8723
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    invoke-interface {p0, v0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$applyNotificationUpdateForUserProfiles$1(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 1954
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->isSameUserOrProfile(II)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$applyNotificationUpdateForUserProfilesAndChannelType$5(ILjava/lang/String;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 1986
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->isSameUserOrProfile(II)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 1987
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1988
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applyNotificationUpdateForUserProfilesAndType$6(IILcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 1995
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->isSameUserOrProfile(II)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 1996
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getBundleType()I

    move-result p0

    if-ne p0, p2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$cancelNotificationLocked$17(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 5

    .line 11330
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p0, p2}, Lcom/android/server/notification/GroupHelper;->onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V

    .line 11332
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$cancelNotificationLocked$18(Ljava/lang/String;)V
    .registers 5

    .line 11345
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_19

    .line 11349
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/notification/GroupHelper;->onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    .line 11352
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method public final synthetic lambda$doChannelWarningToast$15(Ljava/lang/CharSequence;)V
    .registers 5

    .line 9456
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_notification_channel_warnings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_23

    .line 9459
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 9461
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_23
    return-void
.end method

.method public final synthetic lambda$maybeNotifySystemUiListenerLifetimeExtendedLocked$21(Lcom/android/server/notification/NotificationRecord;ZZ)V
    .registers 4

    .line 13716
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p0

    .line 13718
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    if-nez p3, :cond_15

    .line 13721
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x9

    iput p2, p1, Landroid/app/Notification;->flags:I

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_17

    .line 13723
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    throw p1
.end method

.method public final synthetic lambda$notifyListenersPostedAndLogLocked$20(Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .registers 5

    .line 13664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 13665
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 13668
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->finish()J

    move-result-wide p1

    if-eqz p3, :cond_21

    .line 13670
    iput-wide p1, p3, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    .line 13671
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    invoke-interface {p0, p3}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationPosted(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    :cond_21
    return-void
.end method

.method public final synthetic lambda$onStart$7(ILcom/android/server/notification/NotificationRecord;Z)V
    .registers 19

    .line 3114
    const-string v1, "NotificationService"

    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2c

    .line 3115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reposting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_29
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :cond_2c
    move/from16 v12, p3

    .line 3117
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    .line 3118
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 3119
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, p0

    move/from16 v11, p1

    .line 3117
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_29

    return-void

    .line 3122
    :goto_6f
    const-string v0, "Cannot un-snooze notification"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$onUserStopping$11(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 3607
    const-string/jumbo v0, "notifHistoryStopUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3609
    :try_start_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 3611
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3612
    throw p0
.end method

.method public final synthetic lambda$onUserUnlocked$9(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 3558
    const-string/jumbo v0, "notifHistoryUnlockUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3560
    :try_start_9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserUnlocked(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 3562
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3563
    throw p0
.end method

.method public final synthetic lambda$postNotificationsWhenExitLockDownMode$19(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 12167
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, p1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 12169
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$reportForegroundServiceUpdate$13(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 6

    .line 4005
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$sendAppBlockStateChangedBroadcast$10(ZLjava/lang/String;I)V
    .registers 6

    .line 3572
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.BLOCKED_STATE"

    .line 3574
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 3575
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 3576
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3577
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3572
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 3579
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about app block change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$sendZenBroadcastWithDelay$8(Landroid/content/Intent;)V
    .registers 2

    .line 3435
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$updateNotificationChannelInt$12(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 12

    .line 3693
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3694
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 3695
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz v5, :cond_26

    .line 3697
    :try_start_10
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 3698
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object v4, p1

    .line 3697
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;Landroid/util/ArrayMap;)V

    goto :goto_26

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_28

    .line 3701
    :cond_26
    :goto_26
    monitor-exit p3

    return-void

    :goto_28
    monitor-exit p3
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_23

    throw p0
.end method

.method public loadDefaultApprovedServices(I)V
    .registers 2

    .line 976
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->loadDefaultsFromConfig()V

    .line 978
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ConditionProviders;->loadDefaultsFromConfig()V

    .line 980
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    return-void
.end method

.method public loadPolicyFile()V
    .registers 6

    .line 1279
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1283
    :try_start_10
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_5f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_16} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_16} :catch_3e
    .catchall {:try_start_10 .. :try_end_16} :catchall_3c

    const/4 v4, -0x1

    .line 1284
    :try_start_17
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 1287
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->resetDefaultDndIfNecessary()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_27} :catch_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_31
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_27} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_27} :catch_2b
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    goto :goto_36

    :catchall_28
    move-exception p0

    move-object v1, v3

    goto :goto_68

    :catch_2b
    move-exception p0

    move-object v1, v3

    goto :goto_44

    :catch_2e
    move-exception p0

    move-object v1, v3

    goto :goto_4f

    :catch_31
    move-exception p0

    move-object v1, v3

    goto :goto_57

    :catch_34
    move-object v1, v3

    goto :goto_5f

    .line 1304
    :cond_36
    :goto_36
    :try_start_36
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_66

    :catchall_3a
    move-exception p0

    goto :goto_6c

    :catchall_3c
    move-exception p0

    goto :goto_68

    :catch_3e
    move-exception p0

    goto :goto_44

    :catch_40
    move-exception p0

    goto :goto_4f

    :catch_42
    move-exception p0

    goto :goto_57

    .line 1302
    :goto_44
    :try_start_44
    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_3c

    .line 1304
    :goto_4b
    :try_start_4b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_3a

    goto :goto_66

    .line 1300
    :goto_4f
    :try_start_4f
    const-string v2, "NotificationService"

    const-string v3, "Unable to parse notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1298
    :goto_57
    const-string v2, "NotificationService"

    const-string v3, "Unable to read notification policy"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1295
    :catch_5f
    :goto_5f
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultApprovedServices(I)V

    .line 1296
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_3c

    goto :goto_4b

    .line 1306
    :goto_66
    :try_start_66
    monitor-exit v0

    return-void

    .line 1304
    :goto_68
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1305
    throw p0

    .line 1306
    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_3a

    throw p0
.end method

.method public logClassificationChannelAdjustmentReceived(Lcom/android/server/notification/NotificationRecord;ZI)V
    .registers 14

    .line 2252
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p0, v0, :cond_f

    const/4 p0, 0x1

    move v4, p0

    goto :goto_10

    :cond_f
    move v4, v1

    .line 2253
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    if-nez p0, :cond_1c

    :goto_1a
    move v8, v1

    goto :goto_29

    .line 2254
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    goto :goto_1a

    .line 2258
    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v6

    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v7

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v9

    const/16 v2, 0x3d7

    move v3, p2

    move v5, p3

    .line 2256
    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIIIII)V

    return-void
.end method

.method public logSensitiveAdjustmentReceived(ZZI)V
    .registers 4

    const/16 p0, 0x341

    .line 2243
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    return-void
.end method

.method public logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 8

    .line 2181
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_dc

    .line 2182
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_dc

    const/4 v0, 0x1

    .line 2185
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 2186
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x566

    .line 2187
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2189
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x568

    .line 2188
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2191
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x63f

    .line 2190
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x640

    .line 2192
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x65d

    .line 2197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 2200
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66f

    .line 2198
    invoke-virtual {p2, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 2201
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2203
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_89

    .line 2204
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_77
    if-ge v3, v2, :cond_89

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/CharSequence;

    .line 2205
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->isAnimatedReply(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    move p2, v0

    goto :goto_8a

    :cond_89
    move p2, v1

    .line 2211
    :goto_8a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_c2

    move v2, v1

    .line 2213
    :goto_99
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    if-ge v2, v3, :cond_c2

    .line 2215
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v3, v3, v2

    if-eqz v3, :cond_bf

    .line 2217
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 2218
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.extra.IS_ANIMATED"

    .line 2219
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_bf

    goto :goto_c3

    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_c2
    move v0, v1

    :goto_c3
    if-eqz p2, :cond_cc

    .line 2226
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ANIMATED_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, v1, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_cc
    if-eqz v0, :cond_d5

    .line 2231
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ANIMATED_ACTION_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p2, v0, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 2235
    :cond_d5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {p0, p2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    :cond_dc
    return-void
.end method

.method public makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 12354
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v2, :cond_12e

    .line 12358
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 12359
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/notification/NotificationManagerService;->isInLockDownMode(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto/16 :goto_12a

    .line 12362
    :cond_2b
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v8

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v7

    if-nez v7, :cond_3b

    goto/16 :goto_12a

    .line 12365
    :cond_3b
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 12366
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 12368
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v7

    .line 12369
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v10

    .line 12370
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result v35

    .line 12372
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget v12, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result v11

    if-nez v11, :cond_6c

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v11, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v11

    if-eqz v11, :cond_6c

    const/4 v7, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v26

    goto :goto_70

    :cond_6c
    move-object/from16 v26, v7

    move-object/from16 v27, v10

    .line 12377
    :goto_70
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    .line 12383
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getOriginalChannelVisibility()I

    move-result v10

    const/16 v11, -0x3e8

    if-eq v10, v11, :cond_9b

    .line 12384
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v10

    if-eq v10, v11, :cond_8c

    .line 12386
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getOriginalChannelVisibility()I

    move-result v11

    if-ge v11, v10, :cond_9b

    .line 12387
    :cond_8c
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v7

    .line 12389
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getOriginalChannelVisibility()I

    move-result v10

    .line 12388
    invoke-virtual {v7, v10}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_9b
    move-object/from16 v17, v7

    .line 12395
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 12396
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v7

    const/4 v11, 0x1

    xor-int/2addr v7, v11

    .line 12397
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v12

    .line 12398
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v13

    .line 12399
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    .line 12400
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12401
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v16

    .line 12403
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v18

    .line 12404
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v19

    .line 12405
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v20

    .line 12406
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v21

    .line 12407
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v22

    .line 12408
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v23

    .line 12409
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v25

    if-nez v25, :cond_e7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v25

    if-eqz v25, :cond_e4

    goto :goto_e7

    :cond_e4
    move/from16 v25, v4

    goto :goto_e9

    :cond_e7
    :goto_e7
    move/from16 v25, v11

    .line 12412
    :goto_e9
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v28

    .line 12413
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isTextChanged()Z

    move-result v29

    .line 12414
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v30

    .line 12415
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v31

    .line 12416
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v32

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-nez v32, :cond_106

    move/from16 v32, v4

    goto :goto_113

    .line 12418
    :cond_106
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v32

    cmpl-float v32, v32, v33

    if-lez v32, :cond_111

    :goto_10e
    move/from16 v32, v11

    goto :goto_113

    :cond_111
    const/4 v11, -0x1

    goto :goto_10e

    .line 12419
    :goto_113
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v33

    .line 12420
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v34

    .line 12422
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSummarization()Ljava/lang/String;

    move-result-object v36

    move v11, v7

    .line 12393
    invoke-virtual/range {v8 .. v36}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V

    .line 12424
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    .line 12427
    :cond_12e
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    new-array v1, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 12428
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0, v1}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    return-object v0
.end method

.method public final makeStickyHun(Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 5

    .line 9006
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/notification/PermissionHelper;->hasRequestedPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 9008
    iget p0, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p0, p0, 0x4000

    iput p0, p1, Landroid/app/Notification;->flags:I

    .line 9010
    :cond_10
    iget-object p0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_18

    .line 9013
    iget-object p0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object p0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_18
    const/4 p0, 0x0

    .line 9015
    iput-object p0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 7

    if-eqz p3, :cond_4a

    .line 3752
    :try_start_2
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p3

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eq p3, v0, :cond_4a

    .line 3753
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 3756
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3755
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3758
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p4

    .line 3757
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3759
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3760
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3761
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3753
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p0

    .line 3764
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about group change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    return-void
.end method

.method public final maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 7

    .line 3711
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 3712
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 3713
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_52

    .line 3714
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-nez p3, :cond_52

    .line 3715
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 3718
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3717
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.app.extra.BLOCKED_STATE"

    .line 3720
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-nez p4, :cond_37

    const/4 p4, 0x1

    goto :goto_38

    :cond_37
    const/4 p4, 0x0

    .line 3719
    :goto_38
    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p3

    const/high16 p4, 0x10000000

    .line 3721
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    .line 3722
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3723
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 p3, 0x0

    .line 3715
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    :cond_52
    return-void

    :catch_53
    move-exception p0

    .line 3726
    const-string p1, "NotificationService"

    const-string p2, "Can\'t notify app about channel change"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final maybeNotifySystemUiListenerLifetimeExtendedListLocked(Ljava/util/List;I)V
    .registers 6

    .line 13684
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1c

    .line 13685
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 13687
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13686
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 13

    if-eqz p1, :cond_6c

    .line 13695
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-lez v0, :cond_6c

    .line 13697
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isCanceledAfterLifetimeExtension()Z

    move-result v0

    if-nez v0, :cond_6c

    const/4 v0, 0x1

    .line 13700
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setCanceledAfterLifetimeExtension(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_24

    const/16 p2, 0x64

    if-ne p3, p2, :cond_24

    move v6, v0

    goto :goto_25

    :cond_24
    move v6, v1

    .line 13706
    :goto_25
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result p2

    .line 13707
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x8

    if-lez p3, :cond_34

    move v1, v0

    .line 13710
    :cond_34
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    .line 13712
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget v0, p3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p3, Landroid/app/Notification;->flags:I

    .line 13714
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v8

    .line 13715
    new-instance p3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZZ)V

    invoke-virtual {v8, p3}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->addCleanupRunnable(Ljava/lang/Runnable;)V

    .line 13726
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13729
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeNotificationCancelPrevented(Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method public maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8

    .line 3969
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 3970
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 3972
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 3974
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3976
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 3974
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3977
    const-string/jumbo v1, "notifHistoryAddItem"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3979
    :try_start_3d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 3980
    new-instance v1, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 3982
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v1

    .line 3983
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v1

    .line 3984
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v1

    .line 3985
    invoke-virtual {v1, v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v0

    .line 3986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v0

    .line 3987
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v0

    .line 3988
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->getHistoryText(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v0

    .line 3989
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v0

    .line 3993
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationHistoryManager;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_a9
    .catchall {:try_start_3d .. :try_end_a9} :catchall_aa

    goto :goto_ac

    :catchall_aa
    move-exception p0

    goto :goto_b4

    .line 3996
    :cond_ac
    :goto_ac
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    .line 3998
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    return-void

    .line 3996
    :goto_b4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3997
    throw p0

    :cond_b8
    return-void
.end method

.method public maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    .line 4058
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4059
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 4060
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4061
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 4060
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setValidMessageSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4062
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4063
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 4066
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4067
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 4066
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setValidBubbleSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 4068
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4072
    :cond_46
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4073
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 4072
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMessageSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 4074
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4077
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4082
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4083
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p1

    .line 4082
    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMessageSent(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 4084
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_81
    return-void
.end method

.method public maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 9

    .line 4010
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4012
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 4013
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 4014
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v0, p0

    move v1, p2

    .line 4013
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    :cond_23
    return-void
.end method

.method public maybeShowInitialReviewPermissionsNotification()V
    .registers 4

    .line 15398
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    if-nez v0, :cond_5

    goto :goto_1b

    .line 15403
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "review_permissions_notification_state"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    :goto_1b
    return-void

    .line 15420
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x47

    .line 15423
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->createReviewPermissionsNotification()Landroid/app/Notification;

    move-result-object p0

    .line 15421
    const-string v2, "NotificationService"

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public migrateDefaultNAS()V
    .registers 5

    .line 1019
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1020
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1021
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1022
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->isProfileUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_a

    .line 1025
    :cond_2b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v1

    .line 1026
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "NotificationService"

    if-nez v1, :cond_47

    .line 1027
    const-string v1, "NAS Migration: user set to none, disable new NAS setting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    goto :goto_a

    .line 1031
    :cond_47
    const-string v1, "Reset NAS setting and migrate to new default"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 1034
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    goto :goto_a

    :cond_55
    return-void
.end method

.method public final notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 11647
    invoke-static {p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 11648
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    return v0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public notifyCallNotificationEventListenerOnPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 14971
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 14975
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 14977
    :try_start_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    .line 14978
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_26

    .line 14980
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_71

    .line 14983
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_57

    .line 14985
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14984
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    const/4 v2, -0x1

    .line 14987
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_6f

    .line 14992
    :cond_57
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 14993
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_5f

    .line 14996
    :cond_6f
    :goto_6f
    monitor-exit v0

    return-void

    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_10 .. :try_end_72} :catchall_24

    throw p0
.end method

.method public notifyCallNotificationEventListenerOnRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 15001
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 15005
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 15007
    :try_start_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    .line 15008
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_26

    .line 15010
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_71

    .line 15013
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_57

    .line 15015
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 15014
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    const/4 v2, -0x1

    .line 15017
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_6f

    .line 15022
    :cond_57
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 15023
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->broadcastToCallNotificationEventCallbacks(Landroid/os/RemoteCallbackList;Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_5f

    .line 15026
    :cond_6f
    :goto_6f
    monitor-exit v0

    return-void

    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_10 .. :try_end_72} :catchall_24

    throw p0
.end method

.method public final notifyListenersPostedAndLogLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .registers 7

    .line 13662
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->prepareNotifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)Ljava/util/List;

    move-result-object p2

    .line 13663
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13676
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->notifyCallNotificationEventListenerOnPosted(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 3483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(ILandroid/os/Looper;)V

    return-void
.end method

.method public onBootPhase(ILandroid/os/Looper;)V
    .registers 9

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_f

    .line 3490
    const-class p1, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 3491
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    return-void

    :cond_f
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_ae

    .line 3494
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 3495
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 3496
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 3497
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3498
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V

    .line 3500
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    .line 3501
    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 3503
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 3504
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 3506
    new-instance p2, Lcom/android/server/notification/ShortcutHelper;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p2, p0, v0, v2, p1}, Lcom/android/server/notification/ShortcutHelper;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V

    iput-object p2, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 3508
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class p1, Lcom/android/server/notification/BubbleExtractor;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/BubbleExtractor;

    if-eqz p0, :cond_8f

    .line 3510
    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V

    .line 3511
    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 3513
    :cond_8f
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->registerNotificationPreferencesPullers()V

    .line 3514
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez p0, :cond_a1

    .line 3515
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3517
    :cond_a1
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 3518
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->onSystemReady()V

    return-void

    :cond_ae
    move-object v1, p0

    const/16 p0, 0x258

    if-ne p1, p0, :cond_114

    .line 3522
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 3523
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3524
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 3525
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 3526
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryManager;->onBootPhaseAppsCanStart()V

    .line 3527
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->onBootPhaseAppsCanStart()V

    .line 3528
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->migrateDefaultNAS()V

    .line 3529
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->maybeShowInitialReviewPermissionsNotification()V

    .line 3531
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->hasDeviceEffectsApplier()Z

    move-result p0

    if-nez p0, :cond_ed

    .line 3533
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance p1, Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 3534
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;-><init>(Landroid/content/Context;)V

    .line 3533
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V

    .line 3536
    :cond_ed
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/high16 p1, 0x10000000

    .line 3537
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p0

    .line 3540
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f9
    :goto_f9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_148

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ModuleInfo;

    .line 3541
    invoke-virtual {p1}, Landroid/content/pm/ModuleInfo;->getApexModuleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.adservices"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 3542
    iput-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mAdservicesModuleInfo:Landroid/content/pm/ModuleInfo;

    goto :goto_f9

    :cond_114
    const/16 p0, 0x226

    if-ne p1, p0, :cond_122

    .line 3546
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostsForPersistedNotifications(J)V

    return-void

    :cond_122
    const/16 p0, 0x208

    if-ne p1, p0, :cond_13d

    .line 3548
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->updateFixedImportance(Ljava/util/List;)V

    .line 3549
    iget-object p0, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object p1, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->migrateNotificationPermissions(Ljava/util/List;)V

    return-void

    :cond_13d
    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_148

    .line 3551
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/NotificationBitmapJobService;->scheduleJob(Landroid/content/Context;)V

    :cond_148
    return-void
.end method

.method public final onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V
    .registers 14

    .line 8991
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 8992
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8994
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryManager;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)V

    .line 8995
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 8996
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object p3

    .line 8997
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_15
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 8998
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 8999
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x14

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 8998
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_15

    :cond_34
    move-object v1, p0

    .line 9002
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public onStart()V
    .registers 40

    move-object/from16 v1, p0

    .line 3112
    new-instance v11, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 3126
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "system"

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3127
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3129
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 3133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "NMS Broadcasts"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3135
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3140
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110223

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 3143
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDefaultUnsupportedAdjustments:[Ljava/lang/String;

    .line 3151
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v1, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 3152
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 3153
    invoke-virtual {v1, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3154
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 3155
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v14, v0

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 3156
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 3157
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v2, v9

    new-instance v9, Lcom/android/server/notification/ConditionProviders;

    .line 3158
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct {v9, v3, v4, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    move-object v5, v12

    new-instance v12, Lcom/android/server/notification/NotificationUsageStats;

    .line 3160
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object v3, v13

    new-instance v13, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v15, "notification_policy.xml"

    invoke-direct {v4, v6, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "notification-policy"

    invoke-direct {v13, v4, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 3164
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v15

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v16

    const-class v6, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3165
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3166
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v19, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3167
    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3168
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v20

    const-class v21, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 3169
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/uri/UriGrantsManagerInternal;

    move-object/from16 v22, v0

    .line 3170
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v23, v2

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3171
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v24, v0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v2, Lcom/android/server/notification/NotificationHistoryManager;

    move-object/from16 v25, v0

    .line 3172
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/android/server/notification/NotificationHistoryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 3173
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v26, v2

    const-string/jumbo v2, "stats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 3175
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 3176
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v27

    move-object/from16 v28, v0

    new-instance v0, Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v29, v2

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v30, v3

    .line 3177
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v31, v4

    .line 3178
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/PermissionHelper;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V

    .line 3179
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 3180
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    move-object/from16 v4, v31

    new-instance v31, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/notification/NotificationChannelLoggerImpl;-><init>()V

    .line 3181
    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-result-object v32

    .line 3182
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v33, v0

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 3183
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v34, v0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v6, v1}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    new-instance v36, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct/range {v36 .. v36}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    new-instance v38, Lcom/android/server/notification/NotificationListenerStats;

    invoke-direct/range {v38 .. v38}, Lcom/android/server/notification/NotificationListenerStats;-><init>()V

    move-object v1, v7

    move-object v7, v14

    move-object v14, v4

    move-object v4, v10

    const/4 v10, 0x0

    const/16 v37, 0x0

    move-object/from16 v35, v6

    move-object/from16 v6, v30

    move-object/from16 v30, v3

    move-object v3, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    .line 3151
    invoke-virtual/range {v0 .. v38}, Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/os/Handler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Landroid/permission/PermissionManager;Landroid/os/PowerManager;Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;Lcom/android/internal/logging/UiEventLogger;Lcom/android/server/bitmapoffload/BitmapOffloadInternal;Lcom/android/server/notification/NotificationListenerStats;)V

    move-object v1, v0

    .line 3187
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string/jumbo v4, "notification"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3189
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 3606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 3589
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 3590
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 3591
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(ILandroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 3593
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 3595
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 3596
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 3597
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    .line 3598
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    .line 3601
    :cond_33
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 3557
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postNotificationsWhenExitLockDownMode(I)V
    .registers 10

    .line 12157
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v1, :cond_33

    .line 12162
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 12163
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-eq v6, p1, :cond_21

    goto :goto_2e

    .line 12166
    :cond_21
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v7, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0, v5}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v5, 0x14

    add-long/2addr v2, v5

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :catchall_31
    move-exception p0

    goto :goto_35

    .line 12173
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_31

    throw p0
.end method

.method public final pullNotificationStates(ILjava/util/List;)I
    .registers 4

    const/16 v0, 0x2764

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x27f7

    if-eq p1, v0, :cond_28

    packed-switch p1, :pswitch_data_36

    goto :goto_33

    .line 3283
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V

    goto :goto_33

    .line 3280
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelPreferencesStats(Ljava/util/List;)V

    goto :goto_33

    .line 3271
    :pswitch_18
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3272
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 3273
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getDeniedKeysForUsersAndPackages()Ljava/util/Map;

    move-result-object p0

    .line 3271
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/notification/PreferencesHelper;->pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;Ljava/util/Map;)V

    goto :goto_33

    .line 3288
    :cond_28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->pullAdjustmentPreferencesStats(Ljava/util/List;)V

    goto :goto_33

    .line 3292
    :cond_2e
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->pullRules(Ljava/util/List;)V

    :goto_33
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_36
    .packed-switch 0x2757
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public readPolicyXml(Ljava/io/InputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V
    .registers 13

    if-eqz p2, :cond_10

    .line 1178
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1179
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1181
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1183
    :goto_14
    const-string/jumbo p1, "notification-policy"

    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2c

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isProfileUser(Landroid/content/pm/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_2c

    move p1, v2

    goto :goto_2d

    :cond_2c
    move p1, v1

    .line 1187
    :goto_2d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    move v4, v1

    .line 1188
    :cond_32
    :goto_32
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 1189
    const-string/jumbo v5, "zen"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1193
    :try_start_45
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1194
    invoke-virtual {v5, v0, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z

    move-result v5
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_4e

    xor-int/lit8 v6, v5, 0x1

    goto :goto_58

    :catch_4e
    move-exception v5

    .line 1200
    const-string v6, "NotificationService"

    const-string v7, "failed to read config"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v1

    move v6, v2

    :goto_58
    if-eqz p4, :cond_7b

    .line 1204
    const-string/jumbo v7, "notifications:zen_config"

    invoke-virtual {p4, v7, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V

    if-lez v6, :cond_7b

    .line 1206
    const-string/jumbo v5, "notifications:invalid_xml_parsing"

    invoke-virtual {p4, v7, v6, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7b

    .line 1211
    :cond_69
    const-string/jumbo v5, "ranking"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1212
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZI)V

    .line 1214
    :cond_7b
    :goto_7b
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    if-eqz p1, :cond_90

    goto :goto_32

    .line 1218
    :cond_90
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    :goto_97
    move v4, v2

    goto :goto_ea

    .line 1220
    :cond_99
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    if-eqz p1, :cond_ae

    goto :goto_32

    .line 1224
    :cond_ae
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_97

    .line 1226
    :cond_b6
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    if-eqz p1, :cond_cc

    goto/16 :goto_32

    .line 1230
    :cond_cc
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v4, v0, v5, p2, p3}, Lcom/android/server/notification/ManagedServices;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    goto :goto_97

    .line 1233
    :cond_d4
    const-string/jumbo v5, "snoozed-notifications"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 1234
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;J)V

    .line 1236
    :cond_ea
    :goto_ea
    const-string v5, "allow-secure-notifications-on-lockscreen"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    if-eqz p2, :cond_fc

    if-eqz p3, :cond_fc

    goto/16 :goto_32

    :cond_fc
    const/4 v5, 0x0

    .line 1240
    const-string/jumbo v6, "value"

    invoke-interface {v0, v5, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 1243
    :cond_106
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/notification/NotificationListenerStats;->isXmlTag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1244
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationListenerStats;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto/16 :goto_32

    :cond_117
    if-nez v4, :cond_12b

    .line 1249
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1250
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1251
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices;->migrateToXml()V

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 1255
    :cond_12b
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 1256
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    return-void
.end method

.method public reclassifyNotification(Ljava/lang/String;)V
    .registers 4

    .line 2035
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2036
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-nez p1, :cond_11

    .line 2038
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_17

    :cond_11
    const/4 v1, 0x1

    .line 2040
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->reclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 2041
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_f

    throw p0
.end method

.method public final reclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 13

    .line 2084
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_1b

    .line 2085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reclassifyNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_1b
    sget-object v2, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2088
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2090
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getBundleType()I

    move-result v3

    if-eqz v3, :cond_60

    if-nez v2, :cond_60

    .line 2091
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2092
    const-string v0, "key_type"

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getBundleType()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2093
    new-instance v4, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "reclassify"

    .line 2094
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 2095
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustmentLocked(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V

    .line 2096
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void

    :cond_60
    if-eqz v0, :cond_76

    .line 2099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t reclassify. No valid bundle type or already bundled: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void
.end method

.method public final recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 11084
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11085
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    :cond_d
    return-void
.end method

.method public final registerNotificationPreferencesPullers()V
    .registers 6

    .line 3193
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    .line 3194
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v4, 0x2757

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3200
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2758

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3206
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2759

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3212
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x2764

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 3218
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x27f7

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeAppProvidedSummaryOnClassificationLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 16

    .line 7909
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_ba

    if-nez p2, :cond_f

    goto/16 :goto_ba

    .line 7914
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupChild()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 7915
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    if-eqz v12, :cond_ba

    .line 7917
    invoke-static {v12}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_ba

    .line 7919
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7920
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    .line 7919
    invoke-virtual {p0, v4, p2, v5}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 7925
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_60

    .line 7926
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5f

    .line 7927
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 7928
    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_60

    :cond_5f
    return-object v3

    .line 7930
    :cond_60
    :goto_60
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_7a

    .line 7931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing app summary (all children bundled): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NotificationService"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7934
    :cond_7a
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->convertSummaryToNotificationLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 7935
    iput-boolean v6, v12, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 7937
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 7939
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7940
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 7941
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    .line 7942
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 7938
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-object v12

    :cond_ba
    :goto_ba
    return-object v3
.end method

.method public removeAppSummaryLocked(Ljava/lang/String;)V
    .registers 15

    .line 7890
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_b

    goto :goto_42

    .line 7894
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->convertSummaryToNotificationLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/4 p1, 0x1

    .line 7895
    iput-boolean p1, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 7896
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7898
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 7899
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 7896
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4

    .line 7844
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    if-nez v0, :cond_21

    .line 7846
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove autogroup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7849
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    .line 7850
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 7851
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 7852
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    :cond_37
    return-void
.end method

.method public final removeBitmapAndRepost(Lcom/android/server/notification/NotificationRecord;)V
    .registers 15

    .line 8606
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isBigPictureWithBitmapOrIcon(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 8611
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8612
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.pictureIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8615
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 8619
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8620
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    sget v5, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 8621
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 8622
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 8623
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    .line 8619
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZZ)V

    return-void
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3788
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public final removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 8

    .line 3794
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_29

    .line 3795
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3796
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz p2, :cond_1f

    and-int v4, v2, p2

    if-ne v4, v2, :cond_26

    .line 3799
    :cond_1f
    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_29
    return v1
.end method

.method public final removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    .line 11277
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 11279
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11280
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 11283
    :goto_21
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 11285
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    return v0
.end method

.method public final removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return v0

    .line 9387
    :cond_4
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()J

    move-result-wide v1

    .line 9388
    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    int-to-long v3, p4

    cmp-long p4, v1, v3

    const-string v3, " id: "

    const-string v4, " tag: "

    const-string v5, "NotificationService"

    if-lez p4, :cond_41

    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    int-to-long v6, p4

    cmp-long p4, v1, v6

    if-gez p4, :cond_41

    .line 9390
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews too large on pkg: "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " this might be stripped in a future release"

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9393
    :cond_41
    iget p4, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    int-to-long v6, p4

    cmp-long p4, v1, v6

    if-ltz p4, :cond_77

    .line 9394
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerImageRemoved(Ljava/lang/String;)V

    .line 9395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Removed too large RemoteViews ("

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " bytes) on pkg: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_77
    return v0
.end method

.method public final reportCompatRateLimitingToastsChange(I)V
    .registers 6

    .line 10801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10803
    :try_start_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v2, 0xa6bdb34

    invoke-interface {p0, v2, v3, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 10808
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    goto :goto_1e

    :catch_12
    move-exception p0

    .line 10805
    :try_start_13
    const-string p1, "NotificationService"

    const-string v2, "Unexpected exception while reporting toast was blocked due to rate limiting"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    .line 10808
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10809
    throw p0
.end method

.method public reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 14

    .line 4004
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 3893
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3894
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3895
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result p0

    const/16 p1, 0xa

    .line 3894
    invoke-virtual {v0, v1, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    :cond_21
    return-void
.end method

.method public reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 4094
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4095
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    const/4 v3, 0x7

    .line 4094
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 4099
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public resetAssistantUserSet(I)V
    .registers 4

    .line 15311
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 15312
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 15313
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public resetDefaultDndIfNecessary()V
    .registers 5

    .line 1262
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 1263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1264
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1265
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->isDNDMigrationDone(I)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_b

    .line 1268
    :cond_26
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/ConditionProviders;->removeDefaultFromConfig(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1269
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->resetDefaultFromConfig()V

    .line 1270
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackages(I)V

    goto :goto_b

    :cond_36
    if-eqz v1, :cond_3b

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_3b
    return-void
.end method

.method public resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p4, v0, :cond_7

    .line 9470
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 9473
    :cond_7
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 9474
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 9475
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    return p3

    .line 9479
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 9482
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 9483
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_5e

    .line 9488
    :cond_2f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot post for pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    return v0
.end method

.method public final revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16

    if-eqz p2, :cond_2e

    .line 11567
    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2e

    .line 11568
    :cond_f
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 11570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 11572
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 11574
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move-object v6, p4

    move v7, p5

    .line 11572
    invoke-interface/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_28

    .line 11578
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11579
    throw p0

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V
    .registers 7

    .line 10847
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10848
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10849
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/16 v2, 0xdac

    goto :goto_18

    :cond_16
    const/16 v2, 0x7d0

    .line 10853
    :goto_18
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    if-eqz p2, :cond_22

    add-int/lit16 v1, v1, 0xfa

    .line 10859
    :cond_22
    instance-of p1, p1, Lcom/android/server/notification/toast/TextToastRecord;

    if-eqz p1, :cond_28

    add-int/lit16 v1, v1, 0x14d

    .line 10863
    :cond_28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleInterruptionFilterChanged(I)V
    .registers 4

    .line 11118
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11119
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 11122
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 4

    .line 10880
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10881
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10882
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v0, 0x2af8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleListenerHintsChanged(I)V
    .registers 4

    .line 11113
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11114
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V
    .registers 6

    .line 3570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V
    .registers 12

    .line 3440
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v0

    .line 3442
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_5e

    aget v4, v0, v3

    .line 3443
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 3444
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/String;

    .line 3445
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 3450
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 3451
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 3452
    new-array v7, v2, [Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3457
    array-length v6, v4

    move v7, v2

    :goto_42
    if-ge v7, v6, :cond_5b

    aget-object v8, v4, v7

    .line 3458
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x4000000

    .line 3459
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 3460
    invoke-virtual {v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_5e
    return-void
.end method

.method public final sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 3

    .line 3417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendZenBroadcastWithDelay(Landroid/content/Intent;)V
    .registers 5

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zen_broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3434
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mBroadcastsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 3435
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mBroadcastsHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->ZEN_BROADCAST_DELAY:Ljava/time/Duration;

    .line 3436
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    .line 3435
    invoke-virtual {v1, v2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public setAttentionHelper(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    .line 2759
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    return-void
.end method

.method public setDNDMigrationDone(I)V
    .registers 4

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dnd_settings_migrated"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setDefaultAssistantForUser(I)V
    .registers 5

    .line 1065
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    const/4 v1, 0x0

    .line 1068
    :goto_7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1069
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1070
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2

    .line 2741
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-void
.end method

.method public setIsTelevision(Z)V
    .registers 2

    .line 2764
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    .line 2672
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public setNASMigrationDone(I)V
    .registers 8

    .line 1041
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    array-length v0, p1

    :goto_8
    if-ge v1, v0, :cond_1e

    aget v2, p1, v1

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nas_settings_updated"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    .registers 12

    .line 7679
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_96

    .line 7681
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 7682
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 7683
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7684
    invoke-virtual {v0, v3}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 7683
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez p1, :cond_2f

    if-eqz v0, :cond_c

    .line 7687
    invoke-virtual {p0, v0, v3, v1, p4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    goto :goto_c

    :cond_2f
    if-eqz p3, :cond_38

    .line 7692
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_c

    :cond_38
    if-eqz p3, :cond_54

    .line 7696
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7697
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 7696
    invoke-interface {v0, v2, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_54

    :cond_51
    move v5, p3

    move v6, p4

    goto :goto_92

    .line 7698
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    .line 7700
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    .line 7704
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setNasUnsupportedDefaults(I)V

    .line 7707
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7709
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/high16 v0, 0x40000000    # 2.0f

    .line 7710
    invoke-virtual {p4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p4

    .line 7711
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 7707
    invoke-virtual {p3, p4, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 7713
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :goto_92
    move p3, v5

    move p4, v6

    goto/16 :goto_c

    :cond_96
    return-void
.end method

.method public setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2

    .line 2750
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method public setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2

    .line 2746
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2

    .line 2682
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-void
.end method

.method public setStrongAuthTracker(Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;)V
    .registers 2

    .line 2667
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    return-void
.end method

.method public setTelecomManager(Landroid/telecom/TelecomManager;)V
    .registers 2

    .line 2769
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public setTestHarnessExempted(Z)V
    .registers 2

    .line 3413
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->setTestHarnessExempted(Z)V

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 2754
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method public final shouldOffloadBitmap(Landroid/app/Notification;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showNextToastLocked(Z)V
    .registers 11

    .line 10735
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-eqz v0, :cond_6

    goto/16 :goto_88

    .line 10739
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    :goto_f
    if-eqz v0, :cond_88

    .line 10741
    iget v2, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 10742
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    iget v4, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 10743
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 10744
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v6, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 10745
    const-string/jumbo v7, "toast_quota_tag"

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3e

    iget-object v5, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 10746
    invoke-virtual {p0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->isExemptFromRateLimiting(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_3e

    :cond_3c
    move v5, v1

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v5, v6

    .line 10747
    :goto_3f
    iget v8, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, v8}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result v8

    .line 10749
    invoke-virtual {p0, v0, v4, v5, v8}, Lcom/android/server/notification/NotificationManagerService;->tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 10751
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V

    .line 10752
    iput-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-nez v3, :cond_88

    if-nez v8, :cond_88

    .line 10754
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object p1, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10759
    :cond_5c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_75

    .line 10761
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 10762
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v0, v0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v2, v3, v6, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 10765
    :cond_75
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_86

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    goto :goto_f

    :cond_86
    const/4 v0, 0x0

    goto :goto_f

    :cond_88
    :goto_88
    return-void
.end method

.method public snoozeNotificationInt(ILandroid/service/notification/INotificationListener;Ljava/lang/String;JLjava/lang/String;)V
    .registers 20

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    .line 11803
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 11804
    :try_start_7
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p2

    if-nez p2, :cond_14

    .line 11806
    monitor-exit v6

    return-void

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    .line 11808
    :cond_14
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 11809
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v1, p4, v3

    if-gtz v1, :cond_28

    if-eqz v5, :cond_2a

    :cond_28
    if-nez v2, :cond_2c

    .line 11811
    :cond_2a
    monitor-exit v6

    return-void

    .line 11814
    :cond_2c
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-nez v1, :cond_34

    .line 11816
    monitor-exit v6

    return-void

    .line 11818
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p2

    if-nez p2, :cond_44

    .line 11819
    monitor-exit v6

    return-void

    .line 11821
    :cond_44
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUpdateTimeMs()J

    move-result-wide v7

    .line 11823
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_60

    .line 11824
    const-string p2, "NotificationService"

    const-string/jumbo v1, "snooze event(%s, %d, %s, %s)"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11828
    :cond_60
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v1, p0

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11829
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_11

    .line 11831
    invoke-virtual {p0, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->isNotificationRecent(J)Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 11832
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v8, 0x8e

    move v9, p1

    invoke-virtual/range {v7 .. v12}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return-void

    .line 11829
    :goto_7f
    :try_start_7f
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_11

    throw p0
.end method

.method public final tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z
    .registers 8

    const/4 v0, 0x0

    .line 10772
    const-string v1, "NotificationService"

    if-eqz p2, :cond_2d

    if-nez p3, :cond_2d

    if-nez p4, :cond_2d

    .line 10773
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->reportCompatRateLimitingToastsChange(I)V

    .line 10774
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is above allowed toast quota, the following toast was blocked and discarded: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10778
    :cond_2d
    iget p2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-boolean p3, p1, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->isAppRendered()Z

    move-result v2

    invoke-virtual {p0, p2, p3, v2, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 10780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blocking custom toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to package not in the foreground at the time of showing the toast"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 10784
    :cond_57
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->show()Z

    move-result p0

    return p0
.end method

.method public unclassifyNotification(Ljava/lang/String;)V
    .registers 4

    .line 2021
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2022
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    if-nez p1, :cond_11

    .line 2024
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_17

    :cond_11
    const/4 v1, 0x1

    .line 2026
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->unclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 2027
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_f

    throw p0
.end method

.method public final unclassifyNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 12

    .line 2047
    sget-boolean p2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p2, :cond_1b

    .line 2048
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unclassifyNotification: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p2

    .line 2053
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2054
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2053
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2055
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2056
    sget-object v2, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_85

    .line 2057
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_85

    if-eqz v2, :cond_85

    .line 2058
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2059
    const-string p2, "key_unclassify"

    invoke-virtual {v6, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2060
    new-instance v3, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 2061
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    const-string/jumbo v7, "unclassify"

    invoke-direct/range {v3 .. v8}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 2062
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 2063
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 2064
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isOriginalGroupSummaryPresent(Lcom/android/server/notification/NotificationRecord;Landroid/util/ArrayMap;)Z

    move-result p2

    .line 2063
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->setHadGroupSummaryWhenUnclassified(Z)V

    .line 2065
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    :cond_85
    return-void
.end method

.method public final unhideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 10

    .line 12123
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12124
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 12125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12127
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_58

    .line 12129
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 12130
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 12131
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 12132
    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 12133
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_5f

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 12137
    :cond_58
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 12138
    monitor-exit v0

    return-void

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_53

    throw p0
.end method

.method public final unsnoozeAll()V
    .registers 4

    .line 9865
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9866
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/SnoozeHelper;->repostAll(Landroid/util/IntArray;)V

    .line 9867
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9868
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 5

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 11838
    :cond_4
    iget-object p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    .line 11839
    :goto_a
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1e

    .line 11840
    const-string/jumbo v0, "unsnooze event(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11842
    :cond_1e
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    .line 11843
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public final unsummarizeNotificationLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 9

    .line 2072
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2073
    const-string p2, "key_summarization"

    const/4 v0, 0x0

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    new-instance v0, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 2075
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 2076
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 2077
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method

.method public updateAutobundledSummaryLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;Z)V
    .registers 14

    .line 1089
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_10

    goto/16 :goto_a9

    .line 1100
    :cond_10
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1a

    goto/16 :goto_a9

    .line 1104
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-nez v3, :cond_27

    goto/16 :goto_a9

    .line 1109
    :cond_27
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    .line 1110
    iget v0, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    goto :goto_38

    :cond_37
    move v0, p3

    .line 1112
    :goto_38
    iget-object v1, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 1113
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7d

    iget v1, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 1114
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    if-ne v1, v5, :cond_7d

    iget v1, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 1115
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->visibility:I

    if-ne v1, v5, :cond_7d

    iget v1, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 1117
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v5

    if-eq v1, v5, :cond_7b

    goto :goto_7d

    :cond_7b
    move v1, v4

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v1, v2

    :goto_7e
    const/high16 v5, 0x20000

    or-int/2addr v0, v5

    .line 1121
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 1122
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 1123
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    iget-object v7, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 1122
    invoke-virtual {v5, p2, v6, v7, v4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_a3

    .line 1125
    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_a4

    :cond_a3
    move v2, v1

    :goto_a4
    if-ne p3, v0, :cond_aa

    if-eqz v2, :cond_a9

    goto :goto_aa

    :cond_a9
    :goto_a9
    return-void

    .line 1132
    :cond_aa
    :goto_aa
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iput v0, p2, Landroid/app/Notification;->flags:I

    .line 1133
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p3}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 1134
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iput p3, p2, Landroid/app/Notification;->color:I

    .line 1135
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iput p3, p2, Landroid/app/Notification;->visibility:I

    .line 1136
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget p3, p4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 1137
    invoke-virtual {p2, p3}, Landroid/app/Notification;->setGroupAlertBehavior(I)V

    .line 1138
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    const/4 p4, 0x0

    .line 1139
    invoke-interface {p3, p4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 1138
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateEffectsSuppressorLocked()V
    .registers 8

    .line 3627
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v3

    .line 3628
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_f

    goto :goto_31

    .line 3631
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 3632
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;JJ)V

    .line 3634
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 3637
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3638
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 3639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->sendZenBroadcastWithDelay(Landroid/content/Intent;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final updateInterruptionFilterLocked()V
    .registers 3

    .line 3864
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 3865
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 3866
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 3867
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    return-void
.end method

.method public final updateListenerHintsLocked()V
    .registers 4

    .line 3618
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 3619
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 3620
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 3621
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 3622
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    return-void
.end method

.method public final updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    .line 9406
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 9407
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_25

    :cond_b
    if-nez p2, :cond_16

    .line 9414
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    .line 9416
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 9418
    :cond_16
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isBubbleSuppressable()Z

    move-result p1

    if-nez p1, :cond_25

    .line 9420
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x9

    .line 9422
    invoke-virtual {p0, p1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 19

    move/from16 v9, p2

    .line 3656
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_49

    .line 3658
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3659
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 3658
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 3661
    invoke-virtual {p0, v9}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3662
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v11

    .line 3663
    invoke-virtual {v11}, Landroid/util/IntArray;->size()I

    move-result v12

    move v13, v10

    :goto_2f
    if-ge v13, v12, :cond_49

    .line 3665
    invoke-virtual {v11, v13}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 3666
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v8, 0x11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2f

    .line 3672
    :cond_49
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3673
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v0, p1, v9, v1, v8}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v11

    .line 3675
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v6

    const/4 v4, 0x1

    move-object v1, p1

    move-object/from16 v3, p3

    move v2, v9

    .line 3675
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V

    move-object v0, v3

    .line 3677
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 3678
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3679
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eqz v5, :cond_7d

    move v5, v8

    goto :goto_7e

    :cond_7d
    move v5, v10

    .line 3678
    :goto_7e
    invoke-virtual {v1, p1, v4, v5, v8}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 3681
    :cond_81
    invoke-virtual {p0, p1, v2, v11, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    if-nez p4, :cond_9a

    .line 3684
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3685
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3684
    invoke-virtual {v1, p1, v2, v4, v10}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 3686
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 3687
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x2

    .line 3686
    invoke-virtual {v4, p1, v5, v1, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 3692
    :cond_9a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3705
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 11462
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V

    return-void
.end method

.method public updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    .registers 19

    if-eqz p1, :cond_7

    .line 11469
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 11470
    :goto_b
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v2, "NotificationService"

    if-eqz v1, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": updating permissions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    .line 11472
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v4

    goto :goto_2e

    :cond_2d
    move-object v4, v3

    :goto_2e
    if-eqz p2, :cond_35

    .line 11473
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_36

    :cond_35
    move-object v5, v3

    :goto_36
    if-nez v4, :cond_3c

    if-nez v5, :cond_3c

    goto/16 :goto_12e

    :cond_3c
    if-eqz p1, :cond_41

    .line 11483
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    goto :goto_42

    :cond_41
    move-object v6, v3

    :goto_42
    if-eqz p2, :cond_48

    if-nez v6, :cond_48

    .line 11486
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_48
    if-eqz v4, :cond_79

    if-nez v6, :cond_79

    if-eqz v1, :cond_62

    .line 11491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": creating owner"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11492
    :cond_62
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOTIF:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    :cond_79
    if-nez v4, :cond_8c

    if-eqz v6, :cond_8c

    if-nez p5, :cond_8c

    .line 11499
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    move-object v8, v3

    goto :goto_8d

    :cond_8c
    move-object v8, v6

    :goto_8d
    const/4 v1, 0x0

    if-eqz v4, :cond_d2

    if-eqz v8, :cond_d2

    move v3, v1

    .line 11505
    :goto_93
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_d2

    .line 11506
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/net/Uri;

    if-eqz v5, :cond_a8

    .line 11507
    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cf

    .line 11508
    :cond_a8
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_c3

    .line 11509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": granting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11511
    :cond_c3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v10

    move-object v7, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_d2
    if-eqz v5, :cond_12a

    if-eqz v8, :cond_12a

    .line 11519
    :goto_d6
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_12a

    .line 11520
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/net/Uri;

    if-eqz v4, :cond_eb

    .line 11521
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_127

    .line 11522
    :cond_eb
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_106

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": revoking "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    if-eqz p5, :cond_119

    .line 11527
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v7, p0

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 11526
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    goto :goto_127

    .line 11534
    :cond_119
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v7, p0

    .line 11533
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_127
    :goto_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_12a
    if-eqz p1, :cond_12e

    .line 11542
    iput-object v8, p1, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    :cond_12e
    :goto_12e
    return-void
.end method

.method public final wasSummaryAutogrouped(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p2, :cond_3e

    .line 10642
    iget v0, p2, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, p0

    .line 10643
    :goto_d
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_21

    .line 10644
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_21

    move p2, v1

    goto :goto_22

    :cond_21
    move p2, p0

    .line 10645
    :goto_22
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_34

    .line 10646
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_34

    move p1, v1

    goto :goto_35

    :cond_34
    move p1, p0

    :goto_35
    if-eqz v0, :cond_39

    if-nez p2, :cond_3d

    :cond_39
    if-eqz p2, :cond_3e

    if-eqz p1, :cond_3e

    :cond_3d
    return v1

    :cond_3e
    return p0
.end method

.method public writePolicyXml(Ljava/io/OutputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V
    .registers 12

    if-eqz p2, :cond_11

    .line 1349
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 1350
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_f
    move-object v2, v0

    goto :goto_16

    .line 1352
    :cond_11
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    goto :goto_f

    .line 1354
    :goto_16
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1355
    const-string/jumbo p1, "notification-policy"

    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1356
    const-string/jumbo v1, "version"

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v4, 0x0

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZLjava/lang/Integer;ILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 1358
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1359
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1360
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 1361
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p2, v2}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1362
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p2, v2, v3, v5}, Lcom/android/server/notification/ManagedServices;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    if-eqz v3, :cond_4f

    if-nez v5, :cond_52

    .line 1364
    :cond_4f
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_52
    if-nez v3, :cond_59

    .line 1367
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationListenerStats:Lcom/android/server/notification/NotificationListenerStats;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationListenerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1369
    :cond_59
    invoke-interface {v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1370
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public final writeSecureNotificationsPolicy(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5

    const/4 v0, 0x0

    .line 15346
    const-string v1, "allow-secure-notifications-on-lockscreen"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15347
    const-string/jumbo v2, "value"

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 15349
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
