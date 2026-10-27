.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$RoleObserver;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;,
        Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final ALLOWLIST_TOKEN:Landroid/os/IBinder;

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CHANGE_BACKGROUND_CUSTOM_TOAST_BLOCK:J = 0x7aa7659L

.field public static DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0xc8L

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field static final INVALID_UID:I = -0x1

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG:Ljava/lang/String; = "allow-secure-notifications-on-lockscreen"

.field private static final LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE:Ljava/lang/String; = "value"

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MAX_PACKAGE_TOASTS:I = 0x5

.field static final MESSAGE_DURATION_REACHED:I = 0x2

.field static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field static final MESSAGE_ON_PACKAGE_CHANGED:I = 0x8

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

.field private static final NOTIFICATION_CANCELLATION_REASONS:J = 0xa732a34L

.field private static final NOTIFICATION_INSTANCE_ID_MAX:I = 0x2000

.field private static final NOTIFICATION_LOG_ASSISTANT_CANCEL:J = 0xba84d90L

.field private static final NOTIFICATION_TRAMPOLINE_BLOCK:J = 0x9fe8a20L

.field private static final NOTIFICATION_TRAMPOLINE_BLOCK_FOR_EXEMPT_ROLES:J = 0xd933952L

.field private static final RATE_LIMIT_TOASTS:J = 0xa6bdb34L

.field public static final REPORT_REMOTE_VIEWS:I = 0x1

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field static final REVIEW_NOTIF_ACTION_CANCELED:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_CANCELED"

.field static final REVIEW_NOTIF_ACTION_DISMISS:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_DISMISS"

.field static final REVIEW_NOTIF_ACTION_REMIND:Ljava/lang/String; = "REVIEW_NOTIF_ACTION_REMIND"

.field static final REVIEW_NOTIF_STATE_DISMISSED:I = 0x2

.field static final REVIEW_NOTIF_STATE_RESHOWN:I = 0x3

.field static final REVIEW_NOTIF_STATE_SHOULD_SHOW:I = 0x0

.field static final REVIEW_NOTIF_STATE_UNKNOWN:I = -0x1

.field static final REVIEW_NOTIF_STATE_USER_INTERACTED:I = 0x1

.field static final ROOT_PKG:Ljava/lang/String; = "root"

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field public static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final TOAST_QUOTA_TAG:Ljava/lang/String; = "toast_quota_tag"

.field private static final TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAllowFgsDismissal:Z

.field private mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/IActivityManager;

.field private mAmi:Landroid/app/ActivityManagerInternal;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field private mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field private mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAutoGroupAtCount:I

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mDeviceIdleManager:Landroid/os/DeviceIdleManager;

.field private mDisableNotificationEffects:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field mHasLight:Z

.field private mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field protected mInCallStateOffHook:Z

.field final mInlineReplyRecordsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/InlineReplyUriRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsAutomotive:Z

.field private mIsCurrentToastShown:Z

.field private mIsTelevision:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastOverRateLogTime:J

.field mLightEnabled:Z

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLockScreenAllowSecureNotifications:Z

.field private mMaxPackageEnqueueRate:F

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMsgPkgsAllowedAsConvos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationEffectsEnabledForAutomotive:Z

.field private mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field private mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLock:Ljava/lang/Object;

.field mNotificationPulseEnabled:Z

.field private mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

.field private final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field private mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

.field protected mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

.field private volatile mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

.field private final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field mScreenOn:Z

.field final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field private mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field protected mShowReviewPermissionsNotification:Z

.field protected mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field private mSoundNotificationKey:Ljava/lang/String;

.field private mStatsManager:Landroid/app/StatsManager;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mStripRemoteViewsSizeBytes:I

.field private mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/toast/ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field private final mToastRateLimitingDisabledUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUgm:Landroid/app/IUriGrantsManager;

.field private mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mUiHandler:Landroid/os/Handler;

.field private mUm:Landroid/os/UserManager;

.field public mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field private mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field private mWarnRemoteViewsSizeBytes:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCurrentToastShown(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationInstanceIdSequence(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/LogicalLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationRecordLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyFile(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxPackageEnqueueRate(Lcom/android/server/notification/NotificationManagerService;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyAdjustment(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationsWhenEnterLockDownMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearLightsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyPermissionOwner(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableNotificationEffects(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitIdle(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindInCurrentAndSnoozedNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/notification/NotificationManagerService;->getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgrantUriPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDurationReached(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGroupedNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleKillTokenTimeout(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleListenerHintsChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleListenerInterruptionFilterChanged(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRankingReconsideration(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendRankingUpdate(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasAutoGroupSummaryLocked(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCallerIsSystemOrSysemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerIsSystemOrSysemUiOrShell()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCritical(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInteractionVisibleToListener(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeRankingUpdateLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConversationRemovedInternal(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->postNotificationsWhenExitLockDownMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpullNotificationStates(Lcom/android/server/notification/NotificationManagerService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->pullNotificationStates(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRegisteredOnlyBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationBubbleFlags(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationPulse(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwritePolicyXml(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_NOTIFICATION_TIMEOUT()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetALLOWLIST_TOKEN()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetMY_PID()I
    .registers 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetMY_UID()I
    .registers 1

    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smcallStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 356
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 357
    nop

    .line 358
    const-string v0, "debug.child_notifs"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 363
    const-string v0, "debug.notification.interruptiveness"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 396
    const-string v0, "key_contextual_actions"

    const-string v4, "key_text_replies"

    const-string v5, "key_not_conversation"

    const-string v6, "key_importance"

    const-string v7, "key_ranking_score"

    filled-new-array {v0, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 404
    const-string v0, "android.app.role.DIALER"

    const-string v4, "android.app.role.EMERGENCY"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    .line 417
    new-array v0, v1, [Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    .line 418
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    aput-object v1, v0, v3

    .line 419
    const-wide/16 v3, 0x2a

    invoke-static {v3, v4}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    aput-object v1, v0, v2

    .line 420
    const-wide/16 v1, 0x44

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 446
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 648
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 649
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 650
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2057
    new-instance v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;-><init>()V

    new-instance v1, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V

    .line 2060
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/NotificationRecordLogger;Lcom/android/internal/logging/InstanceIdSequence;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationRecordLogger"    # Lcom/android/server/notification/NotificationRecordLogger;
    .param p3, "notificationInstanceIdSequence"    # Lcom/android/internal/logging/InstanceIdSequence;

    .line 2066
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 546
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 549
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 565
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 569
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 572
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 573
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    .line 579
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 582
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 583
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 585
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 587
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 589
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 591
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 595
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    .line 597
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 600
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 609
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 638
    new-instance v3, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 645
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    .line 646
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    .line 653
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 674
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 677
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 1130
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1653
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1665
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1685
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1708
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1836
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3316
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 6495
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 7003
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    .line 2067
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 2068
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2069
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    sput-object v0, Landroid/app/Notification;->processAllowlistToken:Landroid/os/IBinder;

    .line 2070
    return-void
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "overrideGroupKey"    # Ljava/lang/String;

    .line 6075
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6076
    .local v0, "signals":Landroid/os/Bundle;
    const-string v1, "key_group_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6077
    new-instance v7, Landroid/service/notification/Adjustment;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 6078
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    const-string v5, ""

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 6079
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 6080
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .line 3025
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 3026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3029
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 3030
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3031
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 3011
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 3012
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3015
    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    .line 3016
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3019
    :cond_10
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_18

    .line 3020
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3022
    :cond_18
    return-void
.end method

.method private allowAssistant(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "candidate"    # Landroid/content/ComponentName;

    .line 977
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 978
    const/4 v1, 0x0

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    .line 981
    .local v0, "validAssistants":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    if-eqz p2, :cond_17

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 982
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    .line 983
    return v2

    .line 985
    :cond_17
    return v1
.end method

.method private allowDndPackage(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 960
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, p1, v1}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 963
    goto :goto_d

    .line 961
    :catch_9
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 964
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method private allowMiuiDefaultApprovedServices()V
    .registers 13

    .line 827
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/notification/NotificationManagerServiceStub;->getMiuiDefaultListerWithVersion()Landroid/util/Pair;

    move-result-object v0

    .line 828
    .local v0, "listenerWithVersion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v2, "NotificationService"

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowDefaultApprovedServices: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " second "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_34
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3f

    return-void

    .line 831
    :cond_3f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getMiuiVersion()I

    move-result v1

    .line 832
    .local v1, "miuiVersion":I
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowDefaultApprovedServices: miuiVersion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_5f
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_6a

    return-void

    .line 835
    :cond_6a
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 836
    .local v2, "defaultListenerAccess":Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 837
    .local v3, "defaultListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_c0

    .line 838
    nop

    .line 839
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, "listeners":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7e
    array-length v7, v5

    if-ge v6, v7, :cond_b3

    .line 841
    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 842
    goto :goto_b0

    .line 844
    :cond_8a
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    aget-object v8, v5, v6

    const/high16 v9, 0xc0000

    .line 845
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v7

    .line 848
    .local v7, "approvedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_95
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_b0

    .line 849
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 850
    .local v9, "cn":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 848
    .end local v9    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 840
    .end local v7    # "approvedListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v8    # "k":I
    :cond_b0
    :goto_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 854
    .end local v6    # "i":I
    :cond_b3
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setMiuiVersion(I)V

    .line 857
    .end local v5    # "listeners":[Ljava/lang/String;
    :cond_c0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_d3

    .line 858
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 859
    .local v6, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v4, v6}, Lcom/android/server/notification/NotificationManagerService;->allowNotificationListener(ILandroid/content/ComponentName;)V

    .line 857
    .end local v6    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c1

    .line 861
    .end local v5    # "i":I
    :cond_d3
    return-void
.end method

.method private allowNotificationListener(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, p1, v1, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 973
    goto :goto_d

    .line 971
    :catch_9
    move-exception v0

    .line 972
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 974
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 6028
    if-nez p1, :cond_3

    .line 6029
    return-void

    .line 6031
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 6032
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    .line 6033
    .local v0, "adjustments":Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 6034
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6035
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6036
    .local v3, "potentialKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 6037
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6039
    .end local v3    # "potentialKey":Ljava/lang/String;
    :cond_35
    goto :goto_1e

    .line 6040
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6041
    .local v3, "removeKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6042
    .end local v3    # "removeKey":Ljava/lang/String;
    goto :goto_3a

    .line 6043
    :cond_4a
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 6045
    .end local v0    # "adjustments":Landroid/os/Bundle;
    .end local v1    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4d
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8985
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 8986
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 8988
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 8987
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    .line 8990
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 8992
    :goto_1f
    return-void
.end method

.method private areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 7260
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    return v0
.end method

.method private blockToast(IZZZ)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "isSystemToast"    # Z
    .param p3, "isAppRenderedToast"    # Z
    .param p4, "isPackageInForeground"    # Z

    .line 8779
    if-eqz p3, :cond_11

    if-nez p2, :cond_11

    if-nez p4, :cond_11

    const-wide/32 v0, 0x7aa7659

    .line 8782
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 8779
    :goto_12
    return v0
.end method

.method private calculateHints()I
    .registers 6

    .line 3034
    const/4 v0, 0x0

    .line 3035
    .local v0, "hints":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 3036
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3037
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3039
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 3040
    or-int/2addr v0, v2

    .line 3035
    .end local v2    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3044
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method private calculateSuppressedEffects()J
    .registers 6

    .line 3048
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 3049
    .local v0, "hints":I
    const-wide/16 v1, 0x0

    .line 3051
    .local v1, "suppressedEffects":J
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_d

    .line 3052
    const-wide/16 v3, 0x3

    or-long/2addr v1, v3

    .line 3055
    :cond_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_14

    .line 3056
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 3059
    :cond_14
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1b

    .line 3060
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 3063
    :cond_1b
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 10199
    packed-switch p0, :pswitch_data_20

    .line 10203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10202
    :pswitch_17
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 10201
    :pswitch_1a
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 10200
    :pswitch_1d
    const-string v0, "CALL_STATE_IDLE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V
    .registers 34
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"    # Z
    .param p6, "channelId"    # Ljava/lang/String;
    .param p7, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"    # Z
    .param p9, "userId"    # I
    .param p10, "sendDelete"    # Z
    .param p11, "reason"    # I
    .param p12, "listenerName"    # Ljava/lang/String;
    .param p13, "wasPosted"    # Z
    .param p14, "cancellationElapsedTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    .line 9596
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p9

    const/4 v0, 0x0

    .line 9597
    .local v0, "childNotifications":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    move-object v14, v0

    move v15, v1

    .end local v0    # "childNotifications":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v14, "childNotifications":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "i":I
    :goto_13
    if-ltz v15, :cond_c2

    .line 9598
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 9599
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p8, :cond_26

    .line 9600
    invoke-direct {v8, v6, v12}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 9601
    goto/16 :goto_be

    .line 9603
    :cond_26
    invoke-direct {v8, v6, v12}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 9604
    goto/16 :goto_be

    .line 9607
    :cond_2e
    if-eqz p5, :cond_3b

    if-nez v10, :cond_3b

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 9608
    goto/16 :goto_be

    .line 9611
    :cond_3b
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    move/from16 v7, p11

    invoke-interface {v0, v6, v7}, Lcom/android/server/notification/NotificationManagerServiceStub;->skipClearAll(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 9612
    goto/16 :goto_be

    .line 9615
    :cond_49
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 9616
    goto/16 :goto_be

    .line 9618
    :cond_57
    if-eqz v10, :cond_68

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 9619
    goto :goto_be

    .line 9621
    :cond_68
    if-eqz v11, :cond_79

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 9622
    goto :goto_be

    .line 9624
    :cond_79
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 9625
    if-nez v14, :cond_95

    .line 9626
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 9628
    :cond_95
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9629
    goto :goto_be

    .line 9631
    :cond_9d
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9632
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9633
    invoke-virtual {v6, v13}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 9634
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    move-object/from16 v16, v6

    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v16, "r":Lcom/android/server/notification/NotificationRecord;
    move-wide/from16 v6, p14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    .line 9597
    .end local v16    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_be
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_13

    .line 9637
    .end local v15    # "i":I
    :cond_c2
    if-eqz v14, :cond_10e

    .line 9638
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 9639
    .local v15, "M":I
    add-int/lit8 v0, v15, -0x1

    move v6, v0

    .local v6, "i":I
    :goto_cb
    if-ltz v6, :cond_109

    .line 9640
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 9641
    .local v7, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 9644
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9645
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9646
    invoke-virtual {v7, v13}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 9647
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    move/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "i":I
    .end local v7    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v16, "i":I
    .local v17, "r":Lcom/android/server/notification/NotificationRecord;
    move-wide/from16 v6, p14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    goto :goto_106

    .line 9641
    .end local v16    # "i":I
    .end local v17    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "i":I
    .restart local v7    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_102
    move/from16 v16, v6

    move-object/from16 v17, v7

    .line 9639
    .end local v6    # "i":I
    .end local v7    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v16    # "i":I
    :goto_106
    add-int/lit8 v6, v16, -0x1

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto :goto_cb

    :cond_109
    move/from16 v16, v6

    .line 9651
    .end local v6    # "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 9653
    .end local v15    # "M":I
    :cond_10e
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 30
    .param p2, "parentNotification"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "listenerName"    # Ljava/lang/String;
    .param p6, "sendDelete"    # Z
    .param p7, "wasPosted"    # Z
    .param p8, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p9, "reason"    # I
    .param p10, "cancellationElapsedTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "IJ)V"
        }
    .end annotation

    .line 9758
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 9759
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v13

    .line 9760
    .local v13, "userId":I
    const/16 v14, 0xc

    .line 9761
    .local v14, "childReason":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v15, v3

    .local v15, "i":I
    :goto_19
    if-ltz v15, :cond_aa

    .line 9762
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    .line 9763
    .local v16, "childR":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    .line 9764
    .local v17, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_a4

    .line 9765
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    if-eqz v1, :cond_55

    .line 9766
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_55

    :cond_52
    move-object/from16 v3, p0

    goto :goto_a6

    .line 9767
    :cond_55
    :goto_55
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v3

    if-eqz v3, :cond_68

    const/4 v3, 0x2

    move/from16 v12, p9

    if-eq v12, v3, :cond_65

    goto :goto_6a

    :cond_65
    move-object/from16 v3, p0

    goto :goto_a6

    :cond_68
    move/from16 v12, p9

    .line 9769
    :goto_6a
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    .line 9770
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    .line 9769
    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v2

    move v8, v13

    move-object/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 9771
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9772
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9773
    const/16 v7, 0xc

    move-object/from16 v4, p0

    move-object/from16 v5, v16

    move/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p5

    move-wide/from16 v10, p10

    invoke-direct/range {v4 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V

    goto :goto_a6

    .line 9765
    :cond_a1
    move-object/from16 v3, p0

    goto :goto_a6

    .line 9764
    :cond_a4
    move-object/from16 v3, p0

    .line 9761
    .end local v16    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v17    # "childSbn":Landroid/service/notification/StatusBarNotification;
    :goto_a6
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_19

    :cond_aa
    move-object/from16 v3, p0

    .line 9777
    .end local v15    # "i":I
    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V
    .registers 25
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "sendDelete"    # Z
    .param p6, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p7, "reason"    # I
    .param p8, "cancellationElapsedTimeMs"    # J

    .line 9735
    move-object v12, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 9736
    .local v13, "n":Landroid/app/Notification;
    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    .line 9737
    return-void

    .line 9740
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 9742
    .local v14, "pkg":Ljava/lang/String;
    if-nez v14, :cond_37

    .line 9743
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package for group summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9744
    :cond_36
    return-void

    .line 9747
    :cond_37
    iget-object v1, v12, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    .line 9749
    iget-object v1, v12, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    .line 9751
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V
    .registers 31
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "rank"    # I
    .param p5, "count"    # I
    .param p6, "wasPosted"    # Z
    .param p7, "listenerName"    # Ljava/lang/String;
    .param p8, "cancellationElapsedTimeMs"    # J

    .line 9217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 9221
    .local v12, "canceledKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 9224
    const-string/jumbo v5, "timeout"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 9225
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 9224
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 9226
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 9221
    const/4 v4, 0x1

    const/high16 v5, 0x24000000

    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 9230
    .local v13, "pi":Landroid/app/PendingIntent;
    if-eqz v13, :cond_45

    .line 9231
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9235
    :cond_45
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 9237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_57

    .line 9238
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 9242
    :cond_57
    if-eqz p2, :cond_97

    .line 9243
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v5, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 9244
    .local v5, "deleteIntent":Landroid/app/PendingIntent;
    if-eqz v5, :cond_97

    .line 9247
    :try_start_61
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 9248
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    sget-object v7, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerInternal;->clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    .line 9250
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_61 .. :try_end_75} :catch_76

    .line 9255
    goto :goto_97

    .line 9251
    :catch_76
    move-exception v0

    .line 9254
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canceled PendingIntent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotificationService"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9260
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v5    # "deleteIntent":Landroid/app/PendingIntent;
    :cond_97
    :goto_97
    if-eqz p6, :cond_d7

    .line 9262
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 9263
    const/16 v0, 0x12

    if-eq v11, v0, :cond_a9

    .line 9264
    iput-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 9266
    :cond_a9
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v0, v2, v11, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 9267
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9276
    :cond_bc
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 9277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 9281
    :cond_c7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 9282
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 9286
    :cond_d2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9291
    :cond_d7
    packed-switch v11, :pswitch_data_1d0

    :pswitch_da
    move-wide/from16 v14, p8

    goto :goto_fe

    .line 9300
    :pswitch_dd
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 9301
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    .line 9302
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 9301
    move-wide/from16 v14, p8

    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/app/usage/UsageStatsManagerInternal;->reportNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;J)V

    goto :goto_fe

    .line 9296
    :pswitch_f6
    move-wide/from16 v14, p8

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 9297
    nop

    .line 9306
    :goto_fe
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 9307
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/server/notification/NotificationRecord;

    .line 9308
    .local v16, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v16, :cond_11d

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 9309
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9311
    :cond_11d
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 9312
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/util/ArrayMap;

    .line 9313
    .local v10, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_159

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 9314
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 9313
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_159

    .line 9315
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9319
    :cond_159
    const/16 v4, 0x14

    if-eq v11, v4, :cond_166

    .line 9320
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;I)V

    .line 9323
    :cond_166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 9324
    .local v8, "now":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x5

    .line 9325
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 9326
    invoke-virtual {v4, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 9327
    .local v7, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v6, p4

    if-eq v6, v3, :cond_195

    move/from16 v5, p5

    if-eq v5, v3, :cond_197

    .line 9328
    const/16 v3, 0x31e

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x573

    .line 9329
    move-object/from16 v17, v0

    .end local v0    # "groupKey":Ljava/lang/String;
    .local v17, "groupKey":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    goto :goto_199

    .line 9327
    .end local v17    # "groupKey":Ljava/lang/String;
    .restart local v0    # "groupKey":Ljava/lang/String;
    :cond_195
    move/from16 v5, p5

    :cond_197
    move-object/from16 v17, v0

    .line 9331
    .end local v0    # "groupKey":Ljava/lang/String;
    .restart local v17    # "groupKey":Ljava/lang/String;
    :goto_199
    invoke-static {v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 9332
    nop

    .line 9333
    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v0

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v18

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v19

    .line 9332
    move-object v3, v12

    move/from16 v4, p3

    move v5, v0

    move/from16 v6, v18

    move-object v0, v7

    .end local v7    # "logMaker":Landroid/metrics/LogMaker;
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v7, v19

    move-wide/from16 v18, v8

    .end local v8    # "now":J
    .local v18, "now":J
    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v20, v10

    .end local v10    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 9335
    if-eqz p6, :cond_1ce

    .line 9336
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 9337
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v4

    .line 9336
    invoke-interface {v3, v2, v11, v4}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V

    .line 9339
    :cond_1ce
    return-void

    nop

    :pswitch_data_1d0
    .packed-switch 0x2
        :pswitch_f6
        :pswitch_f6
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_dd
        :pswitch_dd
        :pswitch_f6
        :pswitch_f6
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;J)V
    .registers 18
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "wasPosted"    # Z
    .param p5, "listenerName"    # Ljava/lang/String;
    .param p6, "cancellationElapsedTimeMs"    # J

    .line 9208
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    .line 9210
    return-void
.end method

.method private cancelNotificationsWhenEnterLockDownMode()V
    .registers 8

    .line 10008
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10009
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10010
    .local v1, "numNotifications":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_21

    .line 10011
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 10012
    .local v3, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v5, 0x3

    .line 10013
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v6

    .line 10012
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 10010
    .end local v3    # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 10016
    .end local v1    # "numNotifications":I
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0

    .line 10017
    return-void

    .line 10016
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 10177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V

    .line 10178
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 10181
    if-nez p2, :cond_c

    const-string/jumbo v0, "root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10182
    return-void

    .line 10184
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10187
    return-void

    .line 10185
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not owned by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystem()V
    .registers 4

    .line 10083
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10084
    return-void

    .line 10086
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 10106
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10107
    return-void

    .line 10109
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 10110
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .registers 3

    .line 10075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10076
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    if-nez v0, :cond_b

    goto :goto_f

    .line 10079
    :cond_b
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 10080
    return-void

    .line 10077
    :cond_f
    :goto_f
    return-void
.end method

.method private checkCallerIsSystemOrSystemUiOrShell()V
    .registers 2

    .line 10090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V

    .line 10091
    return-void
.end method

.method private checkCallerIsSystemOrSystemUiOrShell(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 10094
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10095
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1c

    if-nez v0, :cond_b

    goto :goto_1c

    .line 10098
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 10099
    return-void

    .line 10101
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10103
    return-void

    .line 10096
    :cond_1c
    :goto_1c
    return-void
.end method

.method private checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .line 6938
    iget-object v0, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 6939
    iput-object v1, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6941
    :cond_b
    iget-object v0, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6942
    iput-object v1, p4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6944
    :cond_15
    iget-object v0, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6945
    iput-object v1, p4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6947
    :cond_1f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_4d

    .line 6948
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6949
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6951
    :cond_31
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 6952
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6954
    :cond_3f
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 6955
    iget-object v0, p4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 6958
    :cond_4d
    return-void
.end method

.method private checkRestrictedCategories(Landroid/app/Notification;)V
    .registers 6
    .param p1, "notification"    # Landroid/app/Notification;

    .line 10123
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-nez v1, :cond_c

    .line 10124
    return-void

    .line 10129
    :cond_c
    goto :goto_19

    .line 10126
    :catch_d
    move-exception v1

    .line 10127
    .local v1, "re":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_19

    const-string v2, "NotificationService"

    const-string v3, "Unable to confirm if it\'s safe to skip category restrictions check thus the check will be done anyway"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10130
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "car_emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 10131
    const-string v2, "car_warning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 10132
    const-string v2, "car_information"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 10133
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 10135
    const-string v0, "Notification category %s restricted"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10133
    const-string v2, "android.permission.SEND_CATEGORY_CAR_NOTIFICATIONS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10138
    :cond_4d
    return-void
.end method

.method static clamp(III)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 9146
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method private clearLightsLocked()V
    .registers 2

    .line 1649
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 1651
    return-void
.end method

.method private createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;
    .registers 3

    .line 3313
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->TOAST_RATE_LIMITS:[Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimits([Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;)Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->build()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v0

    return-object v0
.end method

.method private destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 9
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "logKey"    # Ljava/lang/String;

    .line 9465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9467
    .local v0, "ident":J
    :try_start_4
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_20

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": destroying owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9468
    :cond_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v2, p1, v3, v4, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2c

    .line 9470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9471
    nop

    .line 9472
    return-void

    .line 9470
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9471
    throw v2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 6189
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 6190
    const-string v0, "booleanState"

    return-object v0

    .line 6192
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 6193
    const-string v0, "listenerHints"

    return-object v0

    .line 6195
    :cond_10
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 6196
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_2c

    .line 6197
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 6199
    const-string v0, "listenerNoti"

    return-object v0

    .line 6202
    :cond_2c
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    .line 6203
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_3f

    .line 6205
    const-string v0, "listenerCall"

    return-object v0

    .line 6209
    :cond_3f
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 6210
    const-string v0, "callState"

    return-object v0

    .line 6212
    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 6239
    .local p3, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6241
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6242
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6243
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6244
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6245
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/PreferencesHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 6248
    goto :goto_40

    .line 6246
    :catch_3c
    move-exception v1

    .line 6247
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6249
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6250
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 6337
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6340
    .local v1, "N":I
    if-lez v1, :cond_3d

    .line 6341
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6342
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_38

    .line 6343
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 6344
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_35

    .line 6345
    :cond_2a
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 6342
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6347
    .end local v2    # "i":I
    :cond_38
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6349
    .end local v1    # "N":I
    :cond_3d
    monitor-exit v0

    .line 6350
    return-void

    .line 6349
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 6263
    .local p3, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 6264
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 6265
    :try_start_f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6266
    .local v0, "N":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_17
    if-ge v12, v0, :cond_3f

    .line 6267
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 6268
    .local v4, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v5, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v5, :cond_30

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_3c

    .line 6269
    :cond_30
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x1

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 6266
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_3c
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 6272
    .end local v12    # "i":I
    :cond_3f
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    .line 6273
    const/4 v4, 0x0

    move v12, v4

    .restart local v12    # "i":I
    :goto_48
    if-ge v12, v0, :cond_70

    .line 6274
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 6275
    .restart local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v5, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v5, :cond_61

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_61

    goto :goto_6d

    .line 6276
    :cond_61
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x0

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 6273
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_6d
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    .line 6279
    .end local v12    # "i":I
    :cond_70
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 6280
    .local v12, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    .line 6281
    const/4 v4, 0x0

    move v13, v4

    .local v13, "i":I
    :goto_7e
    if-ge v13, v0, :cond_a4

    .line 6282
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 6283
    .restart local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v5, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v5, :cond_95

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_95

    goto :goto_a1

    .line 6284
    :cond_95
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x2

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 6281
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_a1
    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    .line 6288
    .end local v13    # "i":I
    :cond_a4
    const-wide v4, 0x10b00000002L

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 6289
    .local v4, "zenLog":J
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v10}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 6290
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 6291
    .local v7, "suppressor":Landroid/content/ComponentName;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6292
    .end local v7    # "suppressor":Landroid/content/ComponentName;
    goto :goto_b8

    .line 6293
    :cond_cd
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6295
    const-wide v6, 0x10b00000003L

    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 6296
    .local v6, "listenersToken":J
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v8, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6297
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6299
    const-wide v8, 0x10500000004L

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v10, v8, v9, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6301
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ec
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_13d

    .line 6302
    const-wide v13, 0x20b00000005L

    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 6305
    .local v13, "effectsToken":J
    move-wide v15, v4

    .end local v4    # "zenLog":J
    .local v15, "zenLog":J
    const-wide v3, 0x10500000001L

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 6306
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 6305
    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6307
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 6308
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 6309
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_115
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_130

    .line 6310
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 6311
    .local v5, "componentName":Landroid/content/ComponentName;
    move-wide/from16 v17, v6

    .end local v6    # "listenersToken":J
    .local v17, "listenersToken":J
    const-wide v6, 0x20b00000003L

    invoke-virtual {v5, v10, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6309
    .end local v5    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v6, v17

    goto :goto_115

    .end local v17    # "listenersToken":J
    .restart local v6    # "listenersToken":J
    :cond_130
    move-wide/from16 v17, v6

    .line 6315
    .end local v4    # "j":I
    .end local v6    # "listenersToken":J
    .restart local v17    # "listenersToken":J
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6301
    .end local v3    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v13    # "effectsToken":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p1

    move-wide v4, v15

    move-wide/from16 v6, v17

    goto :goto_ec

    .end local v15    # "zenLog":J
    .end local v17    # "listenersToken":J
    .local v4, "zenLog":J
    .restart local v6    # "listenersToken":J
    :cond_13d
    move-wide v15, v4

    move-wide/from16 v17, v6

    .line 6318
    .end local v4    # "zenLog":J
    .end local v6    # "listenersToken":J
    .end local v8    # "i":I
    .restart local v15    # "zenLog":J
    .restart local v17    # "listenersToken":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 6320
    .local v3, "assistantsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6321
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6323
    const-wide v5, 0x10b00000007L

    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 6324
    .local v5, "conditionsToken":J
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v7, v10, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6325
    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6327
    const-wide v7, 0x10b00000008L

    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 6328
    .local v7, "rankingToken":J
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v9, v10, v2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6329
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;
    :try_end_172
    .catchall {:try_start_f .. :try_end_172} :catchall_17f

    move-object/from16 v13, p3

    :try_start_174
    invoke-virtual {v9, v10, v2, v13}, Lcom/android/server/notification/PreferencesHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 6330
    invoke-virtual {v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6331
    .end local v0    # "N":I
    .end local v3    # "assistantsToken":J
    .end local v5    # "conditionsToken":J
    .end local v7    # "rankingToken":J
    .end local v12    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v15    # "zenLog":J
    .end local v17    # "listenersToken":J
    monitor-exit v11
    :try_end_17b
    .catchall {:try_start_174 .. :try_end_17b} :catchall_184

    .line 6333
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 6334
    return-void

    .line 6331
    :catchall_17f
    move-exception v0

    move-object/from16 v13, p3

    :goto_182
    :try_start_182
    monitor-exit v11
    :try_end_183
    .catchall {:try_start_182 .. :try_end_183} :catchall_184

    throw v0

    :catchall_184
    move-exception v0

    goto :goto_182
.end method

.method private dumpRemoteViewStats(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 6253
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iget-wide v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object v0

    .line 6254
    .local v0, "stats":Lcom/android/server/notification/PulledStats;
    if-nez v0, :cond_12

    .line 6255
    const-string/jumbo v1, "no remote view stats reported."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6256
    return-void

    .line 6258
    :cond_12
    invoke-virtual {v0, v3, p1, p2}, Lcom/android/server/notification/PulledStats;->dump(ILjava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6259
    return-void
.end method

.method private exitIdle()V
    .registers 3

    .line 2874
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    if-eqz v0, :cond_a

    .line 2875
    const-string/jumbo v1, "notification interaction"

    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 2877
    :cond_a
    return-void
.end method

.method private findEnqueuedNotificationsForCriteria(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 9943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9944
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9945
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_48

    .line 9946
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9947
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 9948
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_45

    .line 9949
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 9950
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 9951
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9945
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9954
    .end local v2    # "i":I
    :cond_48
    return-object v0
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 9851
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9852
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9853
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_36

    .line 9854
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9855
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 9856
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 9857
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9853
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 9860
    .end local v2    # "i":I
    :cond_36
    return-object v0
.end method

.method private findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 9840
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 9841
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_c

    .line 9842
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 9844
    :cond_c
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 9869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_a

    .line 9870
    return-object v1

    .line 9872
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_14

    .line 9873
    return-object v1

    .line 9875
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 6
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 9925
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9926
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 9927
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 9928
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    return-object v2

    .line 9926
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 9931
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 9894
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9895
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_3d

    .line 9896
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 9897
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_3a

    .line 9898
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 9899
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 9900
    return-object v2

    .line 9895
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 9903
    .end local v1    # "i":I
    :cond_3d
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .line 8996
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private findNotificationsByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 9909
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9910
    .local v0, "matching":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9911
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_44

    .line 9912
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 9913
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p4, :cond_41

    .line 9914
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 9915
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 9916
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9911
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 9919
    .end local v2    # "i":I
    :cond_44
    return-object v0
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 4

    .line 2705
    nop

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    .line 2707
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutoGroupAtCount:I

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;-><init>(ILcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method private getHistoryText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .registers 9
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .line 3234
    const/4 v0, 0x0

    .line 3235
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_5a

    .line 3236
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3238
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 3240
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$BigTextStyle;

    if-eqz v3, :cond_24

    .line 3241
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4e

    .line 3242
    :cond_24
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Notification$MessagingStyle;

    if-eqz v3, :cond_4e

    .line 3243
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle;

    .line 3244
    .local v3, "ms":Landroid/app/Notification$MessagingStyle;
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v4

    .line 3245
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz v4, :cond_4e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 3246
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3250
    .end local v3    # "ms":Landroid/app/Notification$MessagingStyle;
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    :cond_4e
    :goto_4e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 3251
    iget-object v3, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3254
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    :cond_5a
    if-nez v0, :cond_5e

    const/4 v1, 0x0

    goto :goto_62

    :cond_5e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_62
    return-object v1
.end method

.method private getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;
    .registers 5
    .param p1, "n"    # Landroid/app/Notification;

    .line 3218
    const/4 v0, 0x0

    .line 3219
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_17

    .line 3220
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3221
    if-nez v0, :cond_17

    .line 3222
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3225
    :cond_17
    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040659

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    .line 3227
    :cond_29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3225
    :goto_2d
    return-object v1
.end method

.method private getRealUserId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 3291
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    return v0
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2980
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_2e

    .line 2981
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2983
    .local v2, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2984
    .local v4, "info":Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2985
    .end local v4    # "info":Landroid/content/ComponentName;
    goto :goto_1b

    .line 2980
    .end local v2    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2988
    .end local v1    # "i":I
    :cond_2e
    return-object v0
.end method

.method private getToastRecord(IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;
    .registers 27
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isSystemToast"    # Z
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "text"    # Ljava/lang/CharSequence;
    .param p7, "callback"    # Landroid/app/ITransientNotification;
    .param p8, "duration"    # I
    .param p9, "windowToken"    # Landroid/os/Binder;
    .param p10, "displayId"    # I
    .param p11, "textCallback"    # Landroid/app/ITransientNotificationCallback;

    .line 3298
    if-nez p7, :cond_21

    .line 3299
    new-instance v13, Lcom/android/server/notification/toast/TextToastRecord;

    move-object v14, p0

    iget-object v2, v14, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object v0, v13

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/toast/TextToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)V

    return-object v13

    .line 3302
    :cond_21
    move-object v14, p0

    new-instance v11, Lcom/android/server/notification/toast/CustomToastRecord;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/notification/toast/CustomToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Landroid/app/ITransientNotification;ILandroid/os/Binder;I)V

    return-object v11
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I
    .param p4, "targetPkg"    # Ljava/lang/String;
    .param p5, "targetUserId"    # I

    .line 9430
    if-eqz p2, :cond_5c

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5c

    .line 9431
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9433
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 9434
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 9436
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 9433
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_55
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_29} :catch_2c
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_56

    .line 9443
    :catchall_2a
    move-exception v2

    goto :goto_51

    .line 9440
    :catch_2c
    move-exception v2

    .line 9441
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_2d
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot grant uri access; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not own "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_2a

    .line 9443
    nop

    .end local v2    # "e":Ljava/lang/SecurityException;
    goto :goto_57

    :goto_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9444
    throw v2

    .line 9438
    :catch_55
    move-exception v2

    .line 9443
    :goto_56
    nop

    :goto_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9444
    nop

    .line 9445
    return-void

    .line 9430
    .end local v0    # "ident":J
    :cond_5c
    :goto_5c
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/toast/ToastRecord;

    .line 8681
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8682
    :cond_2a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8683
    :try_start_2d
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v1

    .line 8684
    .local v1, "index":I
    if-ltz v1, :cond_3a

    .line 8685
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 8687
    .end local v1    # "index":I
    :cond_3a
    monitor-exit v0

    .line 8688
    return-void

    .line 8687
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 8053
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 8054
    .local v12, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    .line 8055
    .local v13, "n":Landroid/app/Notification;
    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 8058
    iget v0, v13, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 8061
    :cond_1e
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    .line 8062
    .local v14, "group":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v15

    .line 8064
    .local v15, "isSummary":Z
    const/4 v0, 0x0

    if-eqz v11, :cond_32

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    move-object/from16 v16, v1

    .line 8065
    .local v16, "oldN":Landroid/app/Notification;
    if-eqz v11, :cond_3f

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    move-object v8, v0

    .line 8066
    .local v8, "oldGroup":Ljava/lang/String;
    if-eqz v11, :cond_4a

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    move/from16 v17, v0

    .line 8068
    .local v17, "oldIsSummary":Z
    if-eqz v17, :cond_88

    .line 8069
    iget-object v0, v10, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 8070
    .local v0, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    if-eq v0, v11, :cond_88

    .line 8072
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :cond_60
    const-string v1, "<null>"

    .line 8073
    .local v1, "removedKey":Ljava/lang/String;
    :goto_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8077
    .end local v0    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "removedKey":Ljava/lang/String;
    :cond_88
    if-eqz v15, :cond_92

    .line 8078
    iget-object v0, v10, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v9, p1

    invoke-virtual {v0, v14, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 8077
    :cond_92
    move-object/from16 v9, p1

    .line 8081
    :goto_94
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>()V

    .line 8092
    .local v6, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    if-eqz v17, :cond_bf

    if-eqz v15, :cond_a7

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto :goto_a7

    :cond_a4
    move-object/from16 v20, v8

    goto :goto_c1

    .line 8093
    :cond_a7
    :goto_a7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    .line 8094
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 8093
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v20, v8

    .end local v8    # "oldGroup":Ljava/lang/String;
    .local v20, "oldGroup":Ljava/lang/String;
    move-wide/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;IJ)V

    goto :goto_c1

    .line 8092
    .end local v20    # "oldGroup":Ljava/lang/String;
    .restart local v8    # "oldGroup":Ljava/lang/String;
    :cond_bf
    move-object/from16 v20, v8

    .line 8096
    .end local v8    # "oldGroup":Ljava/lang/String;
    .restart local v20    # "oldGroup":Ljava/lang/String;
    :goto_c1
    return-void
.end method

.method private handleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/toast/ToastRecord;

    .line 8700
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8701
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8702
    :try_start_21
    iget-object v1, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v2, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    .line 8703
    monitor-exit v0

    .line 8704
    return-void

    .line 8703
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"    # I

    .line 9019
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9020
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 9021
    monitor-exit v0

    .line 9022
    return-void

    .line 9021
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .line 9025
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9026
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 9027
    monitor-exit v0

    .line 9028
    return-void

    .line 9027
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 17
    .param p1, "message"    # Landroid/os/Message;

    .line 8786
    move-object v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_a

    return-void

    .line 8787
    :cond_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/notification/RankingReconsideration;

    .line 8788
    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v3}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 8790
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 8791
    :try_start_15
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_9e

    .line 8792
    .local v0, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_29

    .line 8793
    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    .line 8819
    .end local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_25
    move-exception v0

    move-object v11, v3

    goto/16 :goto_a0

    .line 8795
    .restart local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_29
    :try_start_29
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v5

    .line 8796
    .local v5, "indexBefore":I
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v6

    .line 8797
    .local v6, "interceptBefore":Z
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 8798
    .local v7, "visibilityBefore":I
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v8

    .line 8800
    .local v8, "interruptiveBefore":Z
    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8801
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 8802
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 8803
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v9, :cond_50

    move v9, v10

    goto :goto_51

    :cond_50
    move v9, v11

    .line 8804
    .local v9, "indexChanged":Z
    :goto_51
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v12

    if-eq v6, v12, :cond_59

    move v12, v10

    goto :goto_5a

    :cond_59
    move v12, v11

    .line 8805
    .local v12, "interceptChanged":Z
    :goto_5a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v13

    if-eq v7, v13, :cond_62

    move v13, v10

    goto :goto_63

    :cond_62
    move v13, v11

    .line 8808
    .local v13, "visibilityChanged":Z
    :goto_63
    nop

    .line 8809
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v14
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_9e

    if-eqz v14, :cond_72

    :try_start_6a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v14
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_25

    if-eq v8, v14, :cond_72

    move v14, v10

    goto :goto_73

    :cond_72
    move v14, v11

    .line 8811
    .local v14, "interruptiveChanged":Z
    :goto_73
    if-nez v9, :cond_7d

    if-nez v12, :cond_7d

    if-nez v13, :cond_7d

    if-eqz v14, :cond_7c

    goto :goto_7d

    :cond_7c
    move v10, v11

    .line 8815
    .local v10, "changed":Z
    :cond_7d
    :goto_7d
    if-eqz v6, :cond_94

    :try_start_7f
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v11
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_9e

    if-nez v11, :cond_94

    .line 8816
    move-object v11, v3

    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    .local v11, "recon":Lcom/android/server/notification/RankingReconsideration;
    :try_start_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationRecord;->isNewEnoughForAlerting(J)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 8817
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    goto :goto_95

    .line 8815
    .end local v11    # "recon":Lcom/android/server/notification/RankingReconsideration;
    .restart local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_94
    move-object v11, v3

    .line 8819
    .end local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    .end local v5    # "indexBefore":I
    .end local v6    # "interceptBefore":Z
    .end local v7    # "visibilityBefore":I
    .end local v8    # "interruptiveBefore":Z
    .end local v9    # "indexChanged":Z
    .end local v12    # "interceptChanged":Z
    .end local v13    # "visibilityChanged":Z
    .end local v14    # "interruptiveChanged":Z
    .restart local v11    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_95
    :goto_95
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_86 .. :try_end_96} :catchall_a2

    .line 8820
    if-eqz v10, :cond_9d

    .line 8821
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 8823
    :cond_9d
    return-void

    .line 8819
    .end local v10    # "changed":Z
    .end local v11    # "recon":Lcom/android/server/notification/RankingReconsideration;
    .restart local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :catchall_9e
    move-exception v0

    move-object v11, v3

    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    .restart local v11    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :goto_a0
    :try_start_a0
    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a2

    throw v0

    :catchall_a2
    move-exception v0

    goto :goto_a0
.end method

.method private handleSendRankingUpdate()V
    .registers 4

    .line 9000
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9001
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 9002
    monitor-exit v0

    .line 9003
    return-void

    .line 9002
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 6112
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 6113
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private hideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 11
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "uidList"    # [I

    .line 9969
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9970
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 9971
    .local v1, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 9972
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9973
    .local v3, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9974
    .local v4, "numNotifications":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_55

    .line 9975
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 9976
    .local v6, "rec":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 9977
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 9978
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 9979
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9974
    .end local v6    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 9983
    .end local v5    # "i":I
    :cond_55
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 9984
    .end local v1    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "numNotifications":I
    monitor-exit v0

    .line 9985
    return-void

    .line 9984
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private isCallNotification(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 7240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7242
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.telecom"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_35

    if-eqz v2, :cond_30

    .line 7245
    :try_start_13
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInManagedCall()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 7247
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 7246
    invoke-virtual {v2, p1, v4}, Landroid/telecom/TelecomManager;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_23} :catch_2a
    .catchall {:try_start_13 .. :try_end_23} :catchall_35

    if-eqz v2, :cond_26

    :cond_25
    const/4 v3, 0x1

    .line 7255
    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7245
    return v3

    .line 7248
    :catch_2a
    move-exception v2

    .line 7250
    .local v2, "ise":Ljava/lang/IllegalStateException;
    nop

    .line 7255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7250
    return v3

    .line 7253
    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    :cond_30
    nop

    .line 7255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7253
    return v3

    .line 7255
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7256
    throw v2
.end method

.method private isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "n"    # Landroid/app/Notification;

    .line 7233
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {p3, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7234
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 7236
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private isCallerAndroid(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 10113
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 10114
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 10113
    :goto_13
    return v0
.end method

.method private isCallerIsSystemOrSysemUiOrShell()Z
    .registers 3

    .line 10067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10068
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10

    if-nez v0, :cond_b

    goto :goto_10

    .line 10071
    :cond_b
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerIsSystemOrSystemUi()Z

    move-result v1

    return v1

    .line 10069
    :cond_10
    :goto_10
    const/4 v1, 0x1

    return v1
.end method

.method private isCallerIsSystemOrSystemUi()Z
    .registers 4

    .line 10059
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 10060
    return v1

    .line 10062
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private isCallerSameApp(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 10191
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 10192
    const/4 v0, 0x1

    return v0

    .line 10193
    :catch_5
    move-exception v0

    .line 10194
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8039
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isExemptFromRateLimiting(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 8595
    const/4 v0, 0x0

    .line 8597
    .local v0, "isExemptFromRateLimiting":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.UNLIMITED_TOASTS"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_10

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    move v0, v1

    .line 8602
    goto :goto_18

    .line 8600
    :catch_10
    move-exception v1

    .line 8601
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    const-string v3, "Failed to connect with package manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8603
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return v0
.end method

.method private isInCall()Z
    .registers 4

    .line 10384
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 10385
    return v1

    .line 10387
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 10388
    .local v0, "audioMode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    goto :goto_15

    .line 10392
    :cond_13
    const/4 v1, 0x0

    return v1

    .line 10390
    :cond_15
    :goto_15
    return v1
.end method

.method private isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "userId"    # I

    .line 10323
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v0

    .line 10324
    .local v0, "isAssistantService":Z
    if-eqz v0, :cond_13

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method private isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "playingRecord"    # Lcom/android/server/notification/NotificationRecord;

    .line 8394
    if-eqz p1, :cond_19

    .line 8395
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    .line 8396
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    .line 8397
    const/4 v0, 0x1

    return v0

    .line 8400
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8502
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2a

    .line 8504
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8505
    nop

    .line 8506
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 8507
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_28

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 8508
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 v3, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v3, 0x1

    .line 8506
    :goto_29
    return v3

    .line 8504
    .end local v2    # "currentUser":I
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8505
    throw v2
.end method

.method private isPackageInForegroundForToast(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 8765
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasResumedActivity(I)Z

    move-result v0

    return v0
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 10328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10329
    .local v0, "identity":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 10331
    .local v2, "userId":I
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 10338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10331
    return v3

    .line 10338
    :catchall_12
    move-exception v3

    goto :goto_23

    .line 10334
    :catch_14
    move-exception v3

    .line 10336
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .line 10338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10336
    return v4

    .line 10332
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v3

    .line 10333
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Could not talk to package manager service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local v2    # "userId":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v4
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_12

    .line 10338
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "identity":J
    .restart local v2    # "userId":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10339
    throw v3
.end method

.method private keepProcessAliveForToastIfNeededLocked(I)V
    .registers 9
    .param p1, "pid"    # I

    .line 8730
    const/4 v0, 0x0

    .line 8731
    .local v0, "toastCount":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 8732
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/toast/ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8733
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_1f

    .line 8734
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/toast/ToastRecord;

    .line 8735
    .local v4, "r":Lcom/android/server/notification/toast/ToastRecord;
    iget v5, v4, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    if-ne v5, p1, :cond_1c

    invoke-virtual {v4}, Lcom/android/server/notification/toast/ToastRecord;->keepProcessAlive()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 8736
    add-int/lit8 v0, v0, 0x1

    .line 8733
    .end local v4    # "r":Lcom/android/server/notification/toast/ToastRecord;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 8740
    .end local v3    # "i":I
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v0, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    :goto_28
    const-string/jumbo v6, "toast"

    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_2f

    .line 8743
    goto :goto_30

    .line 8741
    :catch_2f
    move-exception v3

    .line 8744
    :goto_30
    return-void
.end method

.method static synthetic lambda$handleGroupedNotificationLocked$7(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 8082
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 8083
    const/4 v0, 0x0

    return v0

    .line 8085
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 37
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 10213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10214
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10216
    .local v2, "rankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    const/4 v4, 0x0

    if-ge v3, v1, :cond_d1

    .line 10217
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 10218
    .local v5, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v7

    move-object/from16 v8, p1

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 10219
    goto/16 :goto_cd

    .line 10221
    :cond_2b
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 10222
    .local v6, "key":Ljava/lang/String;
    new-instance v7, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v7}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 10224
    .local v7, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    nop

    .line 10226
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 10227
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    .line 10228
    const/4 v10, 0x1

    xor-int/lit8 v12, v9, 0x1

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v13

    .line 10229
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    .line 10230
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    .line 10231
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v16

    .line 10232
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    .line 10233
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v18

    .line 10234
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v19

    .line 10235
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v20

    .line 10236
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v21

    .line 10237
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v22

    .line 10238
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v23

    .line 10239
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getLastAudiblyAlertedMs()J

    move-result-wide v24

    .line 10240
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_88

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v9

    if-eqz v9, :cond_85

    goto :goto_88

    :cond_85
    move/from16 v26, v4

    goto :goto_8a

    :cond_88
    :goto_88
    move/from16 v26, v10

    .line 10241
    :goto_8a
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v27

    .line 10242
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v28

    .line 10243
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v29

    .line 10244
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isTextChanged()Z

    move-result v30

    .line 10245
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v31

    .line 10246
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v32

    .line 10247
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v9

    const/16 v33, 0x0

    cmpl-float v9, v9, v33

    if-nez v9, :cond_af

    .line 10248
    move/from16 v33, v4

    goto :goto_bd

    .line 10249
    :cond_af
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v4

    cmpl-float v4, v4, v33

    if-lez v4, :cond_ba

    move/from16 v33, v10

    goto :goto_bd

    :cond_ba
    const/4 v4, -0x1

    move/from16 v33, v4

    .line 10250
    :goto_bd
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v34

    .line 10224
    move-object v9, v7

    move-object v10, v6

    invoke-virtual/range {v9 .. v34}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZ)V

    .line 10252
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10216
    .end local v5    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    :goto_cd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_d1
    move-object/from16 v8, p1

    .line 10255
    .end local v3    # "i":I
    new-instance v3, Landroid/service/notification/NotificationRankingUpdate;

    new-array v4, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 10256
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3, v4}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 10255
    return-object v3
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannelGroup;
    .param p4, "update"    # Landroid/app/NotificationChannelGroup;

    .line 2962
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 2963
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 2966
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2965
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2968
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    .line 2967
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2969
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2970
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2971
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2963
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 2975
    :cond_3f
    goto :goto_48

    .line 2973
    :catch_40
    move-exception v0

    .line 2974
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about group change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2976
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_48
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannel;
    .param p4, "update"    # Landroid/app/NotificationChannel;

    .line 2921
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 2922
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 2923
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_52

    .line 2924
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_52

    .line 2925
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 2928
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2927
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2930
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 2929
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2931
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2932
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2933
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2925
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 2937
    :cond_52
    goto :goto_5b

    .line 2935
    :catch_53
    move-exception v0

    .line 2936
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about channel change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2938
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_5b
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 9534
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 9535
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 9534
    :goto_16
    return v0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 9519
    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    .line 9523
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 9525
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 9519
    :goto_13
    return v0
.end method

.method private onConversationRemovedInternal(Ljava/lang/String;ILjava/util/Set;)V
    .registers 22
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6860
    .local p3, "shortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 6861
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6863
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/notification/NotificationHistoryManager;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)V

    .line 6864
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 6865
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/notification/PreferencesHelper;->deleteConversations(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object v15

    .line 6866
    .local v15, "deletedChannelIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 6867
    .local v17, "channelId":Ljava/lang/String;
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 6868
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 6867
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 6870
    .end local v17    # "channelId":Ljava/lang/String;
    goto :goto_1d

    .line 6871
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6872
    return-void
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"    # Landroid/net/Uri;

    .line 8404
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 8408
    .local v0, "looping":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v3

    if-nez v3, :cond_88

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 8410
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 8409
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_88

    .line 8412
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-interface {v3, v4, p1}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDeniedPlaySound(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 8414
    return v2

    .line 8417
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 8419
    .local v3, "identity":J
    :try_start_38
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v5

    .line 8420
    .local v5, "player":Landroid/media/IRingtonePlayer;
    if-eqz v5, :cond_7e

    .line 8421
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_6a

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with attributes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8422
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8421
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8423
    :cond_6a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 8424
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 8423
    invoke-interface {v5, p2, v6, v0, v7}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_79} :catch_84
    .catchall {:try_start_38 .. :try_end_79} :catchall_7f

    .line 8425
    nop

    .line 8429
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8425
    return v1

    .line 8420
    .end local v5    # "player":Landroid/media/IRingtonePlayer;
    :cond_7e
    goto :goto_85

    .line 8429
    :catchall_7f
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8430
    throw v1

    .line 8427
    :catch_84
    move-exception v1

    .line 8429
    :goto_85
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8432
    .end local v3    # "identity":J
    :cond_88
    return v2
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z
    .registers 10
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "delayVibForSound"    # Z

    .line 8439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8442
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 8444
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v4

    .line 8443
    invoke-interface {v2, v3, p1, v4}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDeniedPlayVibration(Landroid/media/AudioManager;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3c

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 8445
    nop

    .line 8485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8445
    return v3

    .line 8448
    :cond_24
    if-eqz p3, :cond_34

    .line 8449
    :try_start_26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8479
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_37

    .line 8481
    :cond_34
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_3c

    .line 8483
    :goto_37
    const/4 v2, 0x1

    .line 8485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8483
    return v2

    .line 8485
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8486
    throw v2
.end method

.method private postNotificationsWhenExitLockDownMode()V
    .registers 6

    .line 10020
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10021
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10022
    .local v1, "numNotifications":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 10023
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 10024
    .local v3, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 10022
    .end local v3    # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 10027
    .end local v1    # "numNotifications":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 10028
    return-void

    .line 10027
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private pullNotificationStates(ILjava/util/List;)I
    .registers 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2686
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    sparse-switch p1, :sswitch_data_22

    goto :goto_20

    .line 2698
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ZenModeHelper;->pullRules(Ljava/util/List;)V

    goto :goto_20

    .line 2695
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelGroupPreferencesStats(Ljava/util/List;)V

    .line 2696
    goto :goto_20

    .line 2692
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/PreferencesHelper;->pullPackageChannelPreferencesStats(Ljava/util/List;)V

    .line 2693
    goto :goto_20

    .line 2688
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 2688
    invoke-virtual {v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->pullPackagePreferencesStats(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 2690
    nop

    .line 2701
    :goto_20
    const/4 v0, 0x0

    return v0

    :sswitch_data_22
    .sparse-switch
        0x2757 -> :sswitch_16
        0x2758 -> :sswitch_10
        0x2759 -> :sswitch_a
        0x2764 -> :sswitch_4
    .end sparse-switch
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8977
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8978
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 8980
    :cond_d
    return-void
.end method

.method private registerNotificationPreferencesPullers()V
    .registers 6

    .line 2643
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    .line 2644
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x2757

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2650
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x2758

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2656
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    const/16 v4, 0x2759

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2662
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 2665
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPullAtomCallback:Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;

    .line 2662
    const/16 v4, 0x2764

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 2668
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 2992
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 8
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 2996
    const/4 v0, 0x0

    .line 2998
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_29

    .line 2999
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3000
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3002
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_1f

    and-int v4, v2, p2

    if-ne v4, v2, :cond_26

    .line 3003
    :cond_1f
    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2998
    .end local v2    # "hint":I
    .end local v3    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3007
    .end local v1    # "i":I
    :cond_29
    return v0
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 9188
    const/4 v0, 0x0

    .line 9189
    .local v0, "wasPosted":Z
    const/4 v1, 0x0

    .line 9190
    .local v1, "recordInList":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_22

    .line 9192
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9193
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9194
    const/4 v0, 0x1

    .line 9196
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_35

    .line 9198
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 9200
    :cond_35
    return v0
.end method

.method private removeRemoteView(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RemoteViews;)Z
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;

    .line 6961
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 6962
    return v0

    .line 6964
    :cond_4
    invoke-virtual {p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v1

    .line 6965
    .local v1, "contentViewSize":I
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    const-string v3, " id: "

    const-string v4, " tag: "

    const-string v5, "NotificationService"

    if-le v1, v2, :cond_42

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    if-ge v1, v2, :cond_42

    .line 6967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViews too large on pkg: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " this might be stripped in a future release"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6970
    :cond_42
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    if-lt v1, v2, :cond_7d

    .line 6971
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerImageRemoved(Ljava/lang/String;)V

    .line 6972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed too large RemoteViews ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes) on pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    const/4 v0, 0x1

    return v0

    .line 6976
    :cond_7d
    return v0
.end method

.method private reportCompatRateLimitingToastsChange(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 8608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8610
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v3, 0xa6bdb34

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_13
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 8615
    nop

    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8616
    goto :goto_1d

    .line 8615
    :catchall_11
    move-exception v2

    goto :goto_1e

    .line 8611
    :catch_13
    move-exception v2

    .line 8612
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    const-string v3, "NotificationService"

    const-string v4, "Unexpected exception while reporting toast was blocked due to rate limiting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 8615
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_d

    .line 8617
    :goto_1d
    return-void

    .line 8615
    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8616
    throw v2
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUserId"    # I
    .param p4, "targetPkg"    # Ljava/lang/String;
    .param p5, "targetUserId"    # I

    .line 9449
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2f

    .line 9450
    :cond_f
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 9452
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 9454
    .local v8, "ident":J
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 9456
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 9454
    move-object v2, p1

    move v5, v0

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2a

    .line 9460
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9461
    nop

    .line 9462
    return-void

    .line 9460
    :catchall_2a
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9461
    throw v1

    .line 9449
    .end local v0    # "userId":I
    .end local v8    # "ident":J
    :cond_2f
    :goto_2f
    return-void
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/toast/ToastRecord;
    .param p2, "lastToastWasTextRecord"    # Z

    .line 8660
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8661
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8662
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/16 v2, 0xdac

    goto :goto_18

    :cond_16
    const/16 v2, 0x7d0

    .line 8666
    .local v2, "delay":I
    :goto_18
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    .line 8669
    .end local v2    # "delay":I
    .local v1, "delay":I
    if-eqz p2, :cond_22

    .line 8670
    add-int/lit16 v1, v1, 0xfa

    .line 8672
    :cond_22
    instance-of v2, p1, Lcom/android/server/notification/toast/TextToastRecord;

    if-eqz v2, :cond_28

    .line 8673
    add-int/lit16 v1, v1, 0x14d

    .line 8676
    :cond_28
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8677
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"    # I

    .line 9011
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 9012
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 9015
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9016
    return-void
.end method

.method private scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/toast/ToastRecord;

    .line 8693
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8694
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8695
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8696
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 9006
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 9007
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9008
    return-void
.end method

.method private sendAppBlockStateChangedBroadcast(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blocked"    # Z

    .line 2826
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2838
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;

    .line 2748
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2749
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2753
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getAllowedPackages()Ljava/util/Set;

    move-result-object v1

    .line 2754
    .local v1, "dndApprovedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2755
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2756
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2757
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2758
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_23

    .line 2759
    :cond_41
    return-void
.end method

.method private tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z
    .registers 10
    .param p1, "record"    # Lcom/android/server/notification/toast/ToastRecord;
    .param p2, "rateLimitingEnabled"    # Z
    .param p3, "isWithinQuota"    # Z
    .param p4, "isPackageInForeground"    # Z

    .line 8579
    const/4 v0, 0x0

    const-string v1, "NotificationService"

    if-eqz p2, :cond_31

    if-nez p3, :cond_31

    if-nez p4, :cond_31

    .line 8580
    iget v2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->reportCompatRateLimitingToastsChange(I)V

    .line 8581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is above allowed toast quota, the following toast was blocked and discarded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8583
    return v0

    .line 8585
    :cond_31
    iget v2, p1, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-boolean v3, p1, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->isAppRendered()Z

    move-result v4

    invoke-direct {p0, v2, v3, v4, p4}, Lcom/android/server/notification/NotificationManagerService;->blockToast(IZZZ)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 8587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocking custom toast from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to package not in the foreground at the time of showing the toast"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8589
    return v0

    .line 8591
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/notification/toast/ToastRecord;->show()Z

    move-result v0

    return v0
.end method

.method private unhideNotificationsForPackages([Ljava/lang/String;[I)V
    .registers 11
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "uidList"    # [I

    .line 9989
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9990
    :try_start_3
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 9991
    .local v1, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 9992
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9993
    .local v3, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9994
    .local v4, "numNotifications":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_55

    .line 9995
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 9996
    .local v6, "rec":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 9997
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 9998
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 9999
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9994
    .end local v6    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 10003
    .end local v5    # "i":I
    :cond_55
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 10004
    .end local v1    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "numNotifications":I
    monitor-exit v0

    .line 10005
    return-void

    .line 10004
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5

    .line 2863
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 2864
    .local v0, "updatedSuppressedEffects":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 2865
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 2866
    .local v2, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 2868
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 2869
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 2870
    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 2871
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3

    .line 3068
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 3069
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 3070
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 3071
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 3072
    return-void
.end method

.method private updateListenerHintsLocked()V
    .registers 4

    .line 2854
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2855
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 2856
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 2857
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 2858
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 2859
    return-void
.end method

.method private updateNotificationBubbleFlags(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "isAppForeground"    # Z

    .line 6983
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6984
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 6985
    .local v1, "metadata":Landroid/app/Notification$BubbleMetadata;
    if-nez v1, :cond_b

    .line 6987
    return-void

    .line 6989
    :cond_b
    if-nez p2, :cond_16

    .line 6991
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v2

    .line 6992
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x2

    .line 6993
    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 6995
    .end local v2    # "flags":I
    :cond_16
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->isBubbleSuppressable()Z

    move-result v2

    if-nez v2, :cond_25

    .line 6997
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v2

    .line 6998
    .restart local v2    # "flags":I
    and-int/lit8 v2, v2, -0x9

    .line 6999
    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 7001
    .end local v2    # "flags":I
    :cond_25
    return-void
.end method

.method private updateNotificationPulse()V
    .registers 3

    .line 10031
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10032
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 10033
    monitor-exit v0

    .line 10034
    return-void

    .line 10033
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "delayed"    # Z

    .line 8493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8494
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_34

    const-string v1, "(Delayed)"

    goto :goto_36

    :cond_34
    const-string v1, ""

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8495
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 8496
    return-void
.end method

.method private writePolicyXml(Ljava/io/OutputStream;ZI)V
    .registers 9
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    if-eqz p2, :cond_10

    .line 1109
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1110
    .local v0, "out":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 1112
    .end local v0    # "out":Landroid/util/TypedXmlSerializer;
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 1114
    .restart local v0    # "out":Landroid/util/TypedXmlSerializer;
    :goto_14
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1115
    const-string/jumbo v2, "notification-policy"

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const-string/jumbo v4, "version"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Landroid/util/TypedXmlSerializer;ZLjava/lang/Integer;I)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1120
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1121
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Landroid/util/TypedXmlSerializer;)V

    .line 1122
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/notification/ConditionProviders;->writeXml(Landroid/util/TypedXmlSerializer;ZI)V

    .line 1123
    if-eqz p2, :cond_4b

    if-nez p3, :cond_4e

    .line 1124
    :cond_4b
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->writeSecureNotificationsPolicy(Landroid/util/TypedXmlSerializer;)V

    .line 1126
    :cond_4e
    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1128
    return-void
.end method

.method private writeSecureNotificationsPolicy(Landroid/util/TypedXmlSerializer;)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12053
    const/4 v0, 0x0

    const-string v1, "allow-secure-notifications-on-lockscreen"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12054
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 12056
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12057
    return-void
.end method


# virtual methods
.method addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;
    .param p4, "needsOngoingFlag"    # Z

    .line 6085
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/notification/NotificationRecord;

    move-result-object v7

    .line 6087
    .local v7, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_26

    .line 6088
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 6089
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move v4, v0

    .line 6090
    .local v4, "isAppForeground":Z
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 6091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 6090
    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6093
    .end local v4    # "isAppForeground":Z
    :cond_26
    return-void
.end method

.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 6049
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6050
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 6051
    return-void

    .line 6053
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    .line 6054
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 6055
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 6056
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 6058
    :cond_23
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 2165
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 2156
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2159
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    :cond_25
    return-void
.end method

.method protected allowDefaultApprovedServices(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 810
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v0

    .line 811
    .local v0, "defaultListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 812
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 813
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowNotificationListener(ILandroid/content/ComponentName;)V

    .line 811
    .end local v2    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 816
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getDefaultPackages()Landroid/util/ArraySet;

    move-result-object v1

    .line 817
    .local v1, "defaultDnds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 818
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->allowDndPackage(ILjava/lang/String;)V

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 821
    .end local v2    # "i":I
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 822
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 23
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v2, :cond_e

    .line 8124
    return v3

    .line 8126
    :cond_e
    const/4 v2, 0x0

    .line 8127
    .local v2, "buzz":Z
    const/4 v4, 0x0

    .line 8128
    .local v4, "beep":Z
    const/4 v5, 0x0

    .line 8130
    .local v5, "blink":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 8134
    .local v6, "key":Ljava/lang/String;
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_25

    .line 8135
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-le v7, v8, :cond_23

    move v7, v9

    goto :goto_2e

    :cond_23
    move v7, v3

    goto :goto_2e

    .line 8136
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    if-lt v7, v8, :cond_2d

    move v7, v9

    goto :goto_2e

    :cond_2d
    move v7, v3

    :goto_2e
    nop

    .line 8138
    .local v7, "aboveThreshold":Z
    if-eqz v6, :cond_3b

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    move v8, v9

    goto :goto_3c

    :cond_3b
    move v8, v3

    .line 8139
    .local v8, "wasBeep":Z
    :goto_3c
    if-eqz v6, :cond_48

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    move v10, v9

    goto :goto_49

    :cond_48
    move v10, v3

    .line 8141
    .local v10, "wasBuzz":Z
    :goto_49
    const/4 v11, 0x0

    .line 8142
    .local v11, "hasValidVibrate":Z
    const/4 v12, 0x0

    .line 8143
    .local v12, "hasValidSound":Z
    const/4 v13, 0x0

    .line 8146
    .local v13, "sentAccessibilityEvent":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 8147
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_5c

    move v14, v9

    goto :goto_5d

    :cond_5c
    move v14, v3

    .line 8148
    .local v14, "suppressedByDnd":Z
    :goto_5d
    iget-boolean v15, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v15, :cond_73

    .line 8149
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v15

    if-le v15, v9, :cond_73

    if-nez v14, :cond_73

    .line 8151
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v15

    if-eqz v15, :cond_73

    .line 8152
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 8153
    const/4 v13, 0x1

    .line 8156
    :cond_73
    const-string v3, "NotificationService"

    if-eqz v7, :cond_164

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v16

    if-eqz v16, :cond_164

    .line 8157
    iget-boolean v15, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v15, :cond_15e

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v15, :cond_15e

    .line 8158
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v15

    .line 8159
    .local v15, "soundUri":Landroid/net/Uri;
    if-eqz v15, :cond_95

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v9, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_95

    const/4 v9, 0x1

    goto :goto_96

    :cond_95
    const/4 v9, 0x0

    :goto_96
    move v12, v9

    .line 8160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v9

    .line 8162
    .local v9, "vibration":Landroid/os/VibrationEffect;
    if-nez v9, :cond_ce

    if-eqz v12, :cond_ce

    move/from16 v17, v2

    .end local v2    # "buzz":Z
    .local v17, "buzz":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 8164
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "beep":Z
    .local v18, "beep":Z
    if-ne v2, v4, :cond_d2

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 8167
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    .line 8166
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_d2

    .line 8168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v2

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-eqz v2, :cond_c6

    const/4 v2, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    .line 8169
    .local v2, "insistent":Z
    :goto_c7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v9

    goto :goto_d2

    .line 8162
    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .local v2, "buzz":Z
    .restart local v4    # "beep":Z
    :cond_ce
    move/from16 v17, v2

    move/from16 v18, v4

    .line 8172
    .end local v2    # "buzz":Z
    .end local v4    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_d2
    :goto_d2
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/android/server/notification/NotificationManagerServiceStub;->adjustVibration(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 8173
    .end local v9    # "vibration":Landroid/os/VibrationEffect;
    .local v2, "vibration":Landroid/os/VibrationEffect;
    if-eqz v2, :cond_de

    const/4 v4, 0x1

    goto :goto_df

    :cond_de
    const/4 v4, 0x0

    :goto_df
    move v11, v4

    .line 8174
    if-nez v12, :cond_e7

    if-eqz v11, :cond_e5

    goto :goto_e7

    :cond_e5
    const/4 v4, 0x0

    goto :goto_e8

    :cond_e7
    :goto_e7
    const/4 v4, 0x1

    .line 8175
    .local v4, "hasAudibleAlert":Z
    :goto_e8
    if-eqz v4, :cond_149

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-nez v9, :cond_149

    .line 8176
    if-nez v13, :cond_f7

    .line 8177
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 8178
    const/4 v9, 0x1

    move v13, v9

    .line 8180
    :cond_f7
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v9, :cond_100

    const-string v9, "Interrupting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    :cond_100
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 8182
    .local v9, "isInsistentUpdate":Z
    if-eqz v12, :cond_11f

    .line 8183
    if-eqz v9, :cond_10b

    .line 8185
    const/16 v18, 0x1

    goto :goto_11f

    .line 8187
    :cond_10b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v19

    if-eqz v19, :cond_117

    .line 8188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 8189
    const/16 v18, 0x1

    goto :goto_11b

    .line 8191
    :cond_117
    invoke-direct {v0, v1, v15}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v18

    .line 8193
    :goto_11b
    if-eqz v18, :cond_11f

    .line 8194
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 8199
    :cond_11f
    :goto_11f
    move/from16 v19, v4

    .end local v4    # "hasAudibleAlert":Z
    .local v19, "hasAudibleAlert":Z
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 8200
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-nez v4, :cond_12b

    const/4 v4, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v4, 0x0

    .line 8202
    .local v4, "ringerModeSilent":Z
    :goto_12c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v20

    if-nez v20, :cond_143

    if-eqz v11, :cond_143

    if-nez v4, :cond_143

    .line 8203
    if-eqz v9, :cond_13b

    .line 8204
    const/16 v17, 0x1

    goto :goto_143

    .line 8206
    :cond_13b
    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z

    move-result v17

    .line 8207
    if-eqz v17, :cond_143

    .line 8208
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 8212
    .end local v4    # "ringerModeSilent":Z
    .end local v9    # "isInsistentUpdate":Z
    :cond_143
    :goto_143
    move/from16 v2, v17

    move/from16 v4, v18

    const/4 v9, 0x4

    goto :goto_16d

    .line 8175
    .end local v19    # "hasAudibleAlert":Z
    .local v4, "hasAudibleAlert":Z
    :cond_149
    move/from16 v19, v4

    .line 8212
    .end local v4    # "hasAudibleAlert":Z
    .restart local v19    # "hasAudibleAlert":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    const/4 v9, 0x4

    and-int/2addr v4, v9

    if-eqz v4, :cond_159

    .line 8213
    const/4 v12, 0x0

    move/from16 v2, v17

    move/from16 v4, v18

    goto :goto_16d

    .line 8212
    :cond_159
    move/from16 v2, v17

    move/from16 v4, v18

    goto :goto_16d

    .line 8157
    .end local v15    # "soundUri":Landroid/net/Uri;
    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .end local v19    # "hasAudibleAlert":Z
    .local v2, "buzz":Z
    .local v4, "beep":Z
    :cond_15e
    move/from16 v17, v2

    move/from16 v18, v4

    const/4 v9, 0x4

    .end local v2    # "buzz":Z
    .end local v4    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    goto :goto_169

    .line 8156
    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .restart local v2    # "buzz":Z
    .restart local v4    # "beep":Z
    :cond_164
    move/from16 v17, v2

    move/from16 v18, v4

    const/4 v9, 0x4

    .line 8219
    .end local v2    # "buzz":Z
    .end local v4    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :goto_169
    move/from16 v2, v17

    move/from16 v4, v18

    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .restart local v2    # "buzz":Z
    .restart local v4    # "beep":Z
    :goto_16d
    if-eqz v8, :cond_174

    if-nez v12, :cond_174

    .line 8220
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 8222
    :cond_174
    if-eqz v10, :cond_17b

    if-nez v11, :cond_17b

    .line 8223
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 8228
    :cond_17b
    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v15

    .line 8229
    .local v15, "wasShowLights":Z
    invoke-virtual {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v16

    if-eqz v16, :cond_19c

    .line 8230
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8231
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 8232
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v9, :cond_19a

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v9, :cond_19a

    .line 8233
    invoke-virtual {v9}, Lcom/android/server/lights/LogicalLight;->pulse()V

    .line 8235
    :cond_19a
    const/4 v5, 0x1

    goto :goto_1a1

    .line 8236
    :cond_19c
    if-eqz v15, :cond_1a1

    .line 8237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 8239
    :cond_1a1
    :goto_1a1
    if-eqz v4, :cond_1a5

    const/4 v9, 0x2

    goto :goto_1a6

    :cond_1a5
    const/4 v9, 0x0

    :goto_1a6
    or-int/2addr v9, v2

    if-eqz v5, :cond_1ac

    const/16 v16, 0x4

    goto :goto_1ae

    :cond_1ac
    const/16 v16, 0x0

    :goto_1ae
    or-int v9, v9, v16

    .line 8240
    .local v9, "buzzBeepBlink":I
    if-lez v9, :cond_25f

    .line 8242
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v16

    const-string v0, "INTERRUPTIVENESS: "

    if-eqz v16, :cond_1f4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v16

    if-eqz v16, :cond_1f4

    .line 8243
    sget-boolean v16, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v16, :cond_1f1

    .line 8244
    move/from16 v16, v7

    .end local v7    # "aboveThreshold":Z
    .local v16, "aboveThreshold":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is not interruptive: summary"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8244
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_245

    .line 8243
    .end local v16    # "aboveThreshold":Z
    .restart local v7    # "aboveThreshold":Z
    :cond_1f1
    move/from16 v16, v7

    .end local v7    # "aboveThreshold":Z
    .restart local v16    # "aboveThreshold":Z
    goto :goto_245

    .line 8242
    .end local v16    # "aboveThreshold":Z
    .restart local v7    # "aboveThreshold":Z
    :cond_1f4
    move/from16 v16, v7

    .line 8247
    .end local v7    # "aboveThreshold":Z
    .restart local v16    # "aboveThreshold":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_21f

    .line 8248
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v7, :cond_245

    .line 8249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8250
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is not interruptive: bubble"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8249
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_245

    .line 8253
    :cond_21f
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 8254
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v7, :cond_245

    .line 8255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8256
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is interruptive: alerted"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8255
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8259
    :cond_245
    :goto_245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v3, 0xc7

    .line 8260
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 8261
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 8262
    invoke-virtual {v0, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 8259
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 8263
    invoke-static {v6, v2, v4, v5}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    goto :goto_262

    .line 8240
    .end local v16    # "aboveThreshold":Z
    .restart local v7    # "aboveThreshold":Z
    :cond_25f
    move/from16 v16, v7

    const/4 v3, 0x1

    .line 8265
    .end local v7    # "aboveThreshold":Z
    .restart local v16    # "aboveThreshold":Z
    :goto_262
    if-nez v2, :cond_268

    if-eqz v4, :cond_267

    goto :goto_268

    :cond_267
    const/4 v3, 0x0

    :cond_268
    :goto_268
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    .line 8268
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->setBuzzBeepBlinkCode(I)V

    .line 8270
    return v9
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 9
    .param p1, "incomingPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "currPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "targetSdkVersion"    # I

    .line 3106
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 3107
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return v0

    .line 3109
    :cond_8
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    .line 3119
    .local v0, "effectsIntroducedInP":[I
    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 3120
    .local v1, "newSuppressedVisualEffects":I
    const/16 v2, 0x1c

    if-ge p3, v2, :cond_34

    .line 3122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 3123
    aget v3, v0, v2

    not-int v3, v3

    and-int/2addr v1, v3

    .line 3124
    iget v3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v4, v0, v2

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 3122
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3128
    .end local v2    # "i":I
    :cond_25
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2d

    .line 3129
    or-int/lit8 v1, v1, 0x8

    .line 3130
    or-int/lit8 v1, v1, 0x4

    .line 3132
    :cond_2d
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_66

    .line 3133
    or-int/lit8 v1, v1, 0x10

    goto :goto_66

    .line 3136
    :cond_34
    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lez v2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    move v2, v3

    .line 3139
    .local v2, "hasNewEffects":Z
    if-eqz v2, :cond_56

    .line 3141
    and-int/lit8 v1, v1, -0x4

    .line 3145
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_47

    .line 3146
    or-int/lit8 v1, v1, 0x2

    .line 3148
    :cond_47
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_66

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_66

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_66

    .line 3153
    or-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 3157
    :cond_56
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_60

    .line 3158
    or-int/lit8 v1, v1, 0x8

    .line 3159
    or-int/lit8 v1, v1, 0x4

    .line 3160
    or-int/lit16 v1, v1, 0x80

    .line 3162
    :cond_60
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_66

    .line 3163
    or-int/lit8 v1, v1, 0x10

    .line 3168
    .end local v2    # "hasNewEffects":Z
    :cond_66
    :goto_66
    return v1

    nop

    :array_68
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

.method canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "aboveThreshold"    # Z

    .line 8276
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 8277
    return v1

    .line 8280
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_b

    .line 8281
    return v1

    .line 8284
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_12

    .line 8285
    return v1

    .line 8288
    :cond_12
    if-nez p2, :cond_15

    .line 8289
    return v1

    .line 8292
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    .line 8293
    return v1

    .line 8296
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 8300
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_34

    .line 8301
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getBuzzBeepBlinkCode()I

    move-result v2

    if-nez v2, :cond_34

    .line 8302
    return v3

    .line 8307
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 8308
    return v1

    .line 8311
    :cond_49
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 8312
    return v1

    .line 8315
    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 8316
    return v1

    .line 8319
    :cond_57
    return v3
.end method

.method canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "requiredPermission"    # Ljava/lang/String;

    .line 10344
    const/4 v0, 0x1

    .line 10345
    .local v0, "canUseManagedServices":Z
    if-eqz p3, :cond_19

    .line 10347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p3, p1, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_11

    if-eqz v1, :cond_10

    .line 10349
    const/4 v0, 0x0

    .line 10353
    :cond_10
    goto :goto_19

    .line 10351
    :catch_11
    move-exception v1

    .line 10352
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    const-string v3, "can\'t talk to pm"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10356
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return v0
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 22
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .line 9694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 9695
    .local v10, "cancellationElapsedTimeMs":J
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move-wide v8, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZJ)V

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9728
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 29
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "mustHaveFlags"    # I
    .param p6, "mustNotHaveFlags"    # I
    .param p7, "doit"    # Z
    .param p8, "userId"    # I
    .param p9, "reason"    # I
    .param p10, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 9546
    .local v14, "cancellationElapsedTimeMs":J
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v16, v11

    move-object/from16 v11, p4

    move-object/from16 v17, v13

    move-wide v12, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;J)V

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9583
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;II)V
    .registers 40
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "rank"    # I
    .param p12, "count"    # I
    .param p13, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p14, "dismissalSurface"    # I
    .param p15, "dismissalSentiment"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

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

    move/from16 v17, p14

    move/from16 v18, p15

    .line 9506
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v19, v1

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    move-object/from16 v20, v0

    move-object v0, v1

    .line 9508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-wide/from16 v15, v21

    move-object/from16 v23, v1

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;JII)V

    .line 9506
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 9512
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 28
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9482
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/16 v15, -0x3e8

    move-object/from16 v0, p0

    move/from16 v1, p1

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

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;II)V

    .line 9487
    return-void
.end method

.method cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .registers 29
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    .line 6610
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v12, p3

    move-object/from16 v11, p5

    move/from16 v10, p6

    const-string v6, "cancelNotificationWithTag"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p7

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 6614
    .end local p7    # "userId":I
    .local v9, "userId":I
    invoke-virtual {v13, v15, v14, v12, v9}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 6616
    .local v7, "uid":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_54

    .line 6617
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trying to cancel notification for nonexistent pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6619
    return-void

    .line 6626
    :cond_54
    invoke-static/range {p1 .. p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, v15, v12, v14, v9}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 6628
    iget-object v1, v13, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6630
    :try_start_67
    invoke-virtual {v13, v14, v11, v10, v9}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 6631
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_a3

    .line 6632
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    goto :goto_a3

    .line 6633
    :cond_7c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have permission to cancel a notification they did not post "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v7    # "uid":I
    .end local v9    # "userId":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "callingUid":I
    .end local p4    # "callingPid":I
    .end local p5    # "tag":Ljava/lang/String;
    .end local p6    # "id":I
    throw v2

    .line 6637
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v7    # "uid":I
    .restart local v9    # "userId":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "callingUid":I
    .restart local p4    # "callingPid":I
    .restart local p5    # "tag":Ljava/lang/String;
    .restart local p6    # "id":I
    :cond_a3
    :goto_a3
    monitor-exit v1

    goto :goto_a8

    :catchall_a5
    move-exception v0

    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_67 .. :try_end_a7} :catchall_a5

    throw v0

    .line 6642
    :cond_a8
    :goto_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_b1

    const/4 v0, 0x0

    move v8, v0

    goto :goto_b4

    .line 6643
    :cond_b1
    const/16 v0, 0x440

    move v8, v0

    :goto_b4
    nop

    .line 6644
    .local v8, "mustNotHaveFlags":I
    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move v2, v7

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v19, v7

    .end local v7    # "uid":I
    .local v19, "uid":I
    move v7, v0

    move/from16 v20, v9

    .end local v9    # "userId":I
    .local v20, "userId":I
    move/from16 v9, v16

    move/from16 v10, v20

    move/from16 v11, v17

    move-object/from16 v12, v18

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 6646
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 8
    .param p1, "index"    # I

    .line 8621
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 8622
    .local v0, "record":Lcom/android/server/notification/toast/ToastRecord;
    invoke-virtual {v0}, Lcom/android/server/notification/toast/ToastRecord;->hide()V

    .line 8624
    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 8625
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 8628
    :cond_10
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    .line 8630
    .local v2, "lastToast":Lcom/android/server/notification/toast/ToastRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, v2, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v5, v2, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 8637
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Lcom/android/server/notification/toast/ToastRecord;)V

    .line 8639
    iget v1, v0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 8640
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 8644
    instance-of v1, v2, Lcom/android/server/notification/toast/TextToastRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V

    .line 8646
    :cond_36
    return-void
.end method

.method checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 26
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p6, "isAutogroup"    # Z

    .line 7091
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p5

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 7092
    .local v5, "n":Landroid/app/Notification;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 7094
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v7

    .line 7095
    .local v7, "opPkg":Ljava/lang/String;
    nop

    .line 7096
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "android"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    move v10, v0

    .line 7097
    .local v10, "isSystemNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v11

    .line 7101
    .local v11, "isNotificationFromListener":Z
    if-nez v10, :cond_156

    if-nez v11, :cond_156

    .line 7102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 7103
    .local v12, "callingUid":I
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v13

    .line 7104
    :try_start_41
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_14b

    if-nez v0, :cond_80

    .line 7107
    :try_start_51
    invoke-virtual {v1, v12, v2, v7}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_80

    .line 7112
    :cond_58
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instant app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot create notifications"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "n":Landroid/app/Notification;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "opPkg":Ljava/lang/String;
    .end local v10    # "isSystemNotification":Z
    .end local v11    # "isNotificationFromListener":Z
    .end local v12    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "userId":I
    .end local p2    # "uid":I
    .end local p3    # "id":I
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local p6    # "isAutogroup":Z
    throw v0
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_77

    .line 7133
    .restart local v5    # "n":Landroid/app/Notification;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "opPkg":Ljava/lang/String;
    .restart local v10    # "isSystemNotification":Z
    .restart local v11    # "isNotificationFromListener":Z
    .restart local v12    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "uid":I
    .restart local p3    # "id":I
    .restart local p4    # "tag":Ljava/lang/String;
    .restart local p5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local p6    # "isAutogroup":Z
    :catchall_77
    move-exception v0

    move/from16 v9, p3

    move/from16 v16, v10

    move-object/from16 v10, p4

    goto/16 :goto_152

    .line 7117
    :cond_80
    :goto_80
    :try_start_80
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_14b

    if-eqz v0, :cond_102

    .line 7118
    :try_start_90
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v0

    if-nez v0, :cond_f9

    if-nez p6, :cond_f9

    .line 7121
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v0

    .line 7122
    .local v0, "appEnqueueRate":F
    iget v14, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v14, v0, v14

    if-lez v14, :cond_f6

    .line 7123
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v8, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 7124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_b1
    .catchall {:try_start_90 .. :try_end_b1} :catchall_fc

    .line 7125
    .local v14, "now":J
    move/from16 v16, v10

    .end local v10    # "isSystemNotification":Z
    .local v16, "isSystemNotification":Z
    :try_start_b3
    iget-wide v9, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v8, v14, v9

    const-wide/16 v17, 0x1388

    cmp-long v8, v8, v17

    if-lez v8, :cond_f3

    .line 7126
    const-string v8, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package enqueue rate is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Shedding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 7127
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7126
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7128
    iput-wide v14, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 7130
    :cond_f3
    monitor-exit v13

    const/4 v8, 0x0

    return v8

    .line 7122
    .end local v14    # "now":J
    .end local v16    # "isSystemNotification":Z
    .restart local v10    # "isSystemNotification":Z
    :cond_f6
    move/from16 v16, v10

    .end local v10    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    goto :goto_104

    .line 7118
    .end local v0    # "appEnqueueRate":F
    .end local v16    # "isSystemNotification":Z
    .restart local v10    # "isSystemNotification":Z
    :cond_f9
    move/from16 v16, v10

    .end local v10    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    goto :goto_104

    .line 7133
    .end local v16    # "isSystemNotification":Z
    .restart local v10    # "isSystemNotification":Z
    :catchall_fc
    move-exception v0

    move/from16 v16, v10

    move/from16 v9, p3

    goto :goto_150

    .line 7117
    :cond_102
    move/from16 v16, v10

    .line 7133
    .end local v10    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_104
    monitor-exit v13
    :try_end_105
    .catchall {:try_start_b3 .. :try_end_105} :catchall_145

    .line 7136
    invoke-virtual {v5}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_140

    .line 7137
    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual {v1, v6, v2, v9, v10}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 7138
    .local v0, "count":I
    const/16 v13, 0x32

    if-lt v0, v13, :cond_15c

    .line 7139
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v8, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 7140
    const-string v8, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package has already posted or enqueued "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " notifications.  Not showing more.  package="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7142
    const/4 v8, 0x0

    return v8

    .line 7136
    .end local v0    # "count":I
    :cond_140
    move/from16 v9, p3

    move-object/from16 v10, p4

    goto :goto_15c

    .line 7133
    :catchall_145
    move-exception v0

    move/from16 v9, p3

    move-object/from16 v10, p4

    goto :goto_152

    .end local v16    # "isSystemNotification":Z
    .restart local v10    # "isSystemNotification":Z
    :catchall_14b
    move-exception v0

    move/from16 v9, p3

    move/from16 v16, v10

    :goto_150
    move-object/from16 v10, p4

    .end local v10    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_152
    :try_start_152
    monitor-exit v13
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_154

    throw v0

    :catchall_154
    move-exception v0

    goto :goto_152

    .line 7101
    .end local v12    # "callingUid":I
    .end local v16    # "isSystemNotification":Z
    .restart local v10    # "isSystemNotification":Z
    :cond_156
    move/from16 v9, p3

    move/from16 v16, v10

    move-object/from16 v10, p4

    .line 7148
    .end local v10    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :cond_15c
    :goto_15c
    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    const/high16 v12, 0x4000000

    if-eqz v0, :cond_1a4

    .line 7149
    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1a4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 7151
    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v13

    .line 7150
    invoke-virtual {v0, v13}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v0

    invoke-virtual {v1, v0, v12}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v0

    if-nez v0, :cond_187

    goto :goto_1a4

    .line 7153
    :cond_187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " Not posted. PendingIntents attached to bubbles must be mutable"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7157
    :cond_1a4
    :goto_1a4
    iget-object v0, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_1f2

    .line 7158
    iget-object v0, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v13, v0

    const/4 v14, 0x0

    :goto_1ac
    if-ge v14, v13, :cond_1f2

    aget-object v15, v0, v14

    .line 7159
    .local v15, "action":Landroid/app/Notification$Action;
    invoke-virtual {v15}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v17

    if-nez v17, :cond_1bc

    invoke-virtual {v15}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v17

    if-eqz v17, :cond_1d0

    :cond_1bc
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v12, v15, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 7160
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v8

    const/high16 v12, 0x4000000

    invoke-virtual {v1, v8, v12}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v8

    if-nez v8, :cond_1d5

    .line 7158
    .end local v15    # "action":Landroid/app/Notification$Action;
    :cond_1d0
    add-int/lit8 v14, v14, 0x1

    const/high16 v12, 0x4000000

    goto :goto_1ac

    .line 7162
    .restart local v15    # "action":Landroid/app/Notification$Action;
    :cond_1d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " Not posted. PendingIntents attached to actions with remote inputs must be mutable"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7169
    .end local v15    # "action":Landroid/app/Notification$Action;
    :cond_1f2
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24e

    .line 7170
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_200
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$Action;

    .line 7171
    .local v8, "action":Landroid/app/Notification$Action;
    invoke-virtual {v8}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-nez v12, :cond_21c

    invoke-virtual {v8}, Landroid/app/Notification$Action;->getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_219

    goto :goto_21c

    :cond_219
    const/high16 v13, 0x4000000

    goto :goto_230

    :cond_21c
    :goto_21c
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    iget-object v13, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 7172
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/ActivityManagerInternal;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v12

    const/high16 v13, 0x4000000

    invoke-virtual {v1, v12, v13}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v12

    if-nez v12, :cond_231

    .line 7178
    .end local v8    # "action":Landroid/app/Notification$Action;
    :goto_230
    goto :goto_200

    .line 7174
    .restart local v8    # "action":Landroid/app/Notification$Action;
    :cond_231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Not posted. PendingIntents attached to contextual actions with remote inputs must be mutable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7181
    .end local v8    # "action":Landroid/app/Notification$Action;
    :cond_24e
    const-class v0, Landroid/app/Notification$CallStyle;

    invoke-virtual {v5, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_288

    .line 7182
    iget v0, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_25e

    const/4 v0, 0x1

    goto :goto_25f

    :cond_25e
    const/4 v0, 0x0

    .line 7183
    .local v0, "isForegroundService":Z
    :goto_25f
    iget-object v8, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_265

    const/4 v8, 0x1

    goto :goto_266

    :cond_265
    const/4 v8, 0x0

    .line 7184
    .local v8, "hasFullScreenIntent":Z
    :goto_266
    if-nez v0, :cond_288

    if-eqz v8, :cond_26b

    goto :goto_288

    .line 7185
    :cond_26b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Not posted. CallStyle notifications must either be for a foreground Service or use a fullScreenIntent."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7192
    .end local v0    # "isForegroundService":Z
    .end local v8    # "hasFullScreenIntent":Z
    :cond_288
    :goto_288
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d7

    .line 7193
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v8, 0x6

    .line 7194
    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v8, 0x33f

    .line 7195
    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 7193
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 7196
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {v0, v8, v4}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 7199
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2cd

    .line 7200
    const-string v0, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignored enqueue for snoozed notification "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7202
    :cond_2cd
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 7203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 7204
    const/4 v0, 0x0

    return v0

    .line 7208
    :cond_2d7
    invoke-direct {v1, v6, v3}, Lcom/android/server/notification/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;I)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    move v8, v0

    .line 7209
    .local v8, "isBlocked":Z
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 7210
    :try_start_2e1
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 7211
    monitor-exit v12
    :try_end_2e7
    .catchall {:try_start_2e1 .. :try_end_2e7} :catchall_342

    .line 7212
    if-eqz v8, :cond_326

    invoke-virtual {v5}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-nez v0, :cond_326

    invoke-direct {v1, v6, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->isCallNotification(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_326

    .line 7213
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_31f

    .line 7214
    const-string v0, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suppressing notification from package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " by user request."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7217
    :cond_31f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7218
    const/4 v0, 0x0

    return v0

    .line 7223
    :cond_326
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    .line 7224
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 7223
    invoke-interface {v0, v2, v3, v12, v13}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDeniedDemoPostNotification(IILandroid/app/Notification;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_340

    if-nez v11, :cond_340

    .line 7226
    const/4 v0, 0x0

    return v0

    .line 7229
    :cond_340
    const/4 v0, 0x1

    return v0

    .line 7211
    :catchall_342
    move-exception v0

    :try_start_343
    monitor-exit v12
    :try_end_344
    .catchall {:try_start_343 .. :try_end_344} :catchall_342

    throw v0
.end method

.method protected checkNotificationListenerAccess()V
    .registers 4

    .line 5985
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5986
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATION_LISTENERS"

    const-string v2, "Caller must hold android.permission.MANAGE_NOTIFICATION_LISTENERS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5990
    :cond_11
    return-void
.end method

.method clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 6099
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    iget-object v0, v12, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/ArrayMap;

    .line 6100
    .local v14, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_44

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 6101
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v15

    .line 6102
    .local v15, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v15, :cond_44

    .line 6103
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    .line 6104
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v9, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 6108
    .end local v15    # "removed":Lcom/android/server/notification/NotificationRecord;
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_44
    return-void
.end method

.method clearNotifications()V
    .registers 3

    .line 2146
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2148
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2149
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2150
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2151
    monitor-exit v0

    .line 2152
    return-void

    .line 2151
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method clearSoundLocked()V
    .registers 4

    .line 1622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 1623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1625
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1626
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_19

    .line 1627
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_19

    .line 1631
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    throw v2

    .line 1629
    :catch_18
    move-exception v2

    .line 1631
    :cond_19
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    nop

    .line 1633
    return-void
.end method

.method clearVibrateLocked()V
    .registers 4

    .line 1637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 1638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1640
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    nop

    .line 1644
    return-void

    .line 1642
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    throw v2
.end method

.method correctCategory(III)I
    .registers 5
    .param p1, "requestedCategoryList"    # I
    .param p2, "categoryType"    # I
    .param p3, "currentCategoryList"    # I

    .line 3076
    and-int v0, p1, p2

    if-eqz v0, :cond_b

    and-int v0, p3, p2

    if-nez v0, :cond_b

    .line 3078
    not-int v0, p2

    and-int/2addr p1, v0

    goto :goto_14

    .line 3079
    :cond_b
    and-int v0, p1, p2

    if-nez v0, :cond_14

    and-int v0, p3, p2

    if-eqz v0, :cond_14

    .line 3081
    or-int/2addr p1, p2

    .line 3083
    :cond_14
    :goto_14
    return p1
.end method

.method createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/notification/NotificationRecord;
    .registers 41
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;
    .param p4, "needsOngoingFlag"    # Z

    .line 6119
    move-object/from16 v8, p0

    move-object/from16 v7, p2

    const/4 v1, 0x0

    .line 6120
    .local v1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    move/from16 v2, p1

    invoke-virtual {v0, v7, v2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v6

    .line 6121
    .local v6, "isPermissionFixed":Z
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6122
    :try_start_10
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1a5

    .line 6123
    .local v0, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    const/16 v16, 0x0

    if-nez v0, :cond_25

    .line 6126
    :try_start_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_20

    return-object v16

    .line 6184
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_20
    move-exception v0

    move-object v10, v5

    move v11, v6

    goto/16 :goto_1a8

    .line 6128
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    move-object/from16 v17, v3

    .line 6129
    .local v17, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    move-object/from16 v18, v3

    .line 6130
    .local v18, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_1a5

    move v2, v3

    .line 6131
    .end local p1    # "userId":I
    .local v2, "userId":I
    :try_start_3a
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 6132
    .local v3, "uid":I
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_1a1

    .line 6133
    .local v9, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_59

    .line 6134
    :try_start_4c
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_54

    move-object v9, v10

    move-object v15, v9

    goto :goto_5a

    .line 6184
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "uid":I
    .end local v9    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "channel":Landroid/app/NotificationChannel;
    .end local v18    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    :catchall_54
    move-exception v0

    move-object v10, v5

    move v11, v6

    goto/16 :goto_1a8

    .line 6133
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v3    # "uid":I
    .restart local v9    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "channel":Landroid/app/NotificationChannel;
    .restart local v18    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    :cond_59
    move-object v15, v9

    .line 6136
    .end local v9    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v15, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5a
    :try_start_5a
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6137
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_1a1

    if-nez v9, :cond_170

    .line 6139
    nop

    .line 6140
    :try_start_6a
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.appInfo"

    const-class v11, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    move-object v14, v9

    .line 6142
    .local v14, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v13, v9

    .line 6143
    .local v13, "extras":Landroid/os/Bundle;
    const-string v9, "android.appInfo"

    invoke-virtual {v13, v9, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6144
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    .line 6145
    .local v12, "channelId":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$Builder;

    .line 6146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6147
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6148
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6149
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string/jumbo v11, "ranker_group"

    .line 6150
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/16 v11, 0x400

    .line 6151
    invoke-virtual {v9, v11, v10}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v9

    const/16 v11, 0x200

    .line 6152
    invoke-virtual {v9, v11, v10}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6153
    move/from16 v11, p4

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6154
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->color:I

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6155
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 6156
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    move-object v10, v9

    .line 6157
    .local v10, "summaryNotification":Landroid/app/Notification;
    iget-object v9, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move-object/from16 v31, v9

    .line 6159
    .local v31, "appIntent":Landroid/content/Intent;
    if-eqz v31, :cond_11d

    .line 6160
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    const/16 v19, 0x0

    const/high16 v20, 0x4000000

    const/16 v21, 0x0

    move-object/from16 p1, v13

    .end local v13    # "extras":Landroid/os/Bundle;
    .local p1, "extras":Landroid/os/Bundle;
    iget v13, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v32, v10

    .end local v10    # "summaryNotification":Landroid/app/Notification;
    .local v32, "summaryNotification":Landroid/app/Notification;
    move/from16 v10, v19

    move-object/from16 v11, v31

    move-object/from16 v33, v12

    .end local v12    # "channelId":Ljava/lang/String;
    .local v33, "channelId":Ljava/lang/String;
    move/from16 v12, v20

    move-object/from16 v34, p1

    move/from16 v19, v13

    .end local p1    # "extras":Landroid/os/Bundle;
    .local v34, "extras":Landroid/os/Bundle;
    move-object/from16 v13, v21

    move-object/from16 v35, v14

    .end local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v35, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v14, p2

    move-object v8, v15

    .end local v15    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v15, v19

    invoke-virtual/range {v9 .. v15}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v9

    move-object/from16 v10, v32

    .end local v32    # "summaryNotification":Landroid/app/Notification;
    .restart local v10    # "summaryNotification":Landroid/app/Notification;
    iput-object v9, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_124

    .line 6159
    .end local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "channelId":Ljava/lang/String;
    .end local v34    # "extras":Landroid/os/Bundle;
    .end local v35    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "channelId":Ljava/lang/String;
    .restart local v13    # "extras":Landroid/os/Bundle;
    .restart local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11d
    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object v8, v15

    .line 6164
    .end local v12    # "channelId":Ljava/lang/String;
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v14    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v33    # "channelId":Ljava/lang/String;
    .restart local v34    # "extras":Landroid/os/Bundle;
    .restart local v35    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_124
    new-instance v9, Landroid/service/notification/StatusBarNotification;

    .line 6165
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 6166
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v21

    const v22, 0x7fffffff

    const-string/jumbo v23, "ranker_group"

    .line 6168
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v24

    .line 6169
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v25

    .line 6170
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v27

    const-string/jumbo v28, "ranker_group"

    .line 6171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v19, v9

    move-object/from16 v26, v10

    invoke-direct/range {v19 .. v30}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 6172
    .local v9, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v11, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 6173
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v13

    invoke-direct {v11, v12, v9, v13}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    move-object v1, v11

    .line 6174
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 6175
    nop

    .line 6176
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v11

    .line 6175
    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 6177
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16e
    .catchall {:try_start_6a .. :try_end_16e} :catchall_54

    move-object v9, v1

    goto :goto_172

    .line 6137
    .end local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "summaryNotification":Landroid/app/Notification;
    .end local v31    # "appIntent":Landroid/content/Intent;
    .end local v33    # "channelId":Ljava/lang/String;
    .end local v34    # "extras":Landroid/os/Bundle;
    .end local v35    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_170
    move-object v8, v15

    .end local v15    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v1

    .line 6179
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v9, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_172
    if-eqz v9, :cond_19a

    .line 6180
    :try_start_174
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v10

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v11
    :try_end_184
    .catchall {:try_start_174 .. :try_end_184} :catchall_195

    const/4 v12, 0x1

    .line 6179
    move-object/from16 v1, p0

    move v4, v10

    move-object v10, v5

    move-object v5, v11

    move v11, v6

    .end local v6    # "isPermissionFixed":Z
    .local v11, "isPermissionFixed":Z
    move-object v6, v9

    move v7, v12

    :try_start_18d
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 6182
    monitor-exit v10

    return-object v9

    .line 6184
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "uid":I
    .end local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "isPermissionFixed":Z
    .end local v17    # "channel":Landroid/app/NotificationChannel;
    .end local v18    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v6    # "isPermissionFixed":Z
    :catchall_195
    move-exception v0

    move-object v10, v5

    move v11, v6

    move-object v1, v9

    .end local v6    # "isPermissionFixed":Z
    .restart local v11    # "isPermissionFixed":Z
    goto :goto_1a8

    .line 6179
    .end local v11    # "isPermissionFixed":Z
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v3    # "uid":I
    .restart local v6    # "isPermissionFixed":Z
    .restart local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "channel":Landroid/app/NotificationChannel;
    .restart local v18    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    :cond_19a
    move-object v10, v5

    move v11, v6

    .line 6184
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "uid":I
    .end local v6    # "isPermissionFixed":Z
    .end local v8    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "channel":Landroid/app/NotificationChannel;
    .end local v18    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v11    # "isPermissionFixed":Z
    :cond_19c
    monitor-exit v10
    :try_end_19d
    .catchall {:try_start_18d .. :try_end_19d} :catchall_19e

    .line 6185
    return-object v16

    .line 6184
    :catchall_19e
    move-exception v0

    move-object v1, v9

    goto :goto_1a8

    .end local v9    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v11    # "isPermissionFixed":Z
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "isPermissionFixed":Z
    :catchall_1a1
    move-exception v0

    move-object v10, v5

    move v11, v6

    .end local v6    # "isPermissionFixed":Z
    .restart local v11    # "isPermissionFixed":Z
    goto :goto_1a8

    .end local v2    # "userId":I
    .end local v11    # "isPermissionFixed":Z
    .restart local v6    # "isPermissionFixed":Z
    .local p1, "userId":I
    :catchall_1a5
    move-exception v0

    move-object v10, v5

    move v11, v6

    .end local v6    # "isPermissionFixed":Z
    .end local p1    # "userId":I
    .restart local v2    # "userId":I
    .restart local v11    # "isPermissionFixed":Z
    :goto_1a8
    :try_start_1a8
    monitor-exit v10
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1aa

    throw v0

    :catchall_1aa
    move-exception v0

    goto :goto_1a8
.end method

.method createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromApp"    # Z
    .param p5, "fromListener"    # Z

    .line 2942
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2946
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 2947
    .local v0, "preUpdate":Landroid/app/NotificationChannelGroup;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 2949
    if-nez p4, :cond_1a

    .line 2950
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 2952
    :cond_1a
    if-nez p5, :cond_2a

    .line 2953
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2954
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 2953
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2957
    :cond_2a
    return-void
.end method

.method protected createReviewPermissionsNotification()Landroid/app/Notification;
    .registers 14

    .line 12062
    const v0, 0x1040864

    .line 12063
    .local v0, "title":I
    const v1, 0x1040863

    .line 12067
    .local v1, "content":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS_FOR_REVIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12068
    .local v2, "tapIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "REVIEW_NOTIF_ACTION_REMIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12069
    .local v3, "remindIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "REVIEW_NOTIF_ACTION_DISMISS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12070
    .local v4, "dismissIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "REVIEW_NOTIF_ACTION_CANCELED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12073
    .local v5, "swipeIntent":Landroid/content/Intent;
    new-instance v6, Landroid/app/Notification$Action$Builder;

    .line 12074
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040862

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12077
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 12076
    const/4 v9, 0x0

    const/high16 v10, 0xc000000

    invoke-static {v8, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const/4 v11, 0x0

    invoke-direct {v6, v11, v7, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 12079
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    .line 12080
    .local v6, "remindMe":Landroid/app/Notification$Action;
    new-instance v7, Landroid/app/Notification$Action$Builder;

    .line 12081
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x1040861

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 12084
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 12083
    invoke-static {v12, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-direct {v7, v11, v8, v12}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 12086
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 12088
    .local v7, "dismiss":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12089
    const v11, 0x1080850

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12090
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12091
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12092
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 12094
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12095
    const/16 v11, 0x20

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12096
    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12097
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12098
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12099
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 12101
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 12088
    return-object v8
.end method

.method protected doChannelWarningToast(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "forUid"    # I
    .param p2, "toastText"    # Ljava/lang/CharSequence;

    .line 7031
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 7041
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 6354
    .local p3, "pkgPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6355
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 6356
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6358
    :cond_16
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 6360
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 6362
    .local v0, "zenOnly":Z
    :goto_26
    if-nez v0, :cond_55

    .line 6363
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 6364
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6365
    .local v2, "N":I
    if-lez v2, :cond_50

    .line 6366
    const-string v3, "  Toast Queue:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6367
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v2, :cond_4b

    .line 6368
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/toast/ToastRecord;

    const-string v5, "    "

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/notification/toast/ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6367
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 6370
    .end local v3    # "i":I
    :cond_4b
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6372
    :cond_50
    monitor-exit v1

    goto :goto_55

    .end local v2    # "N":I
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_52

    throw v2

    .line 6375
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6376
    if-nez v0, :cond_1f5

    .line 6379
    :try_start_5a
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v2, :cond_61

    .line 6380
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6382
    :cond_61
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v2, :cond_18f

    .line 6383
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6384
    .restart local v2    # "N":I
    if-lez v2, :cond_97

    .line 6385
    const-string v3, "  Lights List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6386
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_73
    if-ge v3, v2, :cond_92

    .line 6387
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_7f

    .line 6388
    const-string v4, "  > "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_84

    .line 6390
    :cond_7f
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6392
    :goto_84
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6386
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 6394
    .end local v3    # "i":I
    :cond_92
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6396
    :cond_97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mUseAttentionLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHasLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mNotificationPulseEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotificationKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisableNotificationEffects="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mMaxPackageEnqueueRate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  hideSilentStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 6406
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6405
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6408
    .end local v2    # "N":I
    :cond_18f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mArchive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6409
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6411
    if-nez v0, :cond_1f5

    .line 6412
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6413
    .restart local v2    # "N":I
    if-lez v2, :cond_1ec

    .line 6414
    const-string v3, "  Enqueued Notification List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6415
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1c0
    if-ge v3, v2, :cond_1e7

    .line 6416
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 6417
    .local v4, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v5, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v5, :cond_1d9

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_1d9

    goto :goto_1e4

    .line 6418
    :cond_1d9
    const-string v5, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 6415
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1e4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c0

    .line 6420
    .end local v3    # "i":I
    :cond_1e7
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6423
    :cond_1ec
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_1f5

    .line 6486
    .end local v2    # "N":I
    :catchall_1f2
    move-exception v2

    goto/16 :goto_33f

    .line 6427
    :cond_1f5
    :goto_1f5
    if-nez v0, :cond_290

    .line 6428
    const-string v2, "\n  Ranking Config:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6429
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6431
    const-string v2, "\n Notification Preferences:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6432
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 6434
    const-string v2, "\n  Notification listeners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6435
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6436
    const-string v2, "    mListenerHints: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 6437
    const-string v2, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6438
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6439
    .restart local v2    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_22f
    if-ge v3, v2, :cond_281

    .line 6440
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 6441
    .local v4, "hint":I
    if-lez v3, :cond_23e

    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 6442
    :cond_23e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hint["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6444
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 6445
    .local v5, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 6447
    .local v6, "listenerSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_267
    if-ge v7, v6, :cond_27e

    .line 6448
    if-lez v7, :cond_270

    const/16 v8, 0x2c

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 6449
    :cond_270
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 6450
    .local v8, "listener":Landroid/content/ComponentName;
    if-eqz v8, :cond_27b

    .line 6451
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6447
    .end local v8    # "listener":Landroid/content/ComponentName;
    :cond_27b
    add-int/lit8 v7, v7, 0x1

    goto :goto_267

    .line 6439
    .end local v4    # "hint":I
    .end local v5    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v6    # "listenerSize":I
    .end local v7    # "j":I
    :cond_27e
    add-int/lit8 v3, v3, 0x1

    goto :goto_22f

    .line 6455
    .end local v3    # "i":I
    :cond_281
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 6456
    const-string v3, "\n  Notification assistant services:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6457
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6460
    .end local v2    # "N":I
    :cond_290
    iget-boolean v2, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v2, :cond_296

    if-eqz v0, :cond_2b6

    .line 6461
    :cond_296
    const-string v2, "\n  Zen Mode:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6462
    const-string v2, "    mInterruptionFilter="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 6463
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6465
    const-string v2, "\n  Zen Log:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6466
    const-string v2, "    "

    invoke-static {p1, v2}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6469
    :cond_2b6
    const-string v2, "\n  Condition providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6470
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6472
    const-string v2, "\n  Group summaries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6473
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_328

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6474
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 6475
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6476
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_327

    .line 6477
    const-string v5, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6478
    const-string v5, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 6480
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_327
    goto :goto_2cf

    .line 6482
    :cond_328
    if-nez v0, :cond_336

    .line 6483
    const-string v2, "\n  Usage Stats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6484
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6486
    :cond_336
    monitor-exit v1
    :try_end_337
    .catchall {:try_start_5a .. :try_end_337} :catchall_1f2

    .line 6488
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerServiceStub;->dumpLight(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 6490
    return-void

    .line 6486
    :goto_33f
    :try_start_33f
    monitor-exit v1
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_1f2

    throw v2
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "incomingUserId"    # I

    .line 6657
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V

    .line 6659
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V
    .registers 44
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "incomingUserId"    # I
    .param p9, "postSilently"    # Z

    .line 6664
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    move/from16 v11, p6

    move-object/from16 v10, p7

    move/from16 v9, p8

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, " notification="

    const-string v2, " id="

    const-string v7, "NotificationService"

    if-eqz v0, :cond_40

    .line 6665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueNotificationInternal: pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    :cond_40
    if-eqz v15, :cond_3f0

    if-eqz v10, :cond_3f0

    .line 6675
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-interface {v0, v1, v10, v13, v14}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDeniedLocalNotification(Landroid/app/AppOpsManager;Landroid/app/Notification;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 6677
    return-void

    .line 6681
    :cond_51
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "enqueueNotification"

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p8

    move-object/from16 v21, v7

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 6683
    .local v7, "userId":I
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 6687
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {v8, v14, v15, v13, v7}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    .line 6689
    .local v5, "notificationUid":I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_3b4

    .line 6694
    invoke-direct {v8, v10}, Lcom/android/server/notification/NotificationManagerService;->checkRestrictedCategories(Landroid/app/Notification;)V

    .line 6698
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v22, v5

    .end local v5    # "notificationUid":I
    .local v22, "notificationUid":I
    move/from16 v5, p6

    move-object/from16 v23, v6

    .end local v6    # "user":Landroid/os/UserHandle;
    .local v23, "user":Landroid/os/UserHandle;
    move v6, v7

    :try_start_80
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_396

    .line 6705
    nop

    .line 6712
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move-object/from16 v2, p7

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v6

    .line 6714
    .local v6, "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    sget-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    if-ne v6, v0, :cond_b0

    .line 6718
    invoke-virtual {v8, v15, v12, v11, v7}, Lcom/android/server/notification/NotificationManagerService;->isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 6719
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v24, v6

    .end local v6    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .local v24, "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 6720
    return-void

    .line 6718
    .end local v24    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .restart local v6    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    :cond_ad
    move-object/from16 v24, v6

    .end local v6    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .restart local v24    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    goto :goto_b2

    .line 6714
    .end local v24    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .restart local v6    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    :cond_b0
    move-object/from16 v24, v6

    .line 6724
    .end local v6    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .restart local v24    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    :goto_b2
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 6726
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    .line 6728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move v6, v9

    move-object v9, v0

    move-object v5, v10

    move-object/from16 v10, p1

    move v4, v11

    move-object/from16 v11, p2

    move-object v3, v12

    move/from16 v12, p6

    move v2, v13

    move-object/from16 v13, p5

    move-object v1, v14

    move/from16 v14, v22

    move/from16 v15, p4

    move-object/from16 v16, p7

    move-object/from16 v17, v23

    invoke-direct/range {v9 .. v20}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 6731
    .local v9, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 6732
    .local v0, "channelId":Ljava/lang/String;
    iget-boolean v10, v8, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v10, :cond_f7

    new-instance v10, Landroid/app/Notification$TvExtender;

    invoke-direct {v10, v5}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v10}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f7

    .line 6733
    new-instance v10, Landroid/app/Notification$TvExtender;

    invoke-direct {v10, v5}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v10}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_f8

    .line 6735
    :cond_f7
    move-object v10, v0

    .end local v0    # "channelId":Ljava/lang/String;
    .local v10, "channelId":Ljava/lang/String;
    :goto_f8
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v11

    .line 6736
    .local v11, "shortcutId":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v14, v1

    move-object v1, v0

    move v15, v2

    move-object/from16 v2, p1

    move/from16 v3, v22

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v16, v11

    move v11, v6

    .end local v11    # "shortcutId":Ljava/lang/String;
    .local v16, "shortcutId":Ljava/lang/String;
    move v6, v12

    move v12, v7

    .end local v7    # "userId":I
    .local v12, "userId":I
    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v13

    .line 6739
    .local v13, "channel":Landroid/app/NotificationChannel;
    const/4 v0, 0x1

    if-nez v13, :cond_1c7

    .line 6740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Channel found for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incomingUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notificationUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, v22

    .end local v22    # "notificationUid":I
    .local v4, "notificationUid":I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, p7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6751
    .local v1, "noChannelStr":Ljava/lang/String;
    move-object/from16 v2, v21

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6752
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v2

    xor-int/2addr v0, v2

    .line 6755
    .local v0, "appNotificationsOff":Z
    if-nez v0, :cond_1c4

    .line 6756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "appNotificationsOff":Z
    .local v17, "appNotificationsOff":Z
    const-string v0, "Developer warning for package \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"\nFailed to post notification on channel \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"\nSee log for more details"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(ILjava/lang/CharSequence;)V

    goto :goto_1c6

    .line 6755
    .end local v17    # "appNotificationsOff":Z
    .restart local v0    # "appNotificationsOff":Z
    :cond_1c4
    move/from16 v17, v0

    .line 6761
    .end local v0    # "appNotificationsOff":Z
    .restart local v17    # "appNotificationsOff":Z
    :goto_1c6
    return-void

    .line 6764
    .end local v1    # "noChannelStr":Ljava/lang/String;
    .end local v4    # "notificationUid":I
    .end local v17    # "appNotificationsOff":Z
    .restart local v22    # "notificationUid":I
    :cond_1c7
    move-object/from16 v7, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v3, p7

    move-object/from16 v2, v21

    move/from16 v4, v22

    .end local v22    # "notificationUid":I
    .restart local v4    # "notificationUid":I
    new-instance v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, v9, v13}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    .line 6765
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v7, v12}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 6766
    move-object/from16 v18, v9

    move/from16 v9, p9

    .end local v9    # "n":Landroid/service/notification/StatusBarNotification;
    .local v18, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setPostSilently(Z)V

    .line 6767
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->setFlagBubbleRemoved(Z)V

    .line 6768
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->setPkgAllowedAsConvo(Z)V

    .line 6769
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, v7, v12}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v9

    .line 6770
    .local v9, "isImportanceFixed":Z
    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationRecord;->setImportanceFixed(Z)V

    .line 6772
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_27f

    .line 6773
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v0

    .line 6774
    .local v0, "fgServiceShown":Z
    invoke-virtual {v13}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v20

    const/4 v3, 0x4

    and-int/lit8 v20, v20, 0x4

    const-string/jumbo v3, "miscellaneous"

    if-eqz v20, :cond_21a

    if-nez v0, :cond_228

    .line 6776
    :cond_21a
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_249

    .line 6777
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v5

    if-nez v5, :cond_228

    goto :goto_249

    .line 6794
    :cond_228
    if-nez v0, :cond_245

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_245

    .line 6795
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_241

    .line 6796
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 6797
    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v5, 0x1

    const/16 v17, 0x0

    goto :goto_282

    .line 6795
    :cond_241
    const/4 v5, 0x1

    const/16 v17, 0x0

    goto :goto_282

    .line 6794
    :cond_245
    const/4 v5, 0x1

    const/16 v17, 0x0

    goto :goto_282

    .line 6780
    :cond_249
    :goto_249
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_278

    .line 6781
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25a

    const/4 v5, 0x1

    const/16 v17, 0x0

    goto :goto_27b

    .line 6784
    :cond_25a
    invoke-virtual {v13, v6}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 6785
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    .line 6786
    if-nez v0, :cond_26b

    .line 6787
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 6788
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_26c

    .line 6786
    :cond_26b
    const/4 v5, 0x1

    .line 6790
    :goto_26c
    iget-object v3, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v4, v13, v6}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 6792
    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    move/from16 v17, v6

    goto :goto_282

    .line 6780
    :cond_278
    const/4 v5, 0x1

    const/16 v17, 0x0

    .line 6782
    :goto_27b
    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationRecord;->setSystemImportance(I)V

    goto :goto_282

    .line 6772
    .end local v0    # "fgServiceShown":Z
    :cond_27f
    const/4 v5, 0x1

    const/16 v17, 0x0

    .line 6801
    :goto_282
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-eqz v0, :cond_291

    .line 6802
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v23

    .end local v23    # "user":Landroid/os/UserHandle;
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {v0, v3, v7, v6}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    goto :goto_294

    .line 6803
    .end local v6    # "user":Landroid/os/UserHandle;
    .restart local v23    # "user":Landroid/os/UserHandle;
    :cond_291
    move-object/from16 v6, v23

    .end local v23    # "user":Landroid/os/UserHandle;
    .restart local v6    # "user":Landroid/os/UserHandle;
    const/4 v0, 0x0

    :goto_294
    move-object v3, v0

    .line 6804
    .local v3, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2be

    if-nez v3, :cond_2be

    .line 6805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " added an invalid shortcut"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6807
    :cond_2be
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 6808
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v7, v4}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->setHasSentValidMsg(Z)V

    .line 6809
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 6810
    invoke-virtual {v0, v7, v4}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v0

    .line 6809
    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationRecord;->userDemotedAppFromConvoSpace(Z)V

    .line 6812
    nop

    .line 6813
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e0

    const/4 v0, 0x1

    goto :goto_2e2

    :cond_2e0
    move/from16 v0, v17

    .line 6812
    :goto_2e2
    move-object/from16 v20, v1

    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v20, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v5, p7

    move/from16 v21, v9

    move-object v9, v3

    .end local v3    # "info":Landroid/content/pm/ShortcutInfo;
    .local v9, "info":Landroid/content/pm/ShortcutInfo;
    .local v21, "isImportanceFixed":Z
    move v3, v4

    move/from16 v22, v4

    .end local v4    # "notificationUid":I
    .restart local v22    # "notificationUid":I
    move/from16 v4, p6

    move-object/from16 v19, v10

    const/16 v23, 0x1

    move-object v10, v5

    .end local v10    # "channelId":Ljava/lang/String;
    .local v19, "channelId":Ljava/lang/String;
    move-object/from16 v5, p5

    move-object/from16 v25, v13

    move-object v13, v6

    .end local v6    # "user":Landroid/os/UserHandle;
    .local v13, "user":Landroid/os/UserHandle;
    .local v25, "channel":Landroid/app/NotificationChannel;
    move-object/from16 v6, v20

    move-object v11, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-nez v0, :cond_306

    .line 6814
    return-void

    .line 6817
    :cond_306
    if-eqz v9, :cond_30d

    .line 6822
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {v0, v9, v13}, Lcom/android/server/notification/ShortcutHelper;->cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V

    .line 6826
    :cond_30d
    iget-object v0, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v0, :cond_362

    .line 6827
    iget-object v0, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 6828
    .local v0, "intentCount":I
    if-lez v0, :cond_360

    .line 6829
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 6830
    invoke-interface {v1}, Lcom/android/server/DeviceIdleInternal;->getNotificationAllowlistDuration()J

    move-result-wide v1

    .line 6831
    .local v1, "duration":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_326
    if-ge v3, v0, :cond_35d

    .line 6832
    iget-object v4, v10, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 6833
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_356

    .line 6834
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v27

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    const/16 v31, 0x0

    const/16 v32, 0x136

    const-string v33, "NotificationManagerService"

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-wide/from16 v29, v1

    invoke-virtual/range {v26 .. v33}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 6839
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    move/from16 v26, v0

    .end local v0    # "intentCount":I
    .local v26, "intentCount":I
    const/4 v0, 0x7

    invoke-virtual {v5, v7, v6, v0}, Landroid/app/ActivityManagerInternal;->setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V

    goto :goto_358

    .line 6833
    .end local v26    # "intentCount":I
    .restart local v0    # "intentCount":I
    :cond_356
    move/from16 v26, v0

    .line 6831
    .end local v0    # "intentCount":I
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v26    # "intentCount":I
    :goto_358
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v26

    goto :goto_326

    .end local v26    # "intentCount":I
    .restart local v0    # "intentCount":I
    :cond_35d
    move/from16 v26, v0

    .end local v0    # "intentCount":I
    .restart local v26    # "intentCount":I
    goto :goto_362

    .line 6828
    .end local v1    # "duration":J
    .end local v3    # "i":I
    .end local v26    # "intentCount":I
    .restart local v0    # "intentCount":I
    :cond_360
    move/from16 v26, v0

    .line 6848
    .end local v0    # "intentCount":I
    :cond_362
    :goto_362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 6851
    .local v26, "token":J
    :try_start_366
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0
    :try_end_36c
    .catchall {:try_start_366 .. :try_end_36c} :catchall_391

    const/16 v1, 0x64

    if-ne v0, v1, :cond_373

    move/from16 v5, v23

    goto :goto_375

    :cond_373
    move/from16 v5, v17

    .line 6853
    .local v5, "isAppForeground":Z
    :goto_375
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6854
    nop

    .line 6855
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 6856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v12

    move-object/from16 v4, v20

    move-object v8, v6

    move-wide/from16 v6, v28

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 6855
    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6857
    return-void

    .line 6853
    .end local v5    # "isAppForeground":Z
    :catchall_391
    move-exception v0

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6854
    throw v0

    .line 6699
    .end local v9    # "info":Landroid/content/pm/ShortcutInfo;
    .end local v12    # "userId":I
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v16    # "shortcutId":Ljava/lang/String;
    .end local v18    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v19    # "channelId":Ljava/lang/String;
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v21    # "isImportanceFixed":Z
    .end local v24    # "policy":Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .end local v25    # "channel":Landroid/app/NotificationChannel;
    .end local v26    # "token":J
    .restart local v7    # "userId":I
    .restart local v23    # "user":Landroid/os/UserHandle;
    :catch_396
    move-exception v0

    move v12, v7

    move-object v11, v15

    move-object/from16 v2, v21

    move v15, v13

    move-object/from16 v13, v23

    move-object v1, v0

    .end local v7    # "userId":I
    .end local v23    # "user":Landroid/os/UserHandle;
    .restart local v12    # "userId":I
    .restart local v13    # "user":Landroid/os/UserHandle;
    move-object v0, v1

    .line 6700
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isForegroundService()Z

    move-result v1

    if-nez v1, :cond_3ac

    .line 6703
    const-string v1, "Cannot fix notification"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6704
    return-void

    .line 6701
    :cond_3ac
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid FGS notification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6690
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "userId":I
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v22    # "notificationUid":I
    .local v5, "notificationUid":I
    .restart local v6    # "user":Landroid/os/UserHandle;
    .restart local v7    # "userId":I
    :cond_3b4
    move-object v11, v15

    move v15, v13

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trying to post for invalid pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p8

    move-object v3, v11

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6669
    .end local v5    # "notificationUid":I
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "userId":I
    :cond_3f0
    move v4, v9

    move-object v3, v15

    move v15, v13

    .line 6670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "null not allowed: pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v5, p6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findCurrentAndSnoozedGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 9823
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/SnoozeHelper;->getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9824
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9825
    return-object v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 9831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9832
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9833
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 9834
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 9833
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9835
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .line 9881
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_f

    .line 9882
    return-object v1

    .line 9884
    :cond_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 9886
    return-object v1

    .line 9888
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method finishWindowTokenLocked(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "t"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 8649
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8654
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 8655
    return-void
.end method

.method protected fixNotification(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6877
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 6879
    const/4 v1, -0x1

    if-ne p5, v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    move v1, p5

    .line 6877
    :goto_8
    const/high16 v2, 0x10000000

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6880
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 6882
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6884
    .local v1, "canColorize":I
    if-nez v1, :cond_22

    .line 6885
    iget v2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p1, Landroid/app/Notification;->flags:I

    goto :goto_28

    .line 6887
    :cond_22
    iget v2, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p1, Landroid/app/Notification;->flags:I

    .line 6890
    :goto_28
    iget-object v2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const-string v3, "Package "

    const-string v4, "NotificationService"

    if-eqz v2, :cond_5d

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_5d

    .line 6891
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v5, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v5, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 6893
    .local v2, "fullscreenIntentPermission":I
    if-eqz v2, :cond_5d

    .line 6894
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 6895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    .end local v2    # "fullscreenIntentPermission":I
    :cond_5d
    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {p1, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 6902
    nop

    .line 6903
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 6904
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$CallStyle;

    .line 6905
    .local v5, "style":Landroid/app/Notification$CallStyle;
    invoke-virtual {v5}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v6

    .line 6906
    .local v6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/app/Notification$Action;

    iput-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 6907
    iget-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6910
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "style":Landroid/app/Notification$CallStyle;
    .end local v6    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    :cond_85
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6911
    invoke-interface {v2, p1, v5, v6, p2}, Lcom/android/server/notification/NotificationManagerServiceStub;->checkFullScreenIntent(Landroid/app/Notification;Landroid/app/AppOpsManager;ILjava/lang/String;)V

    .line 6914
    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-class v2, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 6915
    invoke-virtual {p1, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 6916
    :cond_a0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v5, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-interface {v2, v5, p2, p5}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 6918
    .local v2, "hasMediaContentControlPermission":I
    if-eqz v2, :cond_dd

    .line 6919
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.mediaRemoteDevice"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6920
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.mediaRemoteIcon"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6921
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.mediaRemoteIntent"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6922
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_dd

    .line 6923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": Use of setRemotePlayback requires the MEDIA_CONTENT_CONTROL permission"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6930
    .end local v2    # "hasMediaContentControlPermission":I
    :cond_dd
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/server/notification/NotificationManagerService;->checkRemoteViews(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 6933
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v2

    .line 6934
    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerServiceStub;->fixCheckInterceptListenerAutoGroup(Landroid/app/Notification;Ljava/lang/String;)V

    .line 6935
    return-void
.end method

.method protected getAllUsersNotificationPermissions()Landroid/util/ArrayMap;
    .registers 9
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

    .line 6222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6223
    .local v0, "allPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 6226
    .local v1, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 6227
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 6229
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 6228
    invoke-virtual {v4, v5}, Lcom/android/server/notification/PermissionHelper;->getNotificationPermissionValues(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 6230
    .local v4, "userPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 6231
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6232
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_31

    .line 6233
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "userPermissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;>;"
    :cond_47
    goto :goto_f

    .line 6234
    :cond_48
    return-object v0
.end method

.method getApprovedAssistant(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 12026
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 12027
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 12028
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    return-object v1
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .registers 2

    .line 3088
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 2

    .line 10291
    nop

    .line 10292
    const-string v0, "companiondevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 10291
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;
    .registers 4
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 7886
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 7887
    return-object v0

    .line 7889
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 7890
    .local v1, "group":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_f

    .line 7891
    return-object v0

    .line 7893
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2

    .line 3309
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCount(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "excludedId"    # I
    .param p4, "excludedTag"    # Ljava/lang/String;

    .line 7265
    const/4 v0, 0x0

    .line 7266
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7267
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7268
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_4b

    .line 7269
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 7270
    .local v4, "existing":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 7271
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_48

    .line 7272
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_46

    .line 7273
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 7274
    goto :goto_48

    .line 7276
    :cond_46
    add-int/lit8 v0, v0, 0x1

    .line 7268
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 7279
    .end local v3    # "i":I
    :cond_4b
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7280
    .local v3, "M":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    if-ge v4, v3, :cond_79

    .line 7281
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7282
    .local v5, "existing":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 7283
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_76

    .line 7284
    add-int/lit8 v0, v0, 0x1

    .line 7280
    .end local v5    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 7287
    .end local v2    # "N":I
    .end local v3    # "M":I
    .end local v4    # "i":I
    :cond_79
    monitor-exit v1

    .line 7288
    return v0

    .line 7287
    :catchall_7b
    move-exception v2

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_4 .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2170
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method getNotificationRecordCount()I
    .registers 7

    .line 2127
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 2129
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 2131
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2132
    .local v3, "posted":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2133
    add-int/lit8 v1, v1, -0x1

    .line 2135
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2136
    add-int/lit8 v1, v1, -0x1

    .line 2138
    .end local v3    # "posted":Lcom/android/server/notification/NotificationRecord;
    :cond_54
    goto :goto_24

    .line 2140
    :cond_55
    monitor-exit v0

    return v1

    .line 2141
    .end local v1    # "count":I
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z

    .line 6604
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 6605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6604
    return v0
.end method

.method getShortcutHelper()Lcom/android/server/notification/ShortcutHelper;
    .registers 2

    .line 2090
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-object v0
.end method

.method protected getStringArrayResource(I)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # I

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .registers 2

    .line 2100
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object v0
.end method

.method handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 12
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 9032
    move v0, p1

    .line 9033
    .local v0, "preferencesChanged":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 9034
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 9035
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 9036
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 9038
    if-eqz p1, :cond_32

    .line 9039
    array-length v1, p3

    array-length v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9040
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_32

    .line 9041
    aget-object v3, p3, v2

    .line 9042
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v2

    .line 9043
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/server/notification/NotificationHistoryManager;->onPackageRemoved(ILjava/lang/String;)V

    .line 9040
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 9046
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_32
    if-eqz v0, :cond_37

    .line 9047
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9049
    :cond_37
    return-void
.end method

.method handleRankingSort()V
    .registers 26

    .line 8915
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v0, :cond_7

    return-void

    .line 8916
    :cond_7
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8917
    :try_start_a
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8919
    .local v0, "N":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 8921
    .local v3, "extractorDataBefore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v0, :cond_94

    .line 8922
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v15, v5

    .line 8923
    .local v15, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v22, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    .line 8925
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 8926
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v8

    .line 8927
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    .line 8928
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v10

    .line 8929
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v11

    .line 8930
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 8931
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v13

    .line 8932
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    .line 8933
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 8934
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 8935
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v18

    .line 8936
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v19

    .line 8937
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v20

    .line 8938
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v21

    .line 8939
    invoke-virtual {v15}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v23

    move-object/from16 v5, v22

    move v6, v4

    move-object/from16 v24, v15

    .end local v15    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v24, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v23

    invoke-direct/range {v5 .. v21}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZ)V

    move-object/from16 v5, v22

    .line 8940
    .local v5, "extractorData":Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8941
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v7, v24

    .end local v24    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v7, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6, v7}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 8921
    .end local v5    # "extractorData":Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
    .end local v7    # "r":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 8943
    .end local v4    # "i":I
    :cond_94
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 8944
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9c
    if-ge v4, v0, :cond_f4

    .line 8945
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8946
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 8949
    goto :goto_f1

    .line 8951
    :cond_b1
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 8952
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 8957
    :cond_c6
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasPendingLogUpdate()Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 8961
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;

    .line 8962
    .local v6, "prevData":Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
    invoke-virtual {v6, v5, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_ee

    .line 8963
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 8964
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v9

    .line 8963
    invoke-interface {v7, v5, v4, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger;->logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V

    .line 8969
    :cond_ee
    invoke-virtual {v5, v8}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    .line 8944
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "prevData":Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
    :cond_f1
    :goto_f1
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 8972
    .end local v0    # "N":I
    .end local v3    # "extractorDataBefore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;>;"
    .end local v4    # "i":I
    :cond_f4
    monitor-exit v2

    .line 8973
    return-void

    .line 8972
    :catchall_f6
    move-exception v0

    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_a .. :try_end_f8} :catchall_f6

    throw v0
.end method

.method protected handleSavePolicyFile()V
    .registers 5

    .line 1075
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1076
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1078
    :cond_17
    return-void
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 10264
    const-string v0, "NotificationService"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_c

    .line 10265
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 10268
    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 10269
    return v2

    .line 10271
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 10273
    .local v3, "identity":J
    :try_start_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 10274
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 10273
    invoke-interface {v1, v5, v6}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 10275
    .local v1, "associations":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_28} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_32
    .catchall {:try_start_16 .. :try_end_28} :catchall_30

    if-nez v0, :cond_2f

    .line 10276
    const/4 v0, 0x1

    .line 10285
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10276
    return v0

    .line 10275
    .end local v1    # "associations":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2f
    goto :goto_58

    .line 10285
    :catchall_30
    move-exception v0

    goto :goto_53

    .line 10282
    :catch_32
    move-exception v1

    .line 10283
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10285
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_59

    .line 10280
    :catch_4b
    move-exception v1

    .line 10281
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "Cannot reach companion device service"

    invoke-static {v0, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_30

    .line 10285
    nop

    .end local v1    # "re":Landroid/os/RemoteException;
    goto :goto_59

    :goto_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10286
    throw v0

    .line 10278
    :catch_57
    move-exception v0

    .line 10285
    :goto_58
    nop

    :goto_59
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10286
    nop

    .line 10287
    return v2
.end method

.method public hasFlag(II)Z
    .registers 4
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .line 7082
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 9959
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9960
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 9961
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 9962
    return v1

    .line 9960
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 9965
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 8708
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 8709
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/toast/ToastRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8710
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 8711
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/toast/ToastRecord;

    .line 8712
    .local v3, "r":Lcom/android/server/notification/toast/ToastRecord;
    iget-object v4, v3, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v3, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    if-ne v4, p2, :cond_1c

    .line 8713
    return v2

    .line 8710
    .end local v3    # "r":Lcom/android/server/notification/toast/ToastRecord;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 8716
    .end local v2    # "i":I
    :cond_1f
    const/4 v2, -0x1

    return v2
.end method

.method init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Lcom/android/internal/app/IAppOpsService;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;)V
    .registers 65
    .param p1, "handler"    # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .param p2, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p3, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p4, "packageManagerClient"    # Landroid/content/pm/PackageManager;
    .param p5, "lightsManager"    # Lcom/android/server/lights/LightsManager;
    .param p6, "notificationListeners"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p7, "notificationAssistants"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p8, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p9, "companionManager"    # Landroid/companion/ICompanionDeviceManager;
    .param p10, "snoozeHelper"    # Lcom/android/server/notification/SnoozeHelper;
    .param p11, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p12, "policyFile"    # Landroid/util/AtomicFile;
    .param p13, "activityManager"    # Landroid/app/ActivityManager;
    .param p14, "groupHelper"    # Lcom/android/server/notification/GroupHelper;
    .param p15, "am"    # Landroid/app/IActivityManager;
    .param p16, "atm"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p17, "appUsageStats"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p18, "dpm"    # Landroid/app/admin/DevicePolicyManagerInternal;
    .param p19, "ugm"    # Landroid/app/IUriGrantsManager;
    .param p20, "ugmInternal"    # Lcom/android/server/uri/UriGrantsManagerInternal;
    .param p21, "appOps"    # Landroid/app/AppOpsManager;
    .param p22, "iAppOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p23, "userManager"    # Landroid/os/UserManager;
    .param p24, "historyManager"    # Lcom/android/server/notification/NotificationHistoryManager;
    .param p25, "statsManager"    # Landroid/app/StatsManager;
    .param p26, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p27, "ami"    # Landroid/app/ActivityManagerInternal;
    .param p28, "toastRateLimiter"    # Lcom/android/server/utils/quota/MultiRateLimiter;
    .param p29, "permissionHelper"    # Lcom/android/server/notification/PermissionHelper;
    .param p30, "usageStatsManagerInternal"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p31, "telecomManager"    # Landroid/telecom/TelecomManager;
    .param p32, "channelLogger"    # Lcom/android/server/notification/NotificationChannelLogger;

    .line 2250
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p16

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2252
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "max_notification_enqueue_rate"

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 2256
    nop

    .line 2257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "accessibility"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2258
    move-object/from16 v6, p15

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 2259
    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mAtm:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2260
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback-IA;)V

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setBackgroundActivityStartCallback(Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    .line 2261
    move-object/from16 v7, p19

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 2262
    move-object/from16 v8, p20

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2263
    move-object/from16 v9, p3

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2264
    move-object/from16 v10, p4

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2265
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2266
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2267
    move-object/from16 v11, p30

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2268
    move-object/from16 v12, p21

    iput-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2269
    move-object/from16 v13, p22

    iput-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2270
    move-object/from16 v14, p17

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v15, "alarm"

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2272
    move-object/from16 v15, p9

    iput-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 2273
    move-object/from16 v3, p13

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2274
    move-object/from16 v3, p27

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    .line 2276
    move-object/from16 v3, p18

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2277
    move-object/from16 v3, p23

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    .line 2278
    move-object/from16 v3, p31

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 2279
    nop

    .line 2280
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2279
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2282
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 2283
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUiHandler:Landroid/os/Handler;

    .line 2286
    const v0, 0x1070095

    const/4 v3, 0x0

    :try_start_d7
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d7 .. :try_end_db} :catch_dc

    .line 2289
    .local v0, "extractorNames":[Ljava/lang/String;
    goto :goto_e4

    .line 2287
    .end local v0    # "extractorNames":[Ljava/lang/String;
    :catch_dc
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 2288
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    nop

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .local v16, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v0, v3, [Ljava/lang/String;

    .line 2290
    .end local v16    # "e":Landroid/content/res/Resources$NotFoundException;
    .local v0, "extractorNames":[Ljava/lang/String;
    :goto_e4
    move-object/from16 v3, p11

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 2291
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2292
    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 2293
    move-object/from16 v3, p8

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 2294
    new-instance v3, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v8, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-direct {v8}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;-><init>()V

    invoke-direct {v3, v4, v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;)V

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2296
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v4, v1}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 2344
    move-object/from16 v3, p29

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 2345
    move-object/from16 v4, p32

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    .line 2346
    new-instance v6, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v25, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;-><init>()V

    iget-boolean v11, v1, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v26, v11

    invoke-direct/range {v17 .. v26}, Lcom/android/server/notification/PreferencesHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;Z)V

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2355
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/notification/PreferencesHelper;->updateFixedImportance(Ljava/util/List;)V

    .line 2356
    new-instance v3, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 2362
    move-object/from16 v3, p10

    iput-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 2363
    move-object/from16 v4, p14

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 2364
    new-instance v6, Lcom/android/server/notification/VibratorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 2365
    move-object/from16 v6, p24

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 2368
    move-object/from16 v7, p6

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2371
    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2374
    new-instance v9, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v9, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    .line 2377
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/server/notification/NotificationManagerServiceStub;->init(Landroid/content/Context;)V

    .line 2380
    invoke-static {}, Lcom/android/server/notification/BarrageListenerServiceStub;->getInstance()Lcom/android/server/notification/BarrageListenerServiceStub;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-interface {v9, v10, v11}, Lcom/android/server/notification/BarrageListenerServiceStub;->init(Landroid/content/Context;Lcom/android/server/notification/ManagedServices;)V

    .line 2382
    move-object/from16 v9, p12

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 2384
    const-class v10, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2385
    if-eqz v10, :cond_1cb

    .line 2386
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v10, v11}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 2389
    :cond_1cb
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 2390
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 2392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x104028b

    .line 2393
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2392
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 2394
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2395
    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 2396
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 2397
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 2398
    const v10, 0x10500c1

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    iput v10, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 2400
    const v10, 0x11101e6

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 2401
    const v10, 0x1110166

    .line 2402
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService;->mHasLight:Z

    .line 2408
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v2, 0x1

    if-nez v10, :cond_23d

    .line 2410
    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 2412
    :cond_23d
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v10}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 2413
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v10}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v10

    iput v10, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2415
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2417
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26a

    .line 2418
    new-instance v10, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v10, v1}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v11, 0x20

    move-object/from16 v2, p26

    invoke-virtual {v2, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_26c

    .line 2417
    :cond_26a
    move-object/from16 v2, p26

    .line 2428
    :goto_26c
    new-instance v10, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v10, v1, v11}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 2430
    new-instance v10, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v11, 0x10e00ba

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 2433
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.leanback"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_29a

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2434
    const-string v11, "android.hardware.type.television"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_298

    goto :goto_29a

    :cond_298
    const/4 v10, 0x0

    goto :goto_29b

    :cond_29a
    :goto_29a
    const/4 v10, 0x1

    :goto_29b
    iput-boolean v10, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2436
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 2437
    const-string v11, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 2438
    const v2, 0x1110142

    .line 2439
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 2441
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x107009a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/notification/ZenModeHelper;->setPriorityOnlyDndExemptPackages([Ljava/lang/String;)V

    .line 2444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x10e00bc

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/NotificationManagerService;->mWarnRemoteViewsSizeBytes:I

    .line 2446
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x10e00bb

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/NotificationManagerService;->mStripRemoteViewsSizeBytes:I

    .line 2449
    const v2, 0x1070094

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->getStringArrayResource(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mMsgPkgsAllowedAsConvos:Ljava/util/Set;

    .line 2452
    move-object/from16 v2, p25

    iput-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 2455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->allowMiuiDefaultApprovedServices()V

    .line 2458
    move-object/from16 v10, p28

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 2463
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 2464
    .local v11, "filter":Landroid/content/IntentFilter;
    move-object/from16 v16, v0

    .end local v0    # "extractorNames":[Ljava/lang/String;
    .local v16, "extractorNames":[Ljava/lang/String;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2465
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2466
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2467
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2468
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2469
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2470
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2471
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2472
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2473
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2476
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2477
    .local v0, "pkgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2478
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2479
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2480
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2481
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2482
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2483
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v20, v2

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2486
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2487
    .local v2, "suspendedPkgFilter":Landroid/content/IntentFilter;
    move-object/from16 v25, v0

    .end local v0    # "pkgFilter":Landroid/content/IntentFilter;
    .local v25, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2488
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2489
    const-string v0, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2493
    new-instance v0, Landroid/content/IntentFilter;

    move-object/from16 v19, v2

    .end local v2    # "suspendedPkgFilter":Landroid/content/IntentFilter;
    .local v19, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v0

    .line 2494
    .local v29, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v26

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v31}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2497
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2498
    .local v0, "timeoutFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "timeout"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2502
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v2, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2505
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2506
    .local v3, "localeChangedFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v18, v0

    .end local v0    # "timeoutFilter":Landroid/content/IntentFilter;
    .local v18, "timeoutFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2508
    new-instance v0, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    invoke-direct {v0}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;-><init>()V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mReviewNotificationPermissionsReceiver:Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;

    .line 2510
    invoke-static {}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 2509
    move-object/from16 v20, v2

    const/4 v2, 0x4

    .end local v2    # "settingsRestoredFilter":Landroid/content/IntentFilter;
    .local v20, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2512
    return-void
.end method

.method isCallerInstantApp(IILjava/lang/String;)Z
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 10145
    const-string v0, "Unknown uid "

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10146
    const/4 v0, 0x0

    return v0

    .line 10149
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_e

    .line 10150
    const/4 p2, 0x0

    .line 10154
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 10160
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_49

    invoke-static {v1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 10164
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 10166
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p3, v3, v4, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 10167
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_30

    .line 10170
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0

    .line 10168
    :cond_30
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "pkg":Ljava/lang/String;
    throw v3

    .line 10161
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "userId":I
    .restart local p3    # "pkg":Ljava/lang/String;
    :cond_49
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "pkg":Ljava/lang/String;
    throw v2
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_6a} :catch_6a

    .line 10171
    .end local v1    # "pkgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "userId":I
    .restart local p3    # "pkg":Ljava/lang/String;
    :catch_6a
    move-exception v1

    .line 10172
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isCallerSystemOrPhone()Z
    .registers 2

    .line 10055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingAppIdSystem()Z
    .registers 4

    .line 10042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10043
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 10044
    .local v1, "appid":I
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method protected isCallingUidSystem()Z
    .registers 3

    .line 10037
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 10038
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method isCurrentlyInsistent()Z
    .registers 3

    .line 8331
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 8332
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 8331
    :goto_24
    return v0
.end method

.method isInLockDownMode()Z
    .registers 2

    .line 10260
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->isInLockDownMode()Z

    move-result v0

    return v0
.end method

.method isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8324
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 8325
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 8326
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCurrentlyInsistent()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 8324
    :goto_21
    return v0
.end method

.method isNASMigrationDone(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 895
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nas_settings_updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v2, v1

    :cond_14
    return v2
.end method

.method isNotificationShownInternal(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "notificationId"    # I
    .param p4, "userId"    # I

    .line 6649
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6650
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 6651
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method isPackagePausedOrSuspended(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 7684
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 7686
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 7687
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 7686
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v1

    .line 7688
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 7690
    .local v2, "isPaused":Z
    :goto_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 7692
    return v2
.end method

.method isRecordBlockedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 7297
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7298
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 7299
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 7300
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_29

    :cond_27
    const/4 v2, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v2, 0x1

    .line 7299
    :goto_2a
    return v2
.end method

.method protected isUidSystemOrPhone(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 10048
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 10049
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "notificationType"    # I
    .param p3, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 10298
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 10299
    return v1

    .line 10301
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->isInteractionVisibleToListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 10302
    return v1

    .line 10304
    :cond_17
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v2, p3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    .line 10305
    .local v0, "nls":Landroid/service/notification/NotificationListenerFilter;
    if-eqz v0, :cond_3b

    .line 10306
    invoke-virtual {v0, p2}, Landroid/service/notification/NotificationListenerFilter;->isTypeAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Landroid/content/pm/VersionedPackage;

    .line 10308
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 10307
    invoke-virtual {v0, v2}, Landroid/service/notification/NotificationListenerFilter;->isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 10309
    :cond_3a
    return v1

    .line 10311
    :cond_3b
    const/4 v1, 0x1

    return v1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 18
    .param p1, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 7903
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "INTERRUPTIVENESS: "

    const-string v3, "NotificationService"

    if-eqz v0, :cond_40

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 7904
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_3f

    .line 7905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7906
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not interruptive: summary"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7905
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7908
    :cond_3f
    return v1

    .line 7911
    :cond_40
    const/4 v0, 0x1

    if-nez p1, :cond_66

    .line 7912
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v1, :cond_65

    .line 7913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7914
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interruptive: new notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7913
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7916
    :cond_65
    return v0

    .line 7919
    :cond_66
    if-nez p2, :cond_8b

    .line 7920
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_8a

    .line 7921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7922
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not interruptive: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7921
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7924
    :cond_8a
    return v1

    .line 7927
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 7928
    .local v4, "oldN":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 7929
    .local v5, "newN":Landroid/app/Notification;
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_2f7

    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_a5

    goto/16 :goto_2f7

    .line 7939
    :cond_a5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_d6

    .line 7940
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_d5

    .line 7941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7942
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not interruptive: foreground service"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7941
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7944
    :cond_d5
    return v1

    .line 7947
    :cond_d6
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7948
    .local v6, "oldTitle":Ljava/lang/String;
    iget-object v8, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7949
    .local v7, "newTitle":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-nez v8, :cond_173

    .line 7950
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v8, :cond_172

    .line 7951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 7952
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " is interruptive: changed title"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7951
    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7953
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v1

    .line 7954
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 7953
    const-string v12, "   old title: %s (%s@0x%08x)"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v7, v8, v1

    .line 7956
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    .line 7955
    const-string v1, "   new title: %s (%s@0x%08x)"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7958
    :cond_172
    return v0

    .line 7962
    :cond_173
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 7963
    .local v8, "oldText":Ljava/lang/String;
    iget-object v12, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v12, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 7964
    .local v11, "newText":Ljava/lang/String;
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20e

    .line 7965
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v12, :cond_20d

    .line 7966
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 7967
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is interruptive: changed text"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 7966
    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7968
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v8, v13, v1

    .line 7969
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 7968
    const-string v14, "   old text: %s (%s@0x%08x)"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v1

    .line 7971
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v9

    .line 7970
    const-string v1, "   new text: %s (%s@0x%08x)"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7973
    :cond_20d
    return v0

    .line 7976
    :cond_20e
    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v9

    invoke-virtual {v5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v10

    if-eq v9, v10, :cond_23b

    .line 7977
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v1, :cond_23a

    .line 7978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7979
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interruptive: completed progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7978
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7981
    :cond_23a
    return v0

    .line 7985
    :cond_23b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    if-eqz v9, :cond_264

    .line 7986
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_263

    .line 7987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7988
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not interruptive: bubble"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7987
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7990
    :cond_263
    return v1

    .line 7994
    :cond_264
    invoke-static {v4, v5}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v9

    if-eqz v9, :cond_28d

    .line 7995
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v1, :cond_28c

    .line 7996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7997
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interruptive: changed actions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7996
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7999
    :cond_28c
    return v0

    .line 8003
    :cond_28d
    :try_start_28d
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 8004
    .local v9, "oldB":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 8007
    .local v10, "newB":Landroid/app/Notification$Builder;
    invoke-static {v9, v10}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v12

    if-eqz v12, :cond_2c6

    .line 8008
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v12, :cond_2c5

    .line 8009
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8010
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " is interruptive: styles differ"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8009
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8012
    :cond_2c5
    return v0

    .line 8016
    :cond_2c6
    invoke-static {v9, v10}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v12

    if-eqz v12, :cond_2ef

    .line 8017
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v12, :cond_2ee

    .line 8018
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8019
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " is interruptive: remoteviews differ"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8018
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_2ee} :catch_2f0

    .line 8021
    :cond_2ee
    return v0

    .line 8025
    .end local v9    # "oldB":Landroid/app/Notification$Builder;
    .end local v10    # "newB":Landroid/app/Notification$Builder;
    :cond_2ef
    goto :goto_2f6

    .line 8023
    :catch_2f0
    move-exception v0

    .line 8024
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error recovering builder"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8026
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f6
    return v1

    .line 7930
    .end local v6    # "oldTitle":Ljava/lang/String;
    .end local v7    # "newTitle":Ljava/lang/String;
    .end local v8    # "oldText":Ljava/lang/String;
    .end local v11    # "newText":Ljava/lang/String;
    :cond_2f7
    :goto_2f7
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_319

    .line 7931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7932
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not interruptive: no extras"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7931
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7934
    :cond_319
    return v1
.end method

.method public keepProcessAliveForToastIfNeeded(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 8723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8724
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveForToastIfNeededLocked(I)V

    .line 8725
    monitor-exit v0

    .line 8726
    return-void

    .line 8725
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$doChannelWarningToast$6$com-android-server-notification-NotificationManagerService(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "toastText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7032
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 7033
    .local v0, "defaultWarningEnabled":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    .line 7035
    .local v1, "warningEnabled":Z
    :goto_17
    if-eqz v1, :cond_2a

    .line 7036
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 7038
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7040
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_2a
    return-void
.end method

.method synthetic lambda$onStart$0$com-android-server-notification-NotificationManagerService(ILcom/android/server/notification/NotificationRecord;Z)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "muteOnReturn"    # Z

    .line 2537
    const-string v0, "NotificationService"

    :try_start_2
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_20

    .line 2538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reposting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_20
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    .line 2541
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 2542
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    const/4 v11, 0x1

    .line 2540
    move-object v2, p0

    move v10, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_5f

    .line 2545
    goto :goto_65

    .line 2543
    :catch_5f
    move-exception v1

    .line 2544
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Cannot un-snooze notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method synthetic lambda$onUserStopping$4$com-android-server-notification-NotificationManagerService(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 2843
    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryStopUser"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2845
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    .line 2847
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2848
    nop

    .line 2849
    return-void

    .line 2847
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2848
    throw v2
.end method

.method synthetic lambda$onUserUnlocking$2$com-android-server-notification-NotificationManagerService(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 2814
    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryUnlockUser"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2816
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationHistoryManager;->onUserUnlocked(I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    .line 2818
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2819
    nop

    .line 2820
    return-void

    .line 2818
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2819
    throw v2
.end method

.method synthetic lambda$playVibration$8$com-android-server-notification-NotificationManagerService(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 8451
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 8453
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 8451
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 8454
    .local v0, "waitMs":I
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_3c

    .line 8455
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration for notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8456
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8455
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8459
    :cond_3c
    int-to-long v1, v0

    :try_start_3d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    .line 8460
    :goto_40
    goto :goto_43

    :catch_41
    move-exception v1

    goto :goto_40

    .line 8463
    :goto_43
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8464
    :try_start_46
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 8465
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 8466
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_a6

    .line 8468
    :cond_63
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_a6

    .line 8469
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No vibration for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8470
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": a new notification is vibrating, or effects were cleared while waiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8469
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 8475
    :cond_8a
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No vibration for canceled notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8476
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8475
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8478
    :cond_a6
    :goto_a6
    monitor-exit v1

    .line 8479
    return-void

    .line 8478
    :catchall_a8
    move-exception v2

    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_46 .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method synthetic lambda$registerDeviceConfigChange$1$com-android-server-notification-NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 2596
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2597
    return-void

    .line 2599
    :cond_e
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2600
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "nas_default_service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2601
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    goto/16 :goto_cd

    .line 2602
    :cond_32
    const-string v2, "enable_nas_prioritizer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "false"

    const-string/jumbo v4, "true"

    const/4 v5, 0x0

    if-eqz v2, :cond_5f

    .line 2603
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2604
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_importance"

    if-eqz v4, :cond_52

    .line 2605
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto :goto_5d

    .line 2606
    :cond_52
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2607
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 2609
    .end local v2    # "value":Ljava/lang/String;
    :cond_5d
    :goto_5d
    goto/16 :goto_cd

    :cond_5f
    const-string v2, "enable_nas_ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2610
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2611
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_ranking_score"

    if-eqz v4, :cond_79

    .line 2612
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto :goto_84

    .line 2613
    :cond_79
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 2614
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 2616
    .end local v2    # "value":Ljava/lang/String;
    :cond_84
    :goto_84
    goto :goto_cd

    :cond_85
    const-string v2, "enable_nas_not_conversation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2617
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2618
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_not_conversation"

    if-eqz v4, :cond_9f

    .line 2619
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    goto :goto_cc

    .line 2620
    :cond_9f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 2621
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    goto :goto_cc

    .line 2623
    .end local v2    # "value":Ljava/lang/String;
    :cond_ab
    const-string/jumbo v2, "task_manager_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 2624
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2625
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 2626
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    goto :goto_cd

    .line 2627
    :cond_c2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 2628
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    goto :goto_cd

    .line 2623
    .end local v2    # "value":Ljava/lang/String;
    :cond_cc
    :goto_cc
    nop

    .line 2631
    .end local v1    # "name":Ljava/lang/String;
    :cond_cd
    :goto_cd
    goto/16 :goto_16

    .line 2632
    :cond_cf
    return-void
.end method

.method synthetic lambda$reportForegroundServiceUpdate$5$com-android-server-notification-NotificationManagerService(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 12
    .param p1, "shown"    # Z
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3204
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 3205
    return-void
.end method

.method synthetic lambda$sendAppBlockStateChangedBroadcast$3$com-android-server-notification-NotificationManagerService(ZLjava/lang/String;I)V
    .registers 8
    .param p1, "blocked"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2828
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 2830
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 2831
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 2832
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2833
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 2828
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_27} :catch_28

    .line 2836
    goto :goto_30

    .line 2834
    :catch_28
    move-exception v0

    .line 2835
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about app block change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2837
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_30
    return-void
.end method

.method loadDefaultApprovedServices(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->loadDefaultsFromConfig()V

    .line 804
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->loadDefaultsFromConfig()V

    .line 806
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    .line 807
    return-void
.end method

.method protected loadPolicyFile()V
    .registers 6

    .line 1050
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NotificationService"

    const-string v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 1052
    const/4 v1, 0x0

    .line 1054
    .local v1, "infile":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 1055
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_33
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1b} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_1b} :catch_21
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1f

    .line 1068
    :goto_1b
    :try_start_1b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_4e

    .line 1069
    :goto_1e
    goto :goto_47

    .line 1068
    :catchall_1f
    move-exception v2

    goto :goto_49

    .line 1065
    :catch_21
    move-exception v2

    .line 1066
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_22
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1063
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2a
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1061
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_33
    move-exception v2

    .line 1062
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1056
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3c
    move-exception v3

    .line 1059
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->loadDefaultApprovedServices(I)V

    .line 1060
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_1f

    .line 1068
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :try_start_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1e

    .line 1070
    .end local v1    # "infile":Ljava/io/InputStream;
    :goto_47
    monitor-exit v0

    .line 1071
    return-void

    .line 1068
    .restart local v1    # "infile":Ljava/io/InputStream;
    :goto_49
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1069
    nop

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    throw v2

    .line 1070
    .end local v1    # "infile":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "notificationLocation"    # I

    .line 1595
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v0

    if-lez v0, :cond_6e

    .line 1596
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1597
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 1598
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x566

    .line 1599
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x568

    .line 1601
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1600
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x63f

    .line 1603
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNumSmartActionsAdded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1602
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x640

    .line 1606
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1604
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x65d

    .line 1609
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x66f

    .line 1612
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1610
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1613
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1614
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 1618
    .end local v0    # "logMaker":Landroid/metrics/LogMaker;
    :cond_6e
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 3173
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_d4

    .line 3174
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3175
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3176
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 3174
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3177
    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "notifHistoryAddItem"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3179
    :try_start_36
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_c6

    .line 3180
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    new-instance v3, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    .line 3181
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3182
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3183
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3184
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3185
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3187
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->getHistoryTitle(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3189
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 3190
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 3188
    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->getHistoryText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3191
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    move-result-object v3

    .line 3192
    invoke-virtual {v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v3

    .line 3180
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationHistoryManager;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_c6
    .catchall {:try_start_36 .. :try_end_c6} :catchall_cf

    .line 3195
    :cond_c6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3196
    nop

    .line 3197
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    goto :goto_d4

    .line 3195
    :catchall_cf
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3196
    throw v2

    .line 3199
    :cond_d4
    :goto_d4
    return-void
.end method

.method protected maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 3258
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 3260
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3261
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 3260
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setValidMessageSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3262
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_5d

    .line 3263
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 3266
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3267
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 3266
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setValidBubbleSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_5d

    .line 3272
    :cond_46
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 3273
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 3272
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMessageSent(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3274
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3278
    :cond_5d
    :goto_5d
    return-void
.end method

.method protected maybeReportForegroundServiceUpdate(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "shown"    # Z

    .line 3209
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3211
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 3212
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 3213
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 3212
    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 3215
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_23
    return-void
.end method

.method protected maybeShowInitialReviewPermissionsNotification()V
    .registers 6

    .line 12105
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    if-nez v0, :cond_5

    .line 12107
    return-void

    .line 12110
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "review_permissions_notification_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 12125
    .local v0, "currentState":I
    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 12127
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 12128
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v2, 0x47

    .line 12130
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->createReviewPermissionsNotification()Landroid/app/Notification;

    move-result-object v3

    .line 12128
    const-string v4, "NotificationService"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 12132
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_31
    return-void
.end method

.method protected migrateDefaultNAS()V
    .registers 8

    .line 865
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 866
    .local v0, "activeUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 867
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 868
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 869
    goto :goto_a

    .line 871
    :cond_2d
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v4

    .line 872
    .local v4, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "NotificationService"

    if-nez v5, :cond_49

    .line 873
    const-string v5, "NAS Migration: user set to none, disable new NAS setting"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 875
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    goto :goto_56

    .line 877
    :cond_49
    const-string v5, "Reset NAS setting and migrate to new default"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 880
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 882
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userId":I
    .end local v4    # "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_56
    goto :goto_a

    .line 883
    :cond_57
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 2763
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->onBootPhase(ILandroid/os/Looper;)V

    .line 2764
    return-void
.end method

.method onBootPhase(ILandroid/os/Looper;)V
    .registers 10
    .param p1, "phase"    # I
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 2768
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_aa

    .line 2770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2773
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2774
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 2775
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2777
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    .line 2778
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/role/RoleManager;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V

    .line 2781
    .local v0, "roleObserver":Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->init()V

    .line 2782
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 2783
    nop

    .line 2784
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 2785
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2787
    .local v2, "userManager":Landroid/os/UserManager;
    new-instance v3, Lcom/android/server/notification/ShortcutHelper;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    const-class v5, Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0, v5}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {v3, v1, v4, v5, v2}, Lcom/android/server/notification/ShortcutHelper;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 2789
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class v4, Lcom/android/server/notification/BubbleExtractor;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/BubbleExtractor;

    .line 2790
    .local v3, "bubbsExtractor":Lcom/android/server/notification/BubbleExtractor;
    if-eqz v3, :cond_98

    .line 2791
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/BubbleExtractor;->setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V

    .line 2793
    :cond_98
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->registerNotificationPreferencesPullers()V

    .line 2794
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 2795
    .end local v0    # "roleObserver":Lcom/android/server/notification/NotificationManagerService$RoleObserver;
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "bubbsExtractor":Lcom/android/server/notification/BubbleExtractor;
    goto :goto_de

    :cond_aa
    const/16 v0, 0x258

    if-ne p1, v0, :cond_d1

    .line 2798
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 2799
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 2800
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 2801
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 2802
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryManager;->onBootPhaseAppsCanStart()V

    .line 2803
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->registerDeviceConfigChange()V

    .line 2804
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->migrateDefaultNAS()V

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->maybeShowInitialReviewPermissionsNotification()V

    goto :goto_de

    .line 2806
    :cond_d1
    const/16 v0, 0x226

    if-ne p1, v0, :cond_de

    .line 2807
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostsForPersistedNotifications(J)V

    .line 2809
    :cond_de
    :goto_de
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 2518
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2519
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2521
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2522
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2524
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-eqz v0, :cond_34

    .line 2525
    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2527
    :cond_34
    return-void
.end method

.method public onStart()V
    .registers 41

    move-object/from16 v15, p0

    move-object/from16 v6, p0

    .line 2535
    new-instance v0, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v15}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v16, v0

    .line 2548
    .local v16, "snoozeHelper":Lcom/android/server/notification/SnoozeHelper;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 2549
    .local v14, "systemDir":Ljava/io/File;
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2551
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    move-object v13, v0

    .local v13, "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    move-object v7, v13

    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/notification/NotificationManagerService;->mShowReviewPermissionsNotification:Z

    .line 2556
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    move-object v8, v0

    iget-object v1, v15, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    .line 2557
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 2558
    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/lights/LightsManager;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object v12, v0

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 2560
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-object v5, v13

    .end local v13    # "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .local v5, "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    move-object v13, v0

    .line 2561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 2562
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    move-object/from16 v39, v6

    move-object v6, v5

    .end local v5    # "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .local v6, "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    move-object v1, v14

    .end local v14    # "systemDir":Ljava/io/File;
    .local v1, "systemDir":Ljava/io/File;
    move-object v14, v0

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v17, v0

    .line 2564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_policy.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "notification-policy"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/ActivityManager;

    .line 2568
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v20

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v21

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2569
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2570
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2571
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2572
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v25

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2573
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/AppOpsManager;

    .line 2575
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v28

    .line 2576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager;

    move-object/from16 v30, v0

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lcom/android/server/notification/NotificationHistoryManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "stats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    move-object/from16 v31, v0

    iput-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mStatsManager:Landroid/app/StatsManager;

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2581
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/app/ActivityManagerInternal;

    .line 2582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->createToastRateLimiter()Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v34

    new-instance v0, Lcom/android/server/notification/PermissionHelper;

    move-object/from16 v35, v0

    const-class v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2583
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 2584
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/notification/PermissionHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2585
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v37, v0

    check-cast v37, Landroid/telecom/TelecomManager;

    new-instance v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    move-object/from16 v38, v0

    invoke-direct {v0}, Lcom/android/server/notification/NotificationChannelLoggerImpl;-><init>()V

    .line 2556
    const/4 v0, 0x0

    move-object v2, v15

    move-object v15, v0

    move-object v0, v6

    move-object/from16 v6, v39

    .end local v6    # "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .local v0, "handler":Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-virtual/range {v6 .. v38}, Lcom/android/server/notification/NotificationManagerService;->init(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;Lcom/android/server/notification/RankingHandler;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/app/AppOpsManager;Lcom/android/internal/app/IAppOpsService;Landroid/os/UserManager;Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/StatsManager;Landroid/telephony/TelephonyManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/utils/quota/MultiRateLimiter;Lcom/android/server/notification/PermissionHelper;Landroid/app/usage/UsageStatsManagerInternal;Landroid/telecom/TelecomManager;Lcom/android/server/notification/NotificationChannelLogger;)V

    .line 2589
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v4, "notification"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2591
    const-class v3, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2592
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 2842
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2850
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 2813
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2821
    return-void
.end method

.method protected playInCallNotification()V
    .registers 5

    .line 8512
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8513
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    .line 8515
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 8514
    const-string v3, "in_call_notification_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_26

    .line 8516
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 8536
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$13;->start()V

    .line 8538
    :cond_26
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;ZI)V
    .registers 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    if-eqz p2, :cond_10

    .line 992
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 993
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_14

    .line 995
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_10
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 997
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :goto_14
    const-string/jumbo v1, "notification-policy"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, "migratedManagedServices":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_28

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    .line 1000
    .local v3, "ineligibleForManagedServices":Z
    :goto_29
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 1001
    .local v4, "outerDepth":I
    :cond_2d
    :goto_2d
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 1002
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1003
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/ZenModeHelper;->readXml(Landroid/util/TypedXmlPullParser;ZI)V

    goto :goto_58

    .line 1004
    :cond_46
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ranking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1005
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->readXml(Landroid/util/TypedXmlPullParser;ZI)V

    .line 1007
    :cond_58
    :goto_58
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1008
    if-eqz v3, :cond_6d

    .line 1009
    goto :goto_2d

    .line 1011
    :cond_6d
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 1012
    const/4 v1, 0x1

    goto :goto_c8

    .line 1013
    :cond_76
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1014
    if-eqz v3, :cond_8b

    .line 1015
    goto :goto_2d

    .line 1017
    :cond_8b
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 1018
    const/4 v1, 0x1

    goto :goto_c8

    .line 1019
    :cond_94
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1020
    if-eqz v3, :cond_a9

    .line 1021
    goto :goto_2d

    .line 1023
    :cond_a9
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {v5, v0, v6, p2, p3}, Lcom/android/server/notification/ConditionProviders;->readXml(Landroid/util/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V

    .line 1025
    const/4 v1, 0x1

    goto :goto_c8

    .line 1026
    :cond_b2
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "snoozed-notifications"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 1027
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->readXml(Landroid/util/TypedXmlPullParser;J)V

    .line 1029
    :cond_c8
    :goto_c8
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "allow-secure-notifications-on-lockscreen"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1030
    if-eqz p2, :cond_da

    if-eqz p3, :cond_da

    .line 1031
    goto/16 :goto_2d

    .line 1033
    :cond_da
    const/4 v5, 0x0

    const-string/jumbo v6, "value"

    invoke-interface {v0, v5, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLockScreenAllowSecureNotifications:Z

    goto/16 :goto_2d

    .line 1038
    :cond_e6
    if-nez v1, :cond_fa

    .line 1039
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 1040
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 1041
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 1045
    :cond_fa
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultAssistantsIfNecessary()V

    .line 1046
    return-void
.end method

.method registerDeviceConfigChange()V
    .registers 4

    .line 2595
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2633
    const-string/jumbo v0, "systemui"

    const-string/jumbo v1, "task_manager_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowFgsDismissal:Z

    .line 2636
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2640
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 6062
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6063
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_23

    .line 6064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove autogroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    return-void

    .line 6067
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 6068
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 6069
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 6070
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 6072
    :cond_39
    return-void
.end method

.method protected reportForegroundServiceUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 15
    .param p1, "shown"    # Z
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3203
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3206
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 3097
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isProxied()Z

    move-result v0

    if-nez v0, :cond_21

    .line 3098
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3099
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    const/16 v3, 0xa

    .line 3098
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3102
    :cond_21
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 3285
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3286
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 3285
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3288
    return-void
.end method

.method resetAssistantUserSet(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 12018
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    .line 12019
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 12020
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 12021
    return-void
.end method

.method resolveNotificationUid(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 7045
    const/4 v0, -0x1

    if-ne p4, v0, :cond_4

    .line 7046
    const/4 p4, 0x0

    .line 7049
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7050
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 7051
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->isCallerSameApp(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7052
    :cond_16
    return p3

    .line 7055
    :cond_17
    const/4 v0, -0x1

    .line 7057
    .local v0, "targetUid":I
    :try_start_18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_20

    move v0, v1

    .line 7060
    goto :goto_21

    .line 7058
    :catch_20
    move-exception v1

    .line 7062
    :goto_21
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->isCallerAndroid(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7063
    invoke-virtual {v1, p2, v0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 7066
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2, p4}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_7c

    .line 7071
    :cond_3a
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2, p4}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 7073
    return v0

    .line 7077
    :cond_45
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot post for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7068
    :cond_7c
    :goto_7c
    return v0
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8101
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_65

    .line 8102
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8105
    const-string v3, "android"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 8106
    const-string/jumbo v4, "timeout"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 8107
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 8106
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 8108
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 8109
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0xc000000

    .line 8102
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 8111
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 8112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 8111
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 8114
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_65
    return-void
.end method

.method sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 11
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 9150
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 9151
    return-void

    .line 9154
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 9155
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9156
    .local v1, "packageName":Ljava/lang/CharSequence;
    const/16 v2, 0x40

    .line 9157
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 9158
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 9159
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 9160
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v3

    .line 9161
    .local v3, "visibilityOverride":I
    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_32

    .line 9162
    iget v4, v0, Landroid/app/Notification;->visibility:I

    goto :goto_33

    :cond_32
    move v4, v3

    .line 9163
    .local v4, "notifVisibility":I
    :goto_33
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 9164
    .local v5, "userId":I
    const/4 v6, 0x1

    if-ltz v5, :cond_48

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v7

    if-eqz v7, :cond_48

    move v7, v6

    goto :goto_49

    :cond_48
    const/4 v7, 0x0

    .line 9165
    .local v7, "needPublic":Z
    :goto_49
    if-eqz v7, :cond_53

    if-eq v4, v6, :cond_53

    .line 9168
    iget-object v6, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_56

    .line 9170
    :cond_53
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 9172
    :goto_56
    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 9173
    .local v6, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 9174
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9177
    :cond_65
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9178
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "am"    # Landroid/view/accessibility/AccessibilityManager;

    .line 2224
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2225
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "audioMananger"    # Landroid/media/AudioManager;

    .line 2075
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2076
    return-void
.end method

.method protected setDefaultAssistantForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 900
    const-string/jumbo v0, "systemui"

    const-string/jumbo v1, "nas_default_service"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "overrideDefaultAssistantString":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 904
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v1

    .line 908
    .local v1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 909
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_28

    return-void

    .line 908
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 912
    .end local v1    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v2    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getDefaultComponents()Landroid/util/ArraySet;

    move-result-object v1

    .line 915
    .local v1, "defaults":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_32
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 916
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 917
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->allowAssistant(ILandroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_45

    return-void

    .line 915
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 919
    .end local v2    # "i":I
    :cond_48
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 2181
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 2182
    return-void
.end method

.method setHints(I)V
    .registers 2
    .param p1, "hints"    # I

    .line 2110
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 2111
    return-void
.end method

.method setIsAutomotive(Z)V
    .registers 2
    .param p1, "isAutomotive"    # Z

    .line 2204
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsAutomotive:Z

    .line 2205
    return-void
.end method

.method setIsTelevision(Z)V
    .registers 2
    .param p1, "isTelevision"    # Z

    .line 2214
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 2215
    return-void
.end method

.method setKeyguardManager(Landroid/app/KeyguardManager;)V
    .registers 2
    .param p1, "keyguardManager"    # Landroid/app/KeyguardManager;

    .line 2085
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2086
    return-void
.end method

.method setLights(Lcom/android/server/lights/LogicalLight;)V
    .registers 3
    .param p1, "light"    # Lcom/android/server/lights/LogicalLight;

    .line 2115
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 2116
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 2117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 2118
    return-void
.end method

.method setNASMigrationDone(I)V
    .registers 9
    .param p1, "baseUserId"    # I

    .line 887
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    array-length v2, v0

    :goto_8
    if-ge v1, v2, :cond_1e

    aget v3, v0, v1

    .line 888
    .local v3, "profileId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "nas_settings_updated"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 887
    .end local v3    # "profileId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 891
    :cond_1e
    return-void
.end method

.method protected setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    .registers 15
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .param p2, "baseUserId"    # I
    .param p3, "granted"    # Z
    .param p4, "userSet"    # Z

    .line 5995
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 5996
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_82

    .line 5997
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5998
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    .line 5999
    .local v9, "userId":I
    const/4 v3, 0x0

    if-nez p1, :cond_2f

    .line 6000
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 6001
    invoke-virtual {v4, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v4

    .line 6000
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 6002
    .local v4, "allowedAssistant":Landroid/content/ComponentName;
    if-eqz v4, :cond_c

    .line 6003
    invoke-virtual {p0, v4, v9, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    goto :goto_c

    .line 6008
    .end local v4    # "allowedAssistant":Landroid/content/ComponentName;
    :cond_2f
    if-eqz p3, :cond_47

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Lcom/android/internal/util/function/TriPredicate;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 6009
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getRequiredPermission()Ljava/lang/String;

    move-result-object v7

    .line 6008
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 6010
    :cond_47
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v3, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 6012
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v5, v9

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    .line 6015
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6017
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    .line 6018
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 6019
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    .line 6015
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6021
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 6023
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_81
    goto :goto_c

    .line 6025
    :cond_82
    return-void
.end method

.method setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 2209
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationEffectsEnabledForAutomotive:Z

    .line 2210
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;

    .line 2186
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2187
    return-void
.end method

.method setPreferencesHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2
    .param p1, "prefHelper"    # Lcom/android/server/notification/PreferencesHelper;

    .line 2195
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .param p1, "rankingHelper"    # Lcom/android/server/notification/RankingHelper;

    .line 2191
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 2192
    return-void
.end method

.method setScreenOn(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 2122
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 2123
    return-void
.end method

.method setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ShortcutHelper;

    .line 2095
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 2096
    return-void
.end method

.method setStrongAuthTracker(Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;)V
    .registers 2
    .param p1, "strongAuthTracker"    # Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 2080
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mStrongAuthTracker:Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;

    .line 2081
    return-void
.end method

.method setSystemReady(Z)V
    .registers 2
    .param p1, "systemReady"    # Z

    .line 2176
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 2177
    return-void
.end method

.method setTelecomManager(Landroid/telecom/TelecomManager;)V
    .registers 2
    .param p1, "tm"    # Landroid/telecom/TelecomManager;

    .line 2229
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 2230
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .param p1, "us"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 2219
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 2220
    return-void
.end method

.method setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/VibratorHelper;

    .line 2105
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 2106
    return-void
.end method

.method setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 2199
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2200
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 8338
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 8339
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 8340
    return v2

    .line 8344
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 8345
    return v2

    .line 8349
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 8350
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 8351
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 8352
    return v2

    .line 8356
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 8357
    return v2

    .line 8361
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 8362
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 8363
    return v2

    .line 8368
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8369
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 8370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Muting recently noisy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotificationService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8371
    return v2

    .line 8375
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCurrentlyInsistent()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 8376
    return v2

    .line 8380
    :cond_73
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 8381
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v4

    if-eqz v4, :cond_8c

    :cond_8a
    move v4, v2

    goto :goto_8d

    :cond_8c
    move v4, v5

    .line 8382
    .local v4, "isBubbleOrOverflowed":Z
    :goto_8d
    iget-boolean v6, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v6, :cond_b2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v6

    if-nez v6, :cond_b2

    if-eqz v4, :cond_b2

    .line 8383
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_b2

    .line 8384
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 8385
    return v2

    .line 8389
    :cond_b2
    return v5
.end method

.method showNextToastLocked(Z)V
    .registers 14
    .param p1, "lastToastWasTextRecord"    # Z

    .line 8542
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    if-eqz v0, :cond_5

    .line 8543
    return-void

    .line 8546
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 8547
    .local v0, "record":Lcom/android/server/notification/toast/ToastRecord;
    :goto_e
    if-eqz v0, :cond_87

    .line 8548
    iget v2, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 8549
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimitingDisabledUids:Ljava/util/Set;

    iget v4, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 8550
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 8551
    .local v3, "rateLimitingEnabled":Z
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v6, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 8552
    const-string/jumbo v7, "toast_quota_tag"

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 8553
    invoke-direct {p0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->isExemptFromRateLimiting(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_3c

    :cond_3a
    move v5, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v5, v4

    .line 8554
    .local v5, "isWithinQuota":Z
    :goto_3d
    iget v6, v0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackageInForegroundForToast(I)Z

    move-result v6

    .line 8556
    .local v6, "isPackageInForeground":Z
    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->tryShowToast(Lcom/android/server/notification/toast/ToastRecord;ZZZ)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 8558
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/toast/ToastRecord;Z)V

    .line 8559
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mIsCurrentToastShown:Z

    .line 8560
    if-eqz v3, :cond_59

    if-nez v6, :cond_59

    .line 8561
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    iget-object v4, v0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 8563
    :cond_59
    return-void

    .line 8566
    :cond_5a
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 8567
    .local v7, "index":I
    if-ltz v7, :cond_73

    .line 8568
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/toast/ToastRecord;

    .line 8569
    .local v8, "toast":Lcom/android/server/notification/toast/ToastRecord;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v10, v8, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v11, v8, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 8572
    .end local v8    # "toast":Lcom/android/server/notification/toast/ToastRecord;
    :cond_73
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_84

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/toast/ToastRecord;

    goto :goto_85

    :cond_84
    const/4 v4, 0x0

    :goto_85
    move-object v0, v4

    .line 8573
    .end local v2    # "userId":I
    .end local v3    # "rateLimitingEnabled":Z
    .end local v5    # "isWithinQuota":Z
    .end local v6    # "isPackageInForeground":Z
    .end local v7    # "index":I
    goto :goto_e

    .line 8574
    :cond_87
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "snoozeCriterionId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9657
    if-nez p5, :cond_3

    .line 9658
    return-void

    .line 9660
    :cond_3
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 9661
    .local v0, "listenerName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_11

    if-eqz p4, :cond_13

    :cond_11
    if-nez p1, :cond_14

    .line 9662
    :cond_13
    return-void

    .line 9664
    :cond_14
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9665
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findInCurrentAndSnoozedNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    .line 9666
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_1f

    .line 9667
    monitor-exit v1

    return-void

    .line 9669
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v3

    invoke-virtual {p5, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 9670
    monitor-exit v1

    return-void

    .line 9672
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_63

    .line 9674
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_53

    .line 9675
    const-string v1, "NotificationService"

    const-string/jumbo v2, "snooze event(%s, %d, %s, %s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9679
    :cond_53
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 9680
    return-void

    .line 9672
    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "muteOnReturn"    # Z

    .line 9683
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 9684
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_23

    .line 9685
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string/jumbo v2, "unsnooze event(%s, %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9687
    :cond_23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    .line 9688
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 9689
    return-void
.end method

.method protected updateAutobundledSummaryFlags(ILjava/lang/String;ZZ)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "needsOngoingFlag"    # Z
    .param p4, "isAppForeground"    # Z

    .line 933
    move-object v7, p0

    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/ArrayMap;

    .line 934
    .local v8, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_11

    .line 935
    return-void

    .line 937
    :cond_11
    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 938
    .local v10, "summaryKey":Ljava/lang/String;
    if-nez v10, :cond_1d

    .line 939
    return-void

    .line 941
    :cond_1d
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 942
    .local v11, "summary":Lcom/android/server/notification/NotificationRecord;
    if-nez v11, :cond_29

    .line 943
    return-void

    .line 945
    :cond_29
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v12, v0, Landroid/app/Notification;->flags:I

    .line 946
    .local v12, "oldFlags":I
    if-eqz p3, :cond_44

    .line 947
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_52

    .line 949
    :cond_44
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 952
    :goto_52
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    if-eq v0, v12, :cond_73

    .line 953
    iget-object v13, v7, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object v3, v11

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZJ)V

    .line 953
    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 956
    :cond_73
    return-void
.end method

.method updateLightsLocked()V
    .registers 9

    .line 9782
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_5

    .line 9783
    return-void

    .line 9787
    :cond_5
    const/4 v0, 0x0

    .line 9788
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_6
    const/4 v1, 0x1

    if-nez v0, :cond_47

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 9789
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9790
    .local v1, "owner":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 9791
    if-nez v0, :cond_46

    .line 9792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LED Notification does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 9793
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9795
    .end local v1    # "owner":Ljava/lang/String;
    :cond_46
    goto :goto_6

    .line 9798
    :cond_47
    if-eqz v0, :cond_8a

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_8a

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v2, :cond_8a

    .line 9800
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/notification/NotificationManagerServiceStub;->isDeniedLed(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_8a

    .line 9803
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    .line 9804
    .local v2, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v2, :cond_8f

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v3, :cond_8f

    .line 9807
    sget-boolean v3, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v3, :cond_7e

    .line 9808
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v3

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 9810
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 9809
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/server/notification/NotificationManagerServiceStub;->customizeNotificationLight(IIILandroid/content/Context;)Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    .line 9813
    :cond_7e
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    goto :goto_8f

    .line 9801
    .end local v2    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 9817
    :cond_8f
    :goto_8f
    return-void
.end method

.method updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 25
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromListener"    # Z

    .line 2881
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_68

    .line 2883
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2884
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 2883
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2886
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2887
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v15

    .line 2888
    .local v15, "profileIds":Landroid/util/IntArray;
    invoke-virtual {v15}, Landroid/util/IntArray;->size()I

    move-result v10

    .line 2889
    .local v10, "N":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_39
    if-ge v9, v10, :cond_64

    .line 2890
    invoke-virtual {v15, v9}, Landroid/util/IntArray;->get(I)I

    move-result v16

    .line 2891
    .local v16, "profileId":I
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v8, v16

    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    move/from16 v9, v17

    move/from16 v17, v10

    .end local v10    # "N":I
    .local v17, "N":I
    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2889
    .end local v16    # "profileId":I
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto :goto_39

    .end local v17    # "N":I
    .restart local v10    # "N":I
    :cond_64
    move/from16 v19, v9

    move/from16 v17, v10

    .line 2897
    .end local v9    # "i":I
    .end local v10    # "N":I
    .end local v15    # "profileIds":Landroid/util/IntArray;
    :cond_68
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2898
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 2900
    .local v0, "preUpdate":Landroid/app/NotificationChannel;
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/PreferencesHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 2901
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_93

    .line 2902
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2903
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eqz v5, :cond_8f

    move v5, v2

    goto :goto_90

    :cond_8f
    move v5, v3

    .line 2902
    :goto_90
    invoke-virtual {v1, v12, v4, v5, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 2905
    :cond_93
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 2907
    if-nez p4, :cond_ac

    .line 2908
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 2909
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2908
    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 2910
    .local v1, "modifiedChannel":Landroid/app/NotificationChannel;
    iget-object v2, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2911
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x2

    .line 2910
    invoke-virtual {v2, v12, v3, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2915
    .end local v1    # "modifiedChannel":Landroid/app/NotificationChannel;
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2916
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 11
    .param p1, "newRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 9344
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V

    .line 9345
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;IZ)V
    .registers 22
    .param p1, "newRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "onlyRevokeCurrentTarget"    # Z

    .line 9351
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v9, v0

    .line 9352
    .local v9, "key":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": updating permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9354
    :cond_2e
    const/4 v0, 0x0

    if-eqz v7, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v1, v0

    :goto_37
    move-object v11, v1

    .line 9355
    .local v11, "newUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-eqz v8, :cond_3e

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v0

    :cond_3e
    move-object v12, v0

    .line 9358
    .local v12, "oldUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-nez v11, :cond_44

    if-nez v12, :cond_44

    .line 9359
    return-void

    .line 9363
    :cond_44
    const/4 v0, 0x0

    .line 9364
    .local v0, "permissionOwner":Landroid/os/IBinder;
    if-eqz v7, :cond_4b

    if-nez v0, :cond_4b

    .line 9365
    iget-object v0, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 9367
    :cond_4b
    if-eqz v8, :cond_51

    if-nez v0, :cond_51

    .line 9368
    iget-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 9372
    :cond_51
    if-eqz v11, :cond_88

    if-nez v0, :cond_88

    .line 9373
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": creating owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9374
    :cond_6f
    iget-object v1, v6, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 9380
    :cond_88
    if-nez v11, :cond_9c

    if-eqz v0, :cond_9c

    if-nez p5, :cond_9c

    .line 9381
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v6, v0, v1, v9}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 9382
    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_9d

    .line 9386
    :cond_9c
    move-object v13, v0

    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .local v13, "permissionOwner":Landroid/os/IBinder;
    :goto_9d
    if-eqz v11, :cond_e8

    if-eqz v13, :cond_e8

    .line 9387
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_a3
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v14, v0, :cond_e8

    .line 9388
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/Uri;

    .line 9389
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_b8

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 9390
    :cond_b8
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_d6

    .line 9391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9393
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 9387
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_e5
    add-int/lit8 v14, v14, 0x1

    goto :goto_a3

    .line 9400
    .end local v14    # "i":I
    :cond_e8
    if-eqz v12, :cond_14d

    if-eqz v13, :cond_14d

    .line 9401
    const/4 v0, 0x0

    move v14, v0

    .restart local v14    # "i":I
    :goto_ee
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v14, v0, :cond_14d

    .line 9402
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/Uri;

    .line 9403
    .restart local v15    # "uri":Landroid/net/Uri;
    if-eqz v11, :cond_103

    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 9404
    :cond_103
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_121

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": revoking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9405
    :cond_121
    if-eqz p5, :cond_138

    .line 9408
    nop

    .line 9409
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 9408
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    goto :goto_14a

    .line 9415
    :cond_138
    nop

    .line 9416
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 9415
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 9401
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_14a
    :goto_14a
    add-int/lit8 v14, v14, 0x1

    goto :goto_ee

    .line 9423
    .end local v14    # "i":I
    :cond_14d
    if-eqz v7, :cond_151

    .line 9424
    iput-object v13, v7, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 9426
    :cond_151
    return-void
.end method
