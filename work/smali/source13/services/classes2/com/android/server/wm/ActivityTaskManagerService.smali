.class public Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerService$LocalService;,
        Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;,
        Lcom/android/server/wm/ActivityTaskManagerService$H;,
        Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;,
        Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;,
        Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;,
        Lcom/android/server/wm/ActivityTaskManagerService$HotPath;,
        Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;,
        Lcom/android/server/wm/ActivityTaskManagerService$LayoutReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$PowerModeReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$AppSwitchState;,
        Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x64

.field static final ACTIVITY_BG_START_GRACE_PERIOD_MS:J = 0x2710L

.field static final ANIMATE:Z = true

.field static final APP_SWITCH_ALLOW:I = 0x2

.field static final APP_SWITCH_DISALLOW:I = 0x0

.field static final APP_SWITCH_FG_ONLY:I = 0x1

.field private static final CAST_MODE_ENTER:I = 0x1

.field private static final CAST_MODE_EXIT:I = 0x0

.field private static final DOZE_ANIMATING_STATE_RETAIN_TIME_MS:J = 0x7d0L

.field public static final DUMP_ACTIVITIES_CMD:Ljava/lang/String; = "activities"

.field public static final DUMP_ACTIVITIES_SHORT_CMD:Ljava/lang/String; = "a"

.field public static final DUMP_CONTAINERS_CMD:Ljava/lang/String; = "containers"

.field public static final DUMP_LASTANR_CMD:Ljava/lang/String; = "lastanr"

.field public static final DUMP_LASTANR_TRACES_CMD:Ljava/lang/String; = "lastanr-traces"

.field public static final DUMP_RECENTS_CMD:Ljava/lang/String; = "recents"

.field public static final DUMP_RECENTS_SHORT_CMD:Ljava/lang/String; = "r"

.field public static final DUMP_STARTER_CMD:Ljava/lang/String; = "starter"

.field public static final DUMP_TOP_RESUMED_ACTIVITY:Ljava/lang/String; = "top-resumed"

.field static final INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MILLIS:J = 0xea60L

.field static final LAYOUT_REASON_CONFIG_CHANGED:I = 0x1

.field static final LAYOUT_REASON_VISIBILITY_CHANGED:I = 0x2

.field private static final MAX_RESUME_TIME:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field private static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field public static final PERSONAL_ASSISTANT_PKG_NAME:Ljava/lang/String; = "com.miui.personalassistant"

.field static final POWER_MODE_REASON_ALL:I = 0x3

.field static final POWER_MODE_REASON_CHANGE_DISPLAY:I = 0x2

.field static final POWER_MODE_REASON_START_ACTIVITY:I = 0x1

.field static final POWER_MODE_REASON_UNKNOWN_VISIBILITY:I = 0x4

.field private static final POWER_MODE_UNKNOWN_VISIBILITY_TIMEOUT_MS:J = 0x3e8L

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field private static final RESUME_FG_APP_SWITCH_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field final GL_ES_VERSION:I

.field private mAccessibilityServiceUids:[I

.field private final mActionDoneSync:Ljava/lang/Object;

.field final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field mActivityClientController:Lcom/android/server/wm/ActivityClientController;

.field private mActivityInterceptorCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field final mAllowAppSwitchUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAnrController:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AnrController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private volatile mAppSwitchesState:I

.field mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field private final mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

.field private mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mCastActivity:Lcom/android/server/wm/ActivityRecord;

.field private mCastRotationChanged:Z

.field private final mCompanionAppUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field private mConfigurationSeq:I

.field mContext:Landroid/content/Context;

.field mController:Landroid/app/IActivityController;

.field mControllerIsAMonkey:Z

.field mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field mDevEnableNonResizableMultiWindow:Z

.field private mDeviceOwnerUid:I

.field private volatile mDreaming:Z

.field final mFactoryTest:I

.field public mFinishCastActivity:Z

.field mForceResizableActivities:Z

.field private mGlobalAssetsSeq:I

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field mHasHeavyWeightFeature:Z

.field mHasLeanbackFeature:Z

.field volatile mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field volatile mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mKeyguardShown:Z

.field mLargeScreenSmallestScreenWidthDp:I

.field mLastANRState:Ljava/lang/String;

.field mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private volatile mLastStopAppSwitchesTime:J

.field private mLaunchPowerModeReasons:I

.field private mLayoutReasons:I

.field private final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field private mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field mMinPercentageMultiWindowSupportHeight:F

.field mMinPercentageMultiWindowSupportWidth:F

.field public mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

.field mMiuiMultiWinSplitStub:Lcom/android/server/wm/MiuiMultiWinSplitStub;

.field mMiuiMultiWindowServiceStub:Lcom/android/server/wm/MiuiMultiWindowServiceStub;

.field mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

.field private final mPendingAssistExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field volatile mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field private mPreviousProcessVisibleTime:J

.field final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field final mProcessNames:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field mProfileApp:Ljava/lang/String;

.field mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field mProfilerInfo:Landroid/app/ProfilerInfo;

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field mRespectsActivityMinWidthHeightMultiWindow:I

.field public mResumeCastActivity:Z

.field private volatile mRetainPowerModeAndTopProcessState:Z

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field final mScreenObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

.field private mShowDialogs:Z

.field mShuttingDown:Z

.field private volatile mSleeping:Z

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mSupportedSystemLocales:[Ljava/lang/String;

.field mSupportsExpandedPictureInPicture:Z

.field mSupportsFreeformWindowManagement:Z

.field mSupportsMultiDisplay:Z

.field mSupportsMultiWindow:Z

.field mSupportsNonResizableMultiWindow:I

.field mSupportsPictureInPicture:Z

.field mSupportsSplitScreenMultiWindow:Z

.field mSuppressResizeConfigChanges:Z

.field private mSysUiServiceComponent:Landroid/content/ComponentName;

.field final mSystemThread:Landroid/app/ActivityThread;

.field private mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTempConfig:Landroid/content/res/Configuration;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field mTopAction:Ljava/lang/String;

.field volatile mTopApp:Lcom/android/server/wm/WindowProcessController;

.field mTopComponent:Landroid/content/ComponentName;

.field mTopData:Ljava/lang/String;

.field volatile mTopProcessState:I

.field private mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUiContext:Landroid/content/Context;

.field mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field private final mUpdateLock:Landroid/os/UpdateLock;

.field private final mUpdateOomAdjRunnable:Ljava/lang/Runnable;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mViSessionId:I

.field final mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

.field mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVr2dDisplayId:I

.field mVrController:Lcom/android/server/wm/VrController;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$0lt5hsgGpP8ewA1uu12UgfVfgEw(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->cancelHeavyWeightProcessNotification(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cB4k8uAIgFV-rmxpnihi_DiMpv4(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDPnzqVuuoVSFA7RJcXFWsrCwrY(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/wm/ActivityTaskManagerService;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBackgroundActivityStartCallback(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDreaming(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanCloseSystemDialogs(Lcom/android/server/wm/ActivityTaskManagerService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAppTasks(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartActivityAsUser(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFontScaleIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFontWeightAdjustmentIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontWeightAdjustmentIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShouldShowDialogsLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 876
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    .line 430
    new-instance v1, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 438
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 448
    new-instance v1, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v1}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 450
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 452
    new-instance v1, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 472
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 476
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 496
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 509
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 515
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 537
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 544
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 550
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 579
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 580
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 586
    const-string v3, "android.intent.action.MAIN"

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 590
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 591
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 592
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 604
    new-instance v3, Landroid/os/UpdateLock;

    const-string v4, "immersive"

    invoke-direct {v3, v4}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 610
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 691
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 694
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 722
    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 766
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 769
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 818
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 820
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 868
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    .line 877
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 878
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 879
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 880
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 881
    new-instance v2, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {v2}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 882
    new-instance v2, Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-direct {v2, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 883
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 884
    const-string/jumbo v2, "ro.opengles.version"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 885
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 886
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 887
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 889
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 890
    new-instance v0, Lcom/android/server/wm/BackNavigationController;

    invoke-direct {v0}, Lcom/android/server/wm/BackNavigationController;-><init>()V

    goto :goto_ed

    :cond_ec
    nop

    :goto_ed
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 893
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V

    .line 895
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 896
    invoke-static {}, Lcom/android/server/wm/ApplicationCompatRouterStub;->get()Lcom/android/server/wm/ApplicationCompatRouterStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ApplicationCompatRouterStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 897
    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppContinuityRouterStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 899
    :cond_110
    invoke-static {}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getInstance()Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 900
    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 905
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiMultiWindowServiceStub:Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    .line 906
    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 907
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWinSplitStub;->getInstance()Lcom/android/server/wm/MiuiMultiWinSplitStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiMultiWinSplitStub:Lcom/android/server/wm/MiuiMultiWinSplitStub;

    .line 908
    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiMultiWinSplitStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 910
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 3612
    if-eqz p2, :cond_9

    .line 3613
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3615
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 3616
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3618
    :cond_15
    return-void
.end method

.method private canCloseSystemDialogs(II)Z
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3417
    const-string v0, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3419
    return v1

    .line 3421
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3424
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 3425
    .local v2, "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v2, :cond_4d

    .line 3426
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1d
    if-ge v3, v4, :cond_4d

    .line 3427
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 3433
    .local v5, "process":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result v6

    .line 3434
    .local v6, "sourceUid":I
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3f

    const-string v8, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v8, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3f

    .line 3437
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3441
    :cond_3f
    :try_start_3f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->canCloseSystemDialogsByToken()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 3442
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3426
    .end local v5    # "process":Lcom/android/server/wm/WindowProcessController;
    .end local v6    # "sourceUid":I
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3446
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4d
    const-wide/32 v3, 0xa692aad

    :try_start_50
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_70

    .line 3456
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 3457
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3462
    :cond_63
    :try_start_63
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    invoke-static {v3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3463
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3466
    .end local v2    # "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_70
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3467
    const/4 v0, 0x0

    return v0

    .line 3466
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 5211
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    .line 5212
    .local v6, "inm":Landroid/app/INotificationManager;
    if-nez v6, :cond_7

    .line 5213
    return-void

    .line 5216
    :cond_7
    :try_start_7
    const-string v1, "android"

    const-string v2, "android"

    const/4 v3, 0x0

    const/16 v4, 0xb

    move-object v0, v6

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_13} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_1e

    .line 5220
    :catch_14
    move-exception v0

    goto :goto_1f

    .line 5218
    :catch_16
    move-exception v0

    .line 5219
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Error canceling notification for service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5221
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1e
    nop

    .line 5223
    :goto_1f
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 3363
    nop

    .line 3364
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3363
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .line 3496
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3488
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 3489
    return v0

    .line 3491
    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focused app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 4447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4448
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4449
    .local v1, "appThread":Landroid/app/IApplicationThread;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4451
    const-string v3, "ACTIVITY "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4452
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4453
    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4454
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4455
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 4457
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4458
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    move-object v1, v3

    goto :goto_58

    .line 4460
    :cond_53
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4462
    :goto_58
    if-eqz p6, :cond_5e

    .line 4463
    const/4 v3, 0x1

    invoke-virtual {p4, p3, v0, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4465
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4466
    if-eqz v1, :cond_b9

    .line 4469
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 4470
    :try_start_67
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_86

    .line 4471
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_6c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4472
    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_7c

    .line 4473
    :try_start_78
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7b} :catch_86

    goto :goto_b9

    .line 4470
    :catchall_7c
    move-exception v3

    :try_start_7d
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception v4

    :try_start_82
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v1    # "appThread":Landroid/app/IApplicationThread;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p5    # "args":[Ljava/lang/String;
    .end local p6    # "dumpAll":Z
    :goto_85
    throw v3
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_86} :catch_86

    .line 4475
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    .restart local v1    # "appThread":Landroid/app/IApplicationThread;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p5    # "args":[Ljava/lang/String;
    .restart local p6    # "dumpAll":Z
    :catch_86
    move-exception v2

    .line 4476
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Got a RemoteException while dumping the activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b9

    .line 4473
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_9e
    move-exception v2

    .line 4474
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failure while dumping the activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4479
    .end local v2    # "e":Ljava/io/IOException;
    :cond_b9
    :goto_b9
    return-void

    .line 4465
    :catchall_ba
    move-exception v3

    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private enforceCallerIsDream(Ljava/lang/String;)V
    .registers 6
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 1556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1558
    .local v0, "origId":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_17

    if-eqz v2, :cond_f

    .line 1563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    nop

    .line 1565
    return-void

    .line 1559
    :cond_f
    :try_start_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callerPackageName":Ljava/lang/String;
    throw v2
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    .line 1563
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callerPackageName":Ljava/lang/String;
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    throw v2
.end method

.method static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4
    .param p0, "caller"    # Ljava/lang/String;

    .line 4506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4509
    return-void

    .line 4507
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enforceTaskPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .line 3471
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 3472
    return-void

    .line 3475
    :cond_9
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_19

    .line 3476
    const-string v0, "MANAGE_ACTIVITY_STACKS is deprecated, please use alternative permission: MANAGE_ACTIVITY_TASKS"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    return-void

    .line 3481
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3483
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .registers 38
    .param p1, "requestType"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p5, "receiverExtras"    # Landroid/os/Bundle;
    .param p6, "activityToken"    # Landroid/os/IBinder;
    .param p7, "checkActivityIsTop"    # Z
    .param p8, "newSessionId"    # Z
    .param p9, "userHandle"    # I
    .param p10, "args"    # Landroid/os/Bundle;
    .param p11, "timeout"    # J
    .param p13, "flags"    # I

    .line 3545
    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v2, "enqueueAssistContext()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v14, v0

    .line 3551
    .local v14, "rootTask":Lcom/android/server/wm/Task;
    const/4 v15, 0x0

    if-eqz v14, :cond_22

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v15

    .line 3552
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_23
    if-nez v0, :cond_31

    .line 3553
    const-string v1, "ActivityTaskManager"

    const-string v2, "getAssistContextExtras failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3556
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_54

    .line 3557
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssistContextExtras failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    monitor-exit v13
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3560
    :cond_54
    if-eqz p7, :cond_87

    .line 3561
    if-eqz v11, :cond_85

    .line 3562
    :try_start_58
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3563
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, v1, :cond_85

    .line 3564
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not current top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    monitor-exit v13
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3583
    .end local v1    # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_85
    move-object v9, v0

    goto :goto_d5

    .line 3570
    :cond_87
    :try_start_87
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v0, v1

    .line 3571
    if-nez v0, :cond_b1

    .line 3572
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    monitor-exit v13
    :try_end_ad
    .catchall {:try_start_87 .. :try_end_ad} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3576
    :cond_b1
    :try_start_b1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 3577
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    monitor-exit v13
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3576
    :cond_d4
    move-object v9, v0

    .line 3583
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_d5
    :try_start_d5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3584
    .local v8, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_e0

    .line 3585
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3587
    :cond_e0
    const-string v0, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    const-string v0, "android.intent.extra.ASSIST_UID"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3590
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v16, v8

    .end local v8    # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move-object/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "activity":Lcom/android/server/wm/ActivityRecord;
    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    move-object v1, v0

    .line 3592
    .local v1, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3595
    if-eqz p8, :cond_117

    .line 3596
    iget v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_117
    .catchall {:try_start_d5 .. :try_end_117} :catchall_164

    .line 3599
    :cond_117
    move-object/from16 v2, v17

    .end local v17    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :try_start_119
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v18

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget v3, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v21, p1

    move/from16 v22, v3

    move/from16 v23, p13

    invoke-interface/range {v18 .. v23}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3601
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_137} :catch_144
    .catchall {:try_start_119 .. :try_end_137} :catchall_164

    move-wide/from16 v3, p11

    :try_start_139
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_13c} :catch_142
    .catchall {:try_start_139 .. :try_end_13c} :catchall_16c

    .line 3606
    nop

    .line 3607
    :try_start_13d
    monitor-exit v13
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3603
    :catch_142
    move-exception v0

    goto :goto_147

    :catch_144
    move-exception v0

    move-wide/from16 v3, p11

    .line 3604
    .local v0, "e":Landroid/os/RemoteException;
    :goto_147
    :try_start_147
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    monitor-exit v13
    :try_end_160
    .catchall {:try_start_147 .. :try_end_160} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3608
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "rootTask":Lcom/android/server/wm/Task;
    .end local v16    # "extras":Landroid/os/Bundle;
    :catchall_164
    move-exception v0

    move-wide/from16 v3, p11

    :goto_167
    :try_start_167
    monitor-exit v13
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16c
    move-exception v0

    goto :goto_167
.end method

.method private getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 2847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2849
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2850
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 2853
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    return-object v3

    .line 2851
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 2853
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2854
    throw v2
.end method

.method static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4813
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 4816
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 4814
    :cond_10
    :goto_10
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/WindowProcessController;

    .line 4820
    if-nez p0, :cond_6

    .line 4821
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    return-wide v0

    .line 4823
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private increaseAssetConfigurationSeq()I
    .registers 3

    .line 4701
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    .line 4702
    return v0
.end method

.method private isSameApp(ILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2446
    if-eqz p1, :cond_11

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_11

    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 2449
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isTaskSizeChange(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 7480
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 7481
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 7482
    const/4 v0, 0x0

    return v0

    .line 7485
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopTaskVisibleActivities$11(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 7270
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getTopTaskVisibleActivities$12(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Intent;
    .registers 3
    .param p0, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 7272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7274
    return-object v0
.end method

.method static logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 5629
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_32

    .line 5630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onTransact aborts UID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5632
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5630
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5634
    :cond_32
    throw p1
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 8
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 3695
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3696
    .local v0, "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_7

    return-void

    .line 3697
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3701
    :try_start_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_2b

    .line 3705
    .local v1, "token":J
    :try_start_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 3707
    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3708
    nop

    .line 3714
    .end local v1    # "token":J
    goto :goto_2f

    .line 3707
    .restart local v1    # "token":J
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3708
    nop

    .end local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    throw v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2b

    .line 3711
    .end local v1    # "token":J
    .restart local v0    # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p3    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    :catch_2b
    move-exception v1

    .line 3712
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3715
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 6
    .param p1, "pae"    # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3622
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3623
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3624
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3625
    .local v1, "receiver":Landroid/app/IAssistDataReceiver;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3626
    if-eqz v1, :cond_27

    .line 3628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3630
    .local v0, "sendBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "receiverExtras"

    iget-object v3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3632
    :try_start_20
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v2, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    .line 3634
    goto :goto_27

    .line 3633
    :catch_26
    move-exception v2

    .line 3636
    .end local v0    # "sendBundle":Landroid/os/Bundle;
    :cond_27
    :goto_27
    return-void

    .line 3625
    .end local v1    # "receiver":Landroid/app/IAssistDataReceiver;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 15
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 5227
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_5

    .line 5228
    return-void

    .line 5231
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    .line 5232
    .local v8, "inm":Landroid/app/INotificationManager;
    if-nez v8, :cond_c

    .line 5233
    return-void

    .line 5237
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 5238
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104046a

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 5239
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 5238
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 5240
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080850

    .line 5243
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 5244
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5245
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5246
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 5247
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5249
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104046b

    .line 5251
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5250
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x14000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 5252
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5256
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_85} :catch_9c

    .line 5258
    .local v6, "notification":Landroid/app/Notification;
    :try_start_85
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object v1, v8

    move v7, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_91} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_91} :catch_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_91} :catch_9c

    .line 5263
    goto :goto_9b

    .line 5262
    :catch_92
    move-exception v0

    goto :goto_9b

    .line 5260
    :catch_94
    move-exception v1

    .line 5261
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_95
    const-string v2, "Error showing notification for heavy-weight app"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_9a} :catch_9c

    .line 5263
    nop

    .line 5266
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "text":Ljava/lang/String;
    :goto_9b
    goto :goto_a2

    .line 5264
    :catch_9c
    move-exception v1

    .line 5265
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to create context for heavy notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5268
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_a2
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "relaunchReason"    # I

    .line 4215
    packed-switch p0, :pswitch_data_c

    .line 4221
    const/4 v0, 0x0

    return-object v0

    .line 4219
    :pswitch_5
    const-string v0, "free_resize"

    return-object v0

    .line 4217
    :pswitch_8
    const-string/jumbo v0, "window_resize"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 4800
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4801
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 4802
    return-void
.end method

.method private start()V
    .registers 3

    .line 1266
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1267
    return-void
.end method

.method private startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I
    .param p13, "validateIncomingUser"    # Z

    .line 1342
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v3, "startActivityAsUser"

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1345
    const-class v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v4}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 1347
    .local v4, "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    if-eqz v4, :cond_26

    .line 1351
    invoke-interface {v4, v1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->enforceAllowedToStartActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 1348
    :cond_26
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "SdkSandboxManagerLocal not found when starting an activity from an SDK sandbox uid."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1354
    .end local v4    # "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v6

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1354
    const-string/jumbo v11, "startActivityAsUser"

    move/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v4

    .line 1358
    .end local p12    # "userId":I
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1359
    move-object v5, p1

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1360
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1361
    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1362
    move-object/from16 v7, p5

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1363
    move-object/from16 v8, p6

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1364
    move-object/from16 v9, p7

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1365
    move/from16 v10, p8

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1366
    move/from16 v11, p9

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1367
    move-object/from16 v12, p10

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1368
    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1369
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1370
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    .line 1358
    return v3
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .registers 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "targetUid"    # I

    .line 3718
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3720
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3721
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 3722
    .local v0, "wasRunningVoice":Z
    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3723
    if-nez v0, :cond_32

    .line 3724
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3725
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3728
    .end local v0    # "wasRunningVoice":Z
    :cond_32
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .registers 4

    .line 5306
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5307
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 5308
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 5310
    :cond_15
    return-void
.end method

.method private updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 15
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "persistent"    # Z
    .param p5, "userId"    # I
    .param p6, "deferResume"    # Z

    .line 4561
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method private updateEventDispatchingLocked(Z)V
    .registers 4
    .param p1, "booted"    # Z

    .line 4796
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 4797
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4847
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 4848
    return-void

    .line 4851
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 4854
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4855
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2a

    .line 4856
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4859
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 4860
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4861
    .local v2, "configuration":Landroid/content/res/Configuration;
    iput v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 4862
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 4863
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4864
    return-void

    .line 4863
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateFontWeightAdjustmentIfNeeded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4867
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 4868
    return-void

    .line 4871
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4873
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_weight_adjustment"

    const v2, 0x7fffffff

    .line 4872
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4878
    .local v0, "fontWeightAdjustment":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4879
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne v2, v0, :cond_29

    .line 4880
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4883
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 4884
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4885
    .local v2, "configuration":Landroid/content/res/Configuration;
    iput v0, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4886
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 4887
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4888
    return-void

    .line 4887
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "resumed"    # Lcom/android/server/wm/ActivityRecord;

    .line 5313
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    if-eqz v0, :cond_10

    .line 5314
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5315
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5314
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5317
    :cond_10
    if-eqz p1, :cond_1b

    .line 5318
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5319
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5318
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5321
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5322
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4836
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 4839
    .local v0, "inputMethodExists":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_error_dialogs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    .line 4841
    .local v3, "hideDialogsSet":Z
    :goto_23
    if-eqz v0, :cond_2f

    .line 4842
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-nez v3, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 4844
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "wakeFullness"    # I
    .param p3, "testPssMode"    # Z

    .line 4483
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4484
    .local v0, "sleepToken":J
    nop

    .line 4485
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result v2

    .line 4484
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4486
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4487
    .local v2, "tokenSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 4488
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 4489
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 4490
    .local v4, "st":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    const-wide v5, 0x20900000002L

    .line 4491
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4490
    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4487
    .end local v4    # "st":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 4493
    .end local v3    # "i":I
    :cond_3a
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4494
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4496
    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4498
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4499
    return-void
.end method


# virtual methods
.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2957
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2958
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2961
    .local v1, "callingIdent":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_176

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2962
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2963
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_157

    .line 2967
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2968
    .local v5, "comp":Landroid/content/ComponentName;
    if-eqz v5, :cond_138

    .line 2972
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v6, v7, :cond_f3

    .line 2973
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v6, v7, :cond_f3

    .line 2978
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_34

    .line 2979
    invoke-virtual {p2, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 2981
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 2982
    invoke-virtual {p2, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2984
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_52

    .line 2985
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/16 v7, 0x2000

    and-int/2addr v6, v7

    if-nez v6, :cond_52

    .line 2988
    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2991
    :cond_52
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x400

    .line 2992
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2991
    invoke-interface {v6, v5, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2993
    .local v6, "ainfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, -0x1

    if-eqz v6, :cond_c1

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v0, :cond_6a

    goto :goto_c1

    .line 3000
    :cond_6a
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 3001
    .local v8, "rootTask":Lcom/android/server/wm/Task;
    new-instance v9, Lcom/android/server/wm/Task$Builder;

    invoke-direct {v9, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 3002
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 3003
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 3004
    invoke-virtual {v9, v6}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 3005
    invoke-virtual {v9, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 3006
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 3007
    invoke-virtual {v9}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3009
    .local v9, "task":Lcom/android/server/wm/Task;
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/Task;)Z

    move-result v10

    if-nez v10, :cond_b0

    .line 3011
    const-string v10, "addAppTask"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 3012
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_b .. :try_end_a9} :catchall_170

    .line 3021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3012
    return v7

    .line 3014
    :cond_b0
    :try_start_b0
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3018
    iget v7, v9, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_170

    .line 3021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3018
    return v7

    .line 2994
    .end local v8    # "rootTask":Lcom/android/server/wm/Task;
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :cond_c1
    :goto_c1
    :try_start_c1
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t add task for another application: target uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2995
    if-nez v6, :cond_d2

    move v10, v7

    goto :goto_d6

    :cond_d2
    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_d6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", calling uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2994
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_c1 .. :try_end_ec} :catchall_170

    .line 3021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2997
    return v7

    .line 2974
    .end local v6    # "ainfo":Landroid/content/pm/ActivityInfo;
    :cond_f3
    :try_start_f3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad thumbnail size: got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2975
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", require "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v6

    .line 2969
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must specify explicit component"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v6

    .line 2964
    .end local v5    # "comp":Landroid/content/ComponentName;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity does not exist; token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v5

    .line 3019
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_170
    move-exception v4

    monitor-exit v3
    :try_end_172
    .catchall {:try_start_f3 .. :try_end_172} :catchall_170

    :try_start_172
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "callingIdent":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4    # "thumbnail":Landroid/graphics/Bitmap;
    throw v4
    :try_end_176
    .catchall {:try_start_172 .. :try_end_176} :catchall_176

    .line 3021
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingIdent":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4    # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_176
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3022
    throw v3
.end method

.method public addNfcBlackList(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 3275
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->addNfcBlackList(Ljava/lang/String;)V

    .line 3276
    return-void
.end method

.method addWindowLayoutReasons(I)V
    .registers 3
    .param p1, "reasons"    # I

    .line 4792
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 4793
    return-void
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 4087
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 4090
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 4092
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4093
    nop

    .line 4094
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4095
    return-void

    .line 4092
    .restart local v1    # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4093
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activity":Landroid/content/ComponentName;
    throw v3

    .line 4094
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activity":Landroid/content/ComponentName;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2007
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2008
    .local v0, "nextState":Z
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2019
    return-void
.end method

.method applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4158
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_43

    .line 4159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to main display for VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4162
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4161
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V

    .line 4164
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4178
    return-void
.end method

.method assertPackageMatchesCallingUid(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2458
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2459
    return-void

    .line 2461
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2463
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canLaunchDreamActivity(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1536
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    if-nez p1, :cond_8

    goto :goto_34

    .line 1539
    :cond_8
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    .line 1540
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    .line 1544
    .local v0, "dreamManager":Landroid/service/dreams/DreamManagerInternal;
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1545
    .local v2, "activeDream":Landroid/content/ComponentName;
    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1546
    return v3

    .line 1548
    :cond_22
    invoke-virtual {v0, v3}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v4

    .line 1549
    .local v4, "activeDoze":Landroid/content/ComponentName;
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1550
    return v3

    .line 1552
    :cond_33
    return v1

    .line 1537
    .end local v0    # "dreamManager":Landroid/service/dreams/DreamManagerInternal;
    .end local v2    # "activeDream":Landroid/content/ComponentName;
    .end local v4    # "activeDoze":Landroid/content/ComponentName;
    :cond_34
    :goto_34
    return v1
.end method

.method public cancelRecentsAnimation(Z)V
    .registers 11
    .param p1, "restoreHomeRootTaskPosition"    # Z

    .line 2715
    const-string v0, "cancelRecentsAnimation()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 2717
    .local v0, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2719
    .local v2, "origId":J
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_40

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2721
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_1a

    .line 2722
    const/4 v6, 0x2

    goto :goto_1b

    .line 2723
    :cond_1a
    const/4 v6, 0x0

    :goto_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancelRecentsAnimation/uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2721
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 2724
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    nop

    .line 2728
    return-void

    .line 2724
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":J
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "restoreHomeRootTaskPosition":Z
    throw v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2726
    .restart local v0    # "callingUid":J
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "restoreHomeRootTaskPosition":Z
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    throw v4
.end method

.method public cancelTaskWindowTransition(I)V
    .registers 9
    .param p1, "taskId"    # I

    .line 3958
    const-string v0, "cancelTaskWindowTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3959
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3961
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_50

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3962
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3964
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_3e

    .line 3965
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_4a

    .line 3971
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3966
    return-void

    .line 3968
    :cond_3e
    :try_start_3e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 3969
    .end local v3    # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_4a

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    .line 3971
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    nop

    .line 3973
    return-void

    .line 3969
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 3971
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_50
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    throw v2
.end method

.method public castRotationChanged(Z)V
    .registers 2
    .param p1, "changed"    # Z

    .line 7408
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastRotationChanged:Z

    .line 7409
    return-void
.end method

.method checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3374
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3375
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 3376
    .local v1, "process":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3377
    if-nez p3, :cond_18

    if-eqz v1, :cond_18

    .line 3385
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3387
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3388
    .local v0, "caller":Ljava/lang/String;
    if-eqz p3, :cond_54

    .line 3389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3391
    :cond_54
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_ef

    .line 3393
    const-wide/32 v4, 0xa692aad

    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 3398
    const-wide/32 v4, 0xa6929b8

    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 3399
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dropping broadcast."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const/4 v2, 0x0

    return v2

    .line 3406
    :cond_99
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in future builds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    return v3

    .line 3394
    :cond_c4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3413
    :cond_ef
    return v3

    .line 3376
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "process":Lcom/android/server/wm/WindowProcessController;
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 5199
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_9

    goto :goto_21

    .line 5203
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5204
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;-><init>()V

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5204
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5207
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5208
    return-void

    .line 5200
    .end local v0    # "m":Landroid/os/Message;
    :cond_21
    :goto_21
    return-void
.end method

.method public clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4245
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "clearLaunchParamsForPackages"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4246
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 4248
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 4247
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4250
    .end local v1    # "i":I
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4251
    return-void

    .line 4250
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearSplitTask(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 7584
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7585
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7586
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSecondStateActivity()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 7587
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-eqz v2, :cond_3f

    .line 7588
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 7589
    .local v2, "below":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3f

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 7590
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 7593
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "below":Lcom/android/server/wm/ActivityRecord;
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7594
    return-void

    .line 7593
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;

    .line 2345
    if-eqz p2, :cond_11

    .line 2346
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2346
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0

    .line 2349
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 3
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 5359
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method continueWindowLayout()V
    .registers 3

    .line 4780
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout(Z)V

    .line 4784
    return-void
.end method

.method protected createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;
    .registers 12
    .param p1, "uiContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "systemDir"    # Ljava/io/File;

    .line 1100
    new-instance v6, Lcom/android/server/wm/AppWarnings;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    return-object v6
.end method

.method protected createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 3

    .line 1092
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1093
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 1094
    .local v0, "supervisor":Lcom/android/server/wm/ActivityTaskSupervisor;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->initialize()V

    .line 1095
    return-object v0
.end method

.method deferWindowLayout()V
    .registers 2

    .line 4769
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4772
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 4775
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 4776
    return-void
.end method

.method public detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "transition"    # Landroid/os/IBinder;

    .line 4266
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "detachNavigationBarFromApp"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4270
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_29

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4271
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 4272
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 4274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4275
    nop

    .line 4276
    return-void

    .line 4272
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "transition":Landroid/os/IBinder;
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 4274
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "transition":Landroid/os/IBinder;
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4275
    throw v2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;

    .line 4327
    const-string v8, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 4329
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpClient"    # Z
    .param p7, "dumpPackage"    # Ljava/lang/String;
    .param p8, "header"    # Ljava/lang/String;

    .line 4333
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4335
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result v0

    .line 4337
    .local v0, "printedAnything":Z
    move v4, v0

    .line 4339
    .local v4, "needSep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4340
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4339
    const-string v5, "  ResumedActivity: "

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    .line 4342
    .local v1, "printed":Z
    if-eqz v1, :cond_23

    .line 4343
    const/4 v0, 0x1

    .line 4344
    const/4 v2, 0x0

    .end local v4    # "needSep":Z
    .local v2, "needSep":Z
    goto :goto_24

    .line 4342
    .end local v2    # "needSep":Z
    .restart local v4    # "needSep":Z
    :cond_23
    move v2, v4

    .line 4347
    .end local v4    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_24
    if-nez p7, :cond_42

    .line 4348
    if-eqz v2, :cond_2b

    .line 4349
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4351
    :cond_2b
    const/4 v0, 0x1

    .line 4352
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v4, "  "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4353
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/TaskOrganizerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4354
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/VisibleActivityProcessTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4355
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/MirrorActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4358
    :cond_42
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/wm/PreloadStateManagerStub;->dump(Ljava/io/PrintWriter;)V

    .line 4360
    if-nez v0, :cond_50

    .line 4361
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    :cond_50
    return-void
.end method

.method protected dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZI)Z
    .registers 34
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z
    .param p7, "dumpVisibleRootTasksOnly"    # Z
    .param p8, "dumpFocusedRootTaskOnly"    # Z
    .param p9, "userId"    # I

    .line 4401
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4402
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_d2

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :try_start_18
    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;

    move-result-object v0

    move-object v7, v0

    .line 4404
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4406
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_29

    .line 4407
    return v1

    .line 4410
    :cond_29
    array-length v0, v10

    sub-int/2addr v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 4411
    .local v6, "newArgs":[Ljava/lang/String;
    array-length v0, v10

    sub-int/2addr v0, v11

    invoke-static {v10, v11, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4413
    const/4 v0, 0x0

    .line 4414
    .local v0, "lastTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    .line 4415
    .local v1, "needSep":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    move/from16 v23, v1

    move-object v1, v0

    move/from16 v0, v23

    .local v0, "needSep":Z
    .local v1, "lastTask":Lcom/android/server/wm/Task;
    .local v5, "i":I
    :goto_42
    if-ltz v5, :cond_d1

    .line 4416
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    .line 4417
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_51

    .line 4418
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4420
    :cond_51
    const/16 v18, 0x1

    .line 4421
    .end local v0    # "needSep":Z
    .local v18, "needSep":Z
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4422
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_c3

    .line 4423
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eq v1, v0, :cond_90

    .line 4424
    move-object v1, v0

    .line 4425
    :try_start_60
    const-string v3, "TASK "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4426
    iget-object v3, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4427
    const-string v3, " id="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4428
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4429
    const-string v3, " userId="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4431
    if-eqz p6, :cond_85

    .line 4432
    const-string v3, "  "

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_60 .. :try_end_85} :catchall_88

    .line 4435
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_85
    move-object/from16 v19, v1

    goto :goto_92

    :catchall_88
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    goto :goto_ca

    .line 4423
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_90
    move-object/from16 v19, v1

    .line 4435
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "lastTask":Lcom/android/server/wm/Task;
    .local v19, "lastTask":Lcom/android/server/wm/Task;
    :goto_92
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_b9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4436
    const-string v2, "  "

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "i":I
    .local v20, "i":I
    move-object v5, v0

    move-object/from16 v21, v6

    .end local v6    # "newArgs":[Ljava/lang/String;
    .local v21, "newArgs":[Ljava/lang/String;
    move-object/from16 v22, v7

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v22, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    .line 4415
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v5, v20, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v7, v22

    .end local v20    # "i":I
    .restart local v5    # "i":I
    goto :goto_42

    .line 4435
    .end local v21    # "newArgs":[Ljava/lang/String;
    .end local v22    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6    # "newArgs":[Ljava/lang/String;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_b9
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v1, v19

    .end local v5    # "i":I
    .end local v6    # "newArgs":[Ljava/lang/String;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v20    # "i":I
    .restart local v21    # "newArgs":[Ljava/lang/String;
    .restart local v22    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    goto :goto_ca

    .end local v19    # "lastTask":Lcom/android/server/wm/Task;
    .end local v20    # "i":I
    .end local v21    # "newArgs":[Ljava/lang/String;
    .end local v22    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v1    # "lastTask":Lcom/android/server/wm/Task;
    .restart local v5    # "i":I
    .restart local v6    # "newArgs":[Ljava/lang/String;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_c3
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v5    # "i":I
    .end local v6    # "newArgs":[Ljava/lang/String;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v20    # "i":I
    .restart local v21    # "newArgs":[Ljava/lang/String;
    .restart local v22    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_ca
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_cf
    move-exception v0

    goto :goto_ca

    .line 4438
    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "needSep":Z
    .end local v20    # "i":I
    .end local v21    # "newArgs":[Ljava/lang/String;
    .end local v22    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v0, "needSep":Z
    .restart local v6    # "newArgs":[Ljava/lang/String;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_d1
    return v16

    .line 4404
    .end local v0    # "needSep":Z
    .end local v1    # "lastTask":Lcom/android/server/wm/Task;
    .end local v6    # "newArgs":[Ljava/lang/String;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_d2
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :goto_db
    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_db
.end method

.method dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4366
    const-string v0, "ACTIVITY MANAGER CONTAINERS (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4368
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4369
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 4372
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4373
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 4374
    return-void
.end method

.method dumpInstalledPackagesConfig(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4378
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PackageConfigPersister;->dump(Ljava/io/PrintWriter;I)V

    .line 4379
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4279
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4280
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4281
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4283
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4285
    :goto_12
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4288
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 4291
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4292
    const-string v1, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4293
    return-void

    .line 4296
    :cond_1c
    const/4 v1, 0x0

    .line 4297
    .local v1, "latest":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 4298
    .local v4, "f":Ljava/io/File;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 4299
    :cond_31
    move-object v1, v4

    .line 4297
    .end local v4    # "f":Ljava/io/File;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 4302
    :cond_35
    const-string v2, "File: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4305
    :try_start_44
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_67

    .line 4307
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 4308
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_5d

    goto :goto_4e

    .line 4310
    .end local v4    # "line":Ljava/lang/String;
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_67

    .line 4314
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_73

    .line 4305
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_5d
    move-exception v3

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v4

    :try_start_63
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "latest":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_66
    throw v3
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    .line 4310
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "latest":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catch_67
    move-exception v2

    .line 4311
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4315
    .end local v2    # "e":Ljava/io/IOException;
    :goto_73
    return-void
.end method

.method dumpTopResumedActivityLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4318
    const-string v0, "ACTIVITY MANAGER TOP-RESUMED (dumpsys activity top-resumed)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4320
    .local v0, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_13

    .line 4321
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4323
    :cond_13
    return-void
.end method

.method endLaunchPowerMode(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 4746
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez v0, :cond_5

    return-void

    .line 4747
    :cond_5
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4749
    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 4750
    const/4 v0, 0x1

    .line 4751
    .local v0, "allResolved":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_2b

    .line 4752
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 4753
    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    and-int/2addr v0, v3

    .line 4751
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 4755
    .end local v2    # "i":I
    :cond_2b
    if-eqz v0, :cond_3b

    .line 4756
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4757
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 4758
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4762
    .end local v0    # "allResolved":Z
    :cond_3b
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_47

    .line 4763
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 4765
    :cond_47
    return-void
.end method

.method public enforceSystemHasVrFeature()V
    .registers 3

    .line 3910
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3914
    return-void

    .line 3912
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "changes"    # I

    .line 5330
    const/4 v0, 0x1

    .line 5331
    .local v0, "kept":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5333
    .local v1, "mainRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1d

    .line 5334
    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    .line 5338
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5341
    :cond_11
    if-eqz p1, :cond_1d

    .line 5342
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 5346
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5351
    :cond_1d
    return v0
.end method

.method enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enter Pip, params is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 3837
    return v1

    .line 3842
    :cond_24
    const-string v0, "enterPictureInPictureMode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3844
    return v2

    .line 3847
    :cond_2e
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 3870
    .local v0, "enterPipRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3874
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 3882
    :cond_47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3884
    :goto_4a
    return v1
.end method

.method public enterSplitScreen(IZ)V
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "leftOrTop"    # Z

    .line 7548
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7549
    .local v0, "caller":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7551
    .local v1, "ident":J
    :try_start_8
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterSplitScreen from caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftOrTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->enterSplitScreen(IZ)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3e

    .line 7555
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7556
    nop

    .line 7557
    return-void

    .line 7555
    :catchall_3e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7556
    throw v3
.end method

.method public enterSplitScreenMode()V
    .registers 2

    .line 7577
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 7578
    return-void
.end method

.method public exitCastMode()V
    .registers 5

    .line 7376
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7377
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1c

    .line 7378
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7379
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1c

    .line 7380
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const-string v3, "exitCastMode"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7381
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeCastActivity()V

    .line 7384
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7385
    return-void

    .line 7384
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public exitProjectionMode()V
    .registers 5

    .line 7388
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e

    .line 7389
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7390
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7391
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 7392
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7393
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7394
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7396
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7402
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "exitProjectionMode"

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/ActivityManagerInternal;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2e

    .line 7396
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7404
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public exitSplitScreen(I)V
    .registers 8
    .param p1, "toTopTaskId"    # I

    .line 7563
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7564
    .local v0, "caller":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7566
    .local v1, "ident":J
    :try_start_8
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitSplitScreen from caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toTopTaskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskOrganizerController;->exitSplitScreen(I)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_34

    .line 7569
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7570
    nop

    .line 7571
    return-void

    .line 7569
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7570
    throw v3
.end method

.method finishRunningVoiceLocked()V
    .registers 2

    .line 3731
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 3732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3733
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3734
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3736
    :cond_f
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2859
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 2864
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 2866
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2867
    nop

    .line 2868
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2870
    return-void

    .line 2866
    .restart local v1    # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2867
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "session":Landroid/service/voice/IVoiceInteractionSession;
    throw v3

    .line 2868
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityClientController()Landroid/app/IActivityClientController;
    .registers 2

    .line 1999
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    return-object v0
.end method

.method getActivityInterceptorCallbacks()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .registers 2

    .line 1185
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object v0
.end method

.method public getAllRootTaskInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2662
    const-string v0, "getAllRootTaskInfos()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2665
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_24

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2666
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    .line 2669
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2666
    return-object v3

    .line 2667
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 2669
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    throw v2
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2688
    const-string v0, "getAllRootTaskInfosOnDisplay()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2691
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2692
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2695
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2692
    return-object v3

    .line 2693
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2695
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    throw v2
.end method

.method public getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;
    .registers 14
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 2494
    if-eqz p1, :cond_47

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_47

    .line 2499
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2500
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2501
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AnrController;>;"
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2503
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2504
    .local v0, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2505
    .local v2, "uid":I
    const-wide/16 v3, 0x0

    .line 2506
    .local v3, "maxDelayMs":J
    const/4 v5, 0x0

    .line 2508
    .local v5, "controllerWithMaxDelay":Landroid/app/AnrController;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AnrController;

    .line 2509
    .local v7, "controller":Landroid/app/AnrController;
    invoke-interface {v7, v0, v2}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v8

    .line 2510
    .local v8, "delayMs":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3f

    cmp-long v10, v8, v3

    if-lez v10, :cond_3f

    .line 2511
    move-object v5, v7

    .line 2512
    move-wide v3, v8

    .line 2514
    .end local v7    # "controller":Landroid/app/AnrController;
    .end local v8    # "delayMs":J
    :cond_3f
    goto :goto_23

    .line 2516
    :cond_40
    return-object v5

    .line 2501
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AnrController;>;"
    .end local v2    # "uid":I
    .end local v3    # "maxDelayMs":J
    .end local v5    # "controllerWithMaxDelay":Landroid/app/AnrController;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2495
    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 5442
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 5443
    :cond_4
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 5444
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5445
    return-object v0
.end method

.method getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1152
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 5

    .line 3027
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3028
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3029
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 2842
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .registers 2

    .line 5401
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 16
    .param p1, "requestType"    # I

    .line 3336
    nop

    .line 3338
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3336
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    .line 3339
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    if-nez v0, :cond_1a

    .line 3340
    const/4 v1, 0x0

    return-object v1

    .line 3342
    :cond_1a
    monitor-enter v0

    .line 3343
    :goto_1b
    :try_start_1b
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_48

    if-nez v1, :cond_25

    .line 3345
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    .line 3347
    :goto_22
    goto :goto_1b

    .line 3346
    :catch_23
    move-exception v1

    goto :goto_22

    .line 3349
    :cond_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_48

    .line 3350
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3351
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3352
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3353
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3354
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3355
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object v1

    .line 3354
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3349
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;
    .registers 2

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-object v0
.end method

.method getBalAppSwitchesState()I
    .registers 2

    .line 2471
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return v0
.end method

.method public getCastModeStackId()I
    .registers 2

    .line 7460
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 7461
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v0

    return v0

    .line 7463
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public getCastPackageName()Ljava/lang/String;
    .registers 2

    .line 7489
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_8
    return-object v0
.end method

.method public getCastRotationChanged()Z
    .registers 2

    .line 7412
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastRotationChanged:Z

    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 4513
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4514
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4515
    .local v1, "ci":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 4516
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4517
    return-object v1

    .line 4516
    .end local v1    # "ci":Landroid/content/res/Configuration;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserId()I
    .registers 2

    .line 4502
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 7

    .line 1237
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1238
    .local v0, "config":Landroid/content/pm/ConfigurationInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1240
    .local v2, "globalConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1241
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1242
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1243
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_25

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    .line 1245
    :cond_25
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1247
    :cond_2a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_38

    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    .line 1249
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1251
    :cond_38
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1252
    .end local v2    # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1253
    return-object v0

    .line 1252
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    const-string v0, "getFocusedRootTaskInfo()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2071
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_34

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2073
    .local v3, "focusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_25

    .line 2074
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v4

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 2079
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    return-object v4

    .line 2076
    :cond_25
    const/4 v4, 0x0

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2e

    .line 2079
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2076
    return-object v4

    .line 2077
    .end local v3    # "focusedRootTask":Lcom/android/server/wm/Task;
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 2079
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2080
    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 6

    .line 2037
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2039
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2040
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 2041
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_17
    if-nez v2, :cond_1f

    .line 2042
    const/4 v3, -0x3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2044
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v3

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2045
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 4528
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_e

    .line 4529
    :cond_9
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4528
    :goto_e
    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .registers 3

    .line 1205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1206
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .registers 6
    .param p1, "pid"    # I

    .line 1213
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_38

    if-gez p1, :cond_7

    goto :goto_38

    .line 1216
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1217
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1220
    .local v1, "app":Lcom/android/server/wm/WindowProcessController;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v2

    .line 1221
    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getGlobalConfigurationForMiui(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 1222
    .local v2, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_22

    .line 1223
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1227
    :cond_22
    if-eqz v1, :cond_29

    :try_start_24
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 1228
    .end local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v2    # "config":Landroid/content/res/Configuration;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1214
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 5405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5406
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5407
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5408
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 5409
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5411
    :cond_25
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 30
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "intents"    # [Landroid/content/Intent;
    .param p10, "resolvedTypes"    # [Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "bOptions"    # Landroid/os/Bundle;

    .line 5274
    move/from16 v13, p1

    const/4 v0, 0x0

    .line 5275
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x3

    if-ne v13, v14, :cond_51

    .line 5276
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5277
    const/4 v1, 0x0

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_2e

    .line 5278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, p6

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not in any root task"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    return-object v1

    .line 5282
    :cond_2e
    move-object/from16 v15, p6

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_4f

    .line 5283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is finishing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    return-object v1

    .line 5282
    :cond_4f
    move-object v12, v0

    goto :goto_54

    .line 5275
    :cond_51
    move-object/from16 v15, p6

    move-object v12, v0

    .line 5288
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_54
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v16, v12

    .end local v12    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 5291
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    const/high16 v1, 0x20000000

    and-int v1, p11, v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    .line 5292
    .local v1, "noCreate":Z
    :goto_7f
    if-eqz v1, :cond_82

    .line 5293
    return-object v0

    .line 5295
    :cond_82
    if-ne v13, v14, :cond_99

    .line 5296
    move-object/from16 v2, v16

    .end local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v3, :cond_91

    .line 5297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5299
    :cond_91
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 5295
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_99
    move-object/from16 v2, v16

    .line 5301
    .end local v16    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_9b
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .registers 4

    .line 4021
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4024
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1c

    .line 4025
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4027
    :cond_1c
    :try_start_1c
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4028
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLastStopAppSwitchesTime()J
    .registers 3

    .line 4147
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .registers 2

    .line 1181
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .registers 2

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .registers 2

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0

    return v0
.end method

.method public getMiuiFreeFormManagerService()Landroid/os/IBinder;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getMiuiGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 7774
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getMiuiMultiWinSplitService()Landroid/os/IBinder;
    .registers 2

    .line 7628
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiMultiWinSplitStub:Lcom/android/server/wm/MiuiMultiWinSplitStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiMultiWinSplitStub;->getMiuiMultiWinSplitService()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarPosition()I
    .registers 3

    .line 7599
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7600
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_11

    .line 7601
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v1

    return v1

    .line 7603
    :cond_11
    const/4 v1, 0x4

    return v1
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4199
    const-string v0, "getPackageAskScreenCompat"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4200
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4201
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4202
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 5368
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 5372
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 5373
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5375
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4182
    const-string v0, "getPackageScreenCompatMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4183
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4184
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4185
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 2

    .line 5387
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_e

    .line 5388
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5390
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 5490
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 5491
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 5492
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, p2, :cond_15

    .line 5493
    return-object v0

    .line 5495
    :cond_15
    return-object v1
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .registers 10
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 5470
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5471
    return-object v0

    .line 5474
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5475
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 5476
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_14
    if-ltz v3, :cond_41

    .line 5477
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 5478
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_22
    if-ltz v5, :cond_3e

    .line 5479
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 5480
    .local v6, "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v1, :cond_3b

    .line 5481
    return-object v6

    .line 5478
    .end local v6    # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 5476
    .end local v4    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v5    # "j":I
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 5486
    .end local v3    # "i":I
    :cond_41
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 5449
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 5452
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 5453
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 5454
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 5455
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5456
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 5457
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5458
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 5460
    goto :goto_33

    .line 5462
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    return-object v4

    .line 5456
    .end local v3    # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5466
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2652
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v6, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2653
    const-string v0, "getRecentTasks"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v7

    .line 2655
    .local v7, "allowed":Z
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2656
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    move v3, v7

    move v4, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 2657
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 2

    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2675
    const-string v0, "getRootTaskInfo()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2678
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2679
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2682
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2679
    return-object v3

    .line 2680
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingMode":I
    .end local p2    # "activityType":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2682
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingMode":I
    .restart local p2    # "activityType":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    throw v2
.end method

.method public getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 8
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2702
    const-string v0, "getRootTaskInfoOnDisplay()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2705
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2706
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2709
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2706
    return-object v3

    .line 2707
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingMode":I
    .end local p2    # "activityType":I
    .end local p3    # "displayId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2709
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingMode":I
    .restart local p2    # "activityType":I
    .restart local p3    # "displayId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    throw v2
.end method

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "preferredPackage"    # Ljava/lang/String;

    .line 5423
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5424
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5426
    .local v1, "useSystemProvidedLauncher":Z
    if-eqz p1, :cond_27

    if-eqz v1, :cond_23

    goto :goto_27

    .line 5432
    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    .line 5428
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5430
    .local v2, "secondaryHomePackage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5431
    .end local v2    # "secondaryHomePackage":Ljava/lang/String;
    nop

    .line 5434
    :goto_38
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5435
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    .line 5436
    const-string v2, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5438
    :cond_47
    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 2

    .line 5394
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 5395
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5397
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object v0
.end method

.method getSysUiServiceComponentLocked()Landroid/content/ComponentName;
    .registers 3

    .line 5379
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_e

    .line 5380
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 5381
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 5383
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 10
    .param p1, "taskId"    # I

    .line 2184
    const-string v0, "getTaskBounds()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2186
    .local v0, "ident":J
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2188
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_69

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2189
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2191
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_43

    .line 2192
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskBounds: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_63

    .line 2202
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2193
    return-object v2

    .line 2195
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 2196
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5a

    .line 2197
    :cond_51
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_5a

    .line 2198
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2200
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_5a
    :goto_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_63

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_69

    .line 2202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2203
    nop

    .line 2204
    return-object v2

    .line 2200
    :catchall_63
    move-exception v4

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v4
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_69

    .line 2202
    .restart local v0    # "ident":J
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_69
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2203
    throw v3
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 2

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .registers 5
    .param p1, "id"    # I

    .line 2209
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2210
    const-string v1, "getTaskDescription()"

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2211
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2213
    .local v1, "tr":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1d

    .line 2214
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2216
    .end local v1    # "tr":Lcom/android/server/wm/Task;
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2217
    const/4 v0, 0x0

    return-object v0

    .line 2216
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3223
    .local v0, "passedIconFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3224
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3225
    .local v1, "legitIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3226
    const-string v2, "_activity_icon_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3230
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3227
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTaskResizeableForFreeform(I)Z
    .registers 12
    .param p1, "taskId"    # I

    .line 3048
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3049
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3051
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x0

    if-nez v1, :cond_33

    .line 3052
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskResizeableForFreeform: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3055
    :cond_33
    :try_start_33
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3056
    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z

    move-result v2

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3058
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_69

    .line 3059
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getApplicationLockActivityList()Ljava/util/List;

    move-result-object v4

    .line 3060
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 3059
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3061
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_42 .. :try_end_65} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3064
    :cond_69
    :try_start_69
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v4

    .line 3066
    .local v4, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_7b

    iget-object v5, v1, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_96

    .line 3067
    :cond_7b
    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_86

    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_96

    .line 3068
    :cond_86
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_93

    .line 3069
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_96

    :cond_93
    const-string/jumbo v5, "unknown"

    :goto_96
    nop

    .line 3070
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 3071
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTaskResizeableForFreeform: task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packageName: unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :cond_be
    invoke-static {v5}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->inFreeformWhiteList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16f

    iget-object v6, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_da

    .line 3075
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    goto/16 :goto_16f

    .line 3083
    :cond_da
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_ea

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_103

    :cond_ea
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3085
    invoke-static {v2}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v7

    .line 3086
    invoke-static {v2}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v8

    .line 3087
    invoke-static {v2}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v9

    .line 3084
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 3088
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_69 .. :try_end_ff} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3090
    :cond_103
    :try_start_103
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 3091
    const-string v2, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskResizeableForFreeform: package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in freeform blackList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    monitor-exit v0
    :try_end_128
    .catchall {:try_start_103 .. :try_end_128} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3094
    :cond_12c
    :try_start_12c
    iget-object v6, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_15f

    iget-object v6, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiChooserActivity(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 3095
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_15f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_15f

    .line 3096
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-nez v6, :cond_15f

    .line 3097
    monitor-exit v0
    :try_end_15b
    .catchall {:try_start_12c .. :try_end_15b} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3099
    :cond_15f
    :try_start_15f
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isForceResizeable()Z

    move-result v3

    if-eqz v3, :cond_166

    goto :goto_16a

    :cond_166
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    :goto_16a
    monitor-exit v0
    :try_end_16b
    .catchall {:try_start_15f .. :try_end_16b} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3076
    :cond_16f
    :goto_16f
    :try_start_16f
    const-string v6, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    iget-object v7, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 3077
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 3076
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_188

    .line 3077
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-nez v6, :cond_188

    .line 3078
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_16f .. :try_end_184} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3080
    :cond_188
    :try_start_188
    monitor-exit v0
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3100
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    :catchall_18d
    move-exception v1

    :try_start_18e
    monitor-exit v0
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "isLowResolution"    # Z

    .line 3977
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3981
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_5b

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3982
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3984
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_43

    .line 3985
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaskSnapshot: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_55

    .line 3993
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3986
    return-object v4

    .line 3988
    :cond_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_55

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3990
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, p1, v5, v4, p2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_5b

    .line 3993
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3990
    return-object v2

    .line 3988
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "isLowResolution":Z
    throw v3
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 3993
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "isLowResolution":Z
    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3994
    throw v2
.end method

.method public getTasks(I)Ljava/util/List;
    .registers 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 20
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .param p3, "keepIntentExtra"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2557
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2558
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2560
    .local v9, "callingPid":I
    move/from16 v0, p2

    .line 2561
    .local v0, "flags":I
    const/4 v2, 0x0

    if-eqz p3, :cond_12

    const/16 v3, 0x8

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    or-int/2addr v0, v3

    .line 2562
    invoke-virtual {v1, v9, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result v10

    .line 2563
    .local v10, "crossUser":Z
    if-eqz v10, :cond_1c

    const/4 v3, 0x4

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    or-int/2addr v3, v0

    .line 2564
    .end local v0    # "flags":I
    .local v3, "flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2565
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2564
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v11

    .line 2566
    .local v11, "profileIds":[I
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 2567
    .local v12, "callingProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    array-length v4, v11

    if-ge v0, v4, :cond_41

    .line 2568
    aget v4, v11, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2567
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 2570
    .end local v0    # "i":I
    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 2572
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2575
    const-string v0, "getTasks"

    invoke-virtual {v1, v0, v9, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v0
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_6b

    .line 2576
    .local v0, "allowed":Z
    if-eqz v0, :cond_56

    const/4 v2, 0x2

    :cond_56
    or-int v15, v3, v2

    .line 2577
    .end local v3    # "flags":I
    .local v15, "flags":I
    :try_start_58
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v3, p1

    move-object v4, v13

    move v5, v15

    move v6, v8

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V

    .line 2579
    .end local v0    # "allowed":Z
    monitor-exit v14
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2581
    return-object v13

    .line 2579
    :catchall_68
    move-exception v0

    move v3, v15

    goto :goto_6c

    .end local v15    # "flags":I
    .restart local v3    # "flags":I
    :catchall_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    monitor-exit v14
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 4226
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTopSplitPackageNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7632
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7633
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getSplitPackageNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7634
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTopTaskVisibleActivities()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 7258
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTopTaskVisibleActivities()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7260
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7261
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7262
    .local v1, "mainStack":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1e

    .line 7263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 7265
    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivitiesLocked()Ljava/util/List;

    move-result-object v2

    .line 7266
    .local v2, "activityRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    if-nez v2, :cond_2d

    .line 7267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 7269
    :cond_2d
    :try_start_2d
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;-><init>()V

    .line 7270
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;-><init>()V

    .line 7271
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 7275
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_52

    .line 7269
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 7276
    .end local v1    # "mainStack":Lcom/android/server/wm/Task;
    .end local v2    # "activityRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTopVisibleActivity()Landroid/content/Intent;
    .registers 5

    .line 7282
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTopVisibleActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7285
    .local v0, "activity":Landroid/content/Intent;
    monitor-enter p0

    .line 7286
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7287
    .local v1, "mainStack":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_28

    .line 7288
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 7289
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_28

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 7290
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7293
    .end local v1    # "mainStack":Lcom/android/server/wm/Task;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_28
    monitor-exit p0

    .line 7294
    return-object v0

    .line 7293
    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 2

    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    return-object v0
.end method

.method getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    .line 1142
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1143
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1145
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3
    .param p1, "callingVoiceInteractor"    # Landroid/os/IBinder;

    .line 1817
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1818
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    return-object v0
.end method

.method public getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 2

    .line 3902
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-object v0
.end method

.method public handleFreeformModeRequst(Landroid/os/IBinder;I)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I

    .line 7513
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7514
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 7515
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .registers 13
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 1784
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method hasActiveVisibleWindow(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 5501
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5502
    const/4 v0, 0x1

    return v0

    .line 5504
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v0

    return v0
.end method

.method hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v4, 0x0

    const-string v5, ""

    move v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1163
    .local v0, "mode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1f

    .line 1164
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 1167
    :cond_1f
    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasUserVisibleWindow(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 5509
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5510
    const/4 v0, 0x1

    return v0

    .line 5512
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasVisibleWindowForUser(I)Z

    move-result v0

    return v0
.end method

.method increaseConfigurationSeqLocked()I
    .registers 3

    .line 1087
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 1088
    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .registers 10
    .param p1, "intentFirewall"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intentController"    # Lcom/android/server/am/PendingIntentController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1052
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1053
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 1054
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 1055
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 1056
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 1057
    new-instance v1, Lcom/android/server/wm/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 1058
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1060
    new-instance v1, Lcom/android/server/wm/ActivityClientController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityClientController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 1062
    new-instance v1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 1064
    new-instance v1, Lcom/android/server/wm/LockTaskController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 1066
    new-instance v1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1067
    new-instance v1, Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1068
    new-instance v1, Lcom/android/server/wm/VrController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1, v2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 1069
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 1070
    new-instance v1, Lcom/android/server/wm/PackageConfigPersister;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/PackageConfigPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 1071
    return-void
.end method

.method public installSystemProviders()V
    .registers 2

    .line 952
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    .line 953
    return-void
.end method

.method instrumentationSourceHasPermission(ILjava/lang/String;)Z
    .registers 7
    .param p1, "pid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 5695
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5696
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 5697
    .local v1, "process":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5698
    const/4 v0, 0x0

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_27

    .line 5701
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result v2

    .line 5702
    .local v2, "sourceUid":I
    const/4 v3, -0x1

    invoke-static {p2, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    .line 5699
    .end local v2    # "sourceUid":I
    :cond_27
    :goto_27
    return v0

    .line 5697
    .end local v1    # "process":Lcom/android/server/wm/WindowProcessController;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isActivityInEmbedded()Z
    .registers 7

    .line 7300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7302
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_36

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7303
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 7304
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 7305
    .local v3, "topAc":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_20

    .line 7306
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_30

    .line 7311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7306
    return v5

    .line 7308
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isActivityEmbedded(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_30

    .line 7311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7308
    return v4

    .line 7309
    .end local v3    # "topAc":Lcom/android/server/wm/ActivityRecord;
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 7311
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7312
    throw v2
.end method

.method public isActivityInSplitScreen(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 7731
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7732
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7733
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isInSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7736
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1971
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1972
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1976
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1979
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2a

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1980
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, p1, v1, v0, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_24

    .line 1984
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1980
    return v6

    .line 1982
    :catchall_24
    move-exception v6

    :try_start_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "callingPid":I
    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v6
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    .line 1984
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingPid":I
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    throw v4
.end method

.method isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 4805
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .registers 5

    .line 3678
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3679
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3680
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_2f

    .line 3684
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3685
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_1f

    .line 3686
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3688
    :cond_1f
    :try_start_1f
    iget v2, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move v1, v2

    .line 3689
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v1, "userId":I
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3690
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result v0

    return v0

    .line 3681
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3689
    .end local v1    # "focusedRootTask":Lcom/android/server/wm/Task;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isAssociatedCompanionApp(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 5609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5610
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_10

    .line 5611
    const/4 v1, 0x0

    return v1

    .line 5613
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 4809
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .registers 2

    .line 5176
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .registers 2

    .line 5168
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 3501
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    return v0
.end method

.method public isContinuousStart(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 7641
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->containsContinuousSet(I)Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .registers 3

    .line 2533
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2534
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2535
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isCrossUserAllowed(II)Z
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 3537
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    .line 3538
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 3537
    :goto_14
    return v0
.end method

.method isDeviceOwner(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 5517
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isDreaming()Z
    .registers 2

    .line 1532
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return v0
.end method

.method isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 20
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 3505
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    .line 3507
    return v4

    .line 3510
    :cond_e
    const-string v0, "android.permission.REAL_GET_TASKS"

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_19

    move v0, v4

    goto :goto_1a

    :cond_19
    move v0, v5

    :goto_1a
    move v6, v0

    .line 3512
    .local v6, "allowed":Z
    if-nez v6, :cond_6b

    .line 3513
    const-string v0, "android.permission.GET_TASKS"

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-nez v0, :cond_50

    .line 3520
    :try_start_28
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3521
    const/4 v6, 0x1

    .line 3522
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_4e

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v10, v2

    .local v10, "protoLogParam1":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x36ab9724    # -870029.75f

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v12, v13, v9, v8, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4e} :catch_4f

    .line 3527
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":J
    :cond_4e
    goto :goto_50

    .line 3526
    :catch_4f
    move-exception v0

    .line 3529
    :cond_50
    :goto_50
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_6b

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    int-to-long v10, v2

    .restart local v10    # "protoLogParam1":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x17e73996

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v12, v13, v9, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3533
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":J
    :cond_6b
    return v6
.end method

.method public isInFreeFormControlRegon(FFI)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "stackId"    # I

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isInFreeFormControlRegon(FFI)Z

    move-result v0

    return v0
.end method

.method public isInLockTaskMode()Z
    .registers 2

    .line 2832
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInSplitScreenWindowingMode()Z
    .registers 6

    .line 7531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7533
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7534
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-nez v3, :cond_17

    const/4 v3, 0x0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_32

    .line 7540
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7534
    return v3

    .line 7535
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 7536
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 7537
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->isInSystemSplitScreen(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_32

    .line 7540
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7537
    return v4

    .line 7538
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :catchall_32
    move-exception v3

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    .line 7540
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7541
    throw v2
.end method

.method isKeyguardLocked(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 4235
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    return v0
.end method

.method public isNeedAccSensor()Z
    .registers 2

    .line 7330
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isNeedAccSensor()Z

    move-result v0

    return v0
.end method

.method public isPackageNeedAdaptCutout(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7322
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isPackageNeedAdaptCutout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPairRootTask(I)Z
    .registers 8
    .param p1, "taskId"    # I

    .line 7609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7611
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3f

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7612
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 7613
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_30

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 7614
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_30

    .line 7615
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_39

    .line 7620
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7615
    return v4

    .line 7617
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_39

    .line 7620
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7617
    return v4

    .line 7618
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    .line 7620
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7621
    throw v2
.end method

.method public isSettingsInSplit(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 7743
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7744
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7745
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 7746
    const-string v3, "com.android.settings"

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-eqz v3, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSplitBaseActivity()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7748
    :cond_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7749
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSleepingLocked()Z
    .registers 2

    .line 4902
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .registers 3

    .line 4894
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getPackageHoldOn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 4895
    return v1

    .line 4898
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isSupportFreeFormInDesktopMode(I)Z
    .registers 7
    .param p1, "taskId"    # I

    .line 2328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2330
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2331
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2332
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2333
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-static {v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z

    move-result v4

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2b

    .line 2339
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2333
    return v4

    .line 2335
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_22
    const/4 v3, 0x1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2b

    .line 2339
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2335
    return v3

    .line 2337
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2339
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    throw v2
.end method

.method public isTopActivityImmersive()Z
    .registers 6

    .line 2023
    const-string v0, "isTopActivityImmersive"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2026
    .local v1, "topFocusedRootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 2027
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2030
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2031
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_22

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v4, :cond_22

    const/4 v2, 0x1

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2032
    .end local v1    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopActivityInFreeform(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7497
    monitor-enter p0

    .line 7498
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7499
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 7500
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7501
    .local v1, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2b

    .line 7502
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2b

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7503
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 7504
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 7507
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    monitor-exit p0

    .line 7508
    const/4 v0, 0x0

    return v0

    .line 7507
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public keyguardGoingAway(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 3753
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    const-string/jumbo v2, "unlock keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    const-string v0, "keyguardGoingAway"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3757
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_43

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3759
    and-int/lit8 v3, p1, 0x16

    if-eqz v3, :cond_23

    .line 3760
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 3763
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 3768
    invoke-static {}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->get()Lcom/android/server/wm/ActivityTaskSupervisorStub;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->keyguardGoingAway(I)V

    .line 3770
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_3d

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_43

    .line 3772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3773
    nop

    .line 3774
    return-void

    .line 3770
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "flags":I
    throw v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 3772
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "flags":I
    :catchall_43
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3773
    throw v2
.end method

.method synthetic lambda$applyUpdateLockStateLocked$0$com-android-server-wm-ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "nextState"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2009
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_33

    .line 2010
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x212f7446

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2012
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_26
    if-eqz p1, :cond_2e

    .line 2013
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_33

    .line 2015
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 2018
    :cond_33
    :goto_33
    return-void
.end method

.method synthetic lambda$applyUpdateVrModeLocked$6$com-android-server-wm-ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4165
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4166
    return-void

    .line 4168
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4169
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v1

    .line 4170
    .local v1, "disableNonVrUi":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 4171
    if-eqz v1, :cond_28

    .line 4174
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 4176
    .end local v1    # "disableNonVrUi":Z
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4177
    return-void

    .line 4176
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$enterPictureInPictureMode$5$com-android-server-wm-ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 3848
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3849
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_29

    .line 3850
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip enterPictureInPictureMode, destroyed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3854
    :cond_29
    :try_start_29
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_59

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_59

    .line 3859
    :cond_34
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 3860
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const-string v3, "enterPictureInPictureMode"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3863
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3864
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "auto-pip"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/Task;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    .line 3867
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3868
    return-void

    .line 3855
    :cond_59
    :goto_59
    :try_start_59
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip enter pip, status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3867
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$keyguardGoingAway$4$com-android-server-wm-ActivityTaskManagerService(ILcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3764
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(II)V

    .line 3765
    return-void
.end method

.method synthetic lambda$onScreenAwakeChanged$3$com-android-server-wm-ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "isAwake"    # Z

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3190
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3189
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3192
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method synthetic lambda$postFinishBooting$9$com-android-server-wm-ActivityTaskManagerService(ZZ)V
    .registers 5
    .param p1, "finishBooting"    # Z
    .param p2, "enableScreen"    # Z

    .line 5181
    if-eqz p1, :cond_7

    .line 5182
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5184
    :cond_7
    if-eqz p2, :cond_12

    .line 5185
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5187
    :cond_12
    return-void
.end method

.method synthetic lambda$scheduleAppGcsLocked$10$com-android-server-wm-ActivityTaskManagerService()V
    .registers 2

    .line 5355
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method synthetic lambda$setLockScreenShown$1$com-android-server-wm-ActivityTaskManagerService(ZZLcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3171
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(IZZ)V

    .line 3173
    return-void
.end method

.method synthetic lambda$setLockScreenShown$2$com-android-server-wm-ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "keyguardShowing"    # Z

    .line 3180
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3181
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3180
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3183
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method synthetic lambda$updateSleepIfNeededLocked$7$com-android-server-wm-ActivityTaskManagerService()V
    .registers 3

    .line 5041
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->changeProjectionState(Z)V

    return-void
.end method

.method synthetic lambda$updateSleepIfNeededLocked$8$com-android-server-wm-ActivityTaskManagerService()V
    .registers 3

    .line 5061
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->changeProjectionState(Z)V

    return-void
.end method

.method public launchFlashBackFromBackGround(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "cornerPosition"    # I

    .line 2306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2308
    .local v0, "callingId":J
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiBuild()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v2, :cond_f

    goto :goto_15

    .line 2320
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showOpenMiuiOptimizationToast()V

    goto :goto_4a

    .line 2309
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_55

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2310
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2311
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v4, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->addFreeFormActivityStackFromStartSmallFreeform(Lcom/android/server/wm/Task;)V

    .line 2312
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 2313
    .local v4, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {v4, p3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setCornerPosition(I)V

    .line 2314
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setIsFlashBackMode(Z)V

    .line 2315
    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setIsLaunchFlashBackFromBackGround(Z)V

    .line 2316
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingMode(IIZ)Z

    .line 2317
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->launchSmallFreeFormWindow(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;Z)V

    .line 2318
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_4f

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    .line 2323
    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2324
    nop

    .line 2325
    return-void

    .line 2318
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p2    # "rect":Landroid/graphics/Rect;
    .end local p3    # "cornerPosition":I
    throw v3
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 2323
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    .restart local p3    # "cornerPosition":I
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2324
    throw v2
.end method

.method public launchSmallFreeFormWindow(Landroid/app/ActivityTaskManager$RootTaskInfo;Landroid/graphics/Rect;I)V
    .registers 14
    .param p1, "rootTaskInfo"    # Landroid/app/ActivityTaskManager$RootTaskInfo;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "cornerPosition"    # I

    .line 2238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2240
    .local v0, "callingId":J
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiBuild()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v2, :cond_f

    goto :goto_15

    .line 2262
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showOpenMiuiOptimizationToast()V

    goto :goto_72

    .line 2241
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_7d

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2242
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2243
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v4, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->addFreeFormActivityStackFromStartSmallFreeform(Lcom/android/server/wm/Task;)V

    .line 2244
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v5, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 2245
    .local v4, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {v4, p3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setCornerPosition(I)V

    .line 2246
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5d

    .line 2247
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v5, p2, v4}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->setOriginalBounds(Landroid/graphics/Rect;Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_77

    .line 2249
    if-eqz v3, :cond_5d

    .line 2250
    :try_start_44
    new-array v5, v7, [Lcom/android/server/wm/Task;

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 2251
    .local v5, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_54
    .catchall {:try_start_44 .. :try_end_53} :catchall_77

    goto :goto_5d

    .line 2253
    .end local v5    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :catch_54
    move-exception v5

    .line 2254
    .local v5, "e":Ljava/lang/Exception;
    :try_start_55
    const-string v8, "ActivityTaskManager"

    const-string v9, "launchSmallFreeFormWindow: Failed to get snapshotTasks"

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 2257
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    iget v5, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const/4 v8, 0x5

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingMode(IIZ)Z

    .line 2258
    iget v5, p2, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_68

    move v6, v7

    :cond_68
    move v5, v6

    .line 2259
    .local v5, "launchFromControlCenter":Z
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/WindowManagerService;->launchSmallFreeFormWindow(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;Z)V

    .line 2260
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    .end local v5    # "launchFromControlCenter":Z
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_77

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    .line 2265
    :goto_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2266
    nop

    .line 2267
    return-void

    .line 2260
    :catchall_77
    move-exception v3

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local p2    # "rect":Landroid/graphics/Rect;
    .end local p3    # "cornerPosition":I
    throw v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 2265
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .restart local p2    # "rect":Landroid/graphics/Rect;
    .restart local p3    # "cornerPosition":I
    :catchall_7d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2266
    throw v2
.end method

.method logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "startTime"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .line 5551
    return-void
.end method

.method public moveRootTaskToDisplay(II)V
    .registers 21
    .param p1, "taskId"    # I
    .param p2, "displayId"    # I

    .line 3235
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string/jumbo v5, "moveRootTaskToDisplay()"

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_50

    .line 3240
    .local v5, "ident":J
    :try_start_1a
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_3c

    int-to-long v8, v2

    .local v8, "protoLogParam0":J
    int-to-long v10, v3

    .local v10, "protoLogParam1":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x549fd97e

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3242
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_3c
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_4a

    .line 3244
    :try_start_41
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3245
    nop

    .line 3246
    .end local v5    # "ident":J
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3247
    return-void

    .line 3244
    .restart local v5    # "ident":J
    :catchall_4a
    move-exception v0

    :try_start_4b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3245
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "displayId":I
    throw v0

    .line 3246
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "displayId":I
    :catchall_50
    move-exception v0

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 15
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "bOptions"    # Landroid/os/Bundle;

    .line 2377
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string/jumbo v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_22

    int-to-long v0, p3

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7e397b9d

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    .end local v0    # "protoLogParam0":J
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2382
    nop

    .line 2383
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    .line 2382
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2384
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2385
    return-void

    .line 2384
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V
    .registers 29
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "taskId"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 2389
    move-object/from16 v1, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2390
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2391
    .local v11, "callingUid":I
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2394
    .local v16, "origId":J
    const/4 v0, 0x0

    .line 2395
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz p1, :cond_21

    .line 2396
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_23

    .line 2395
    :cond_21
    move-object/from16 v18, v0

    .line 2398
    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v18, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v10, 0x0

    const-string/jumbo v2, "moveTaskToFront"

    invoke-virtual {v0, v10, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v19

    .line 2400
    .local v19, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v8, v18

    move v10, v0

    move/from16 v22, v11

    .end local v11    # "callingUid":I
    .local v22, "callingUid":I
    move-object/from16 v11, v20

    move v15, v12

    .end local v12    # "callingPid":I
    .local v15, "callingPid":I
    move-object/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 2403
    return-void

    .line 2402
    :cond_54
    move/from16 v2, v22

    goto :goto_64

    .line 2407
    :cond_57
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    move/from16 v2, v22

    .end local v22    # "callingUid":I
    .local v2, "callingUid":I
    invoke-virtual {v0, v2, v15, v13}, Lcom/android/server/wm/ActivityStarterStub;->isAllowedStartActivity(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 2409
    return-void

    .line 2413
    :cond_64
    :goto_64
    :try_start_64
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_d5

    .line 2414
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v9, 0x1

    if-nez v0, :cond_90

    .line 2415
    :try_start_6d
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_84

    int-to-long v3, v14

    .local v3, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x57dfeb84

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-static {v5, v6, v9, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2416
    .end local v3    # "protoLogParam0":J
    :cond_84
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_8b

    .line 2438
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2417
    return-void

    .line 2438
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_8b
    move-exception v0

    move-object/from16 v10, p5

    move v11, v15

    goto :goto_d9

    .line 2419
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_90
    const/4 v8, 0x0

    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v3
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_d5

    if-eqz v3, :cond_aa

    .line 2420
    :try_start_9b
    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_8b

    .line 2438
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    return-void

    .line 2424
    :cond_aa
    move-object/from16 v10, p5

    move v11, v15

    .end local v15    # "callingPid":I
    .local v11, "callingPid":I
    if-eqz v10, :cond_b9

    .line 2425
    :try_start_af
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v10, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object v6, v3

    goto :goto_ba

    .line 2438
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_b7
    move-exception v0

    goto :goto_d9

    .line 2426
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_b9
    move-object v6, v8

    :goto_ba
    nop

    .line 2427
    .local v6, "realOptions":Landroid/app/ActivityOptions;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v7, "moveTaskToFront"

    const/4 v8, 0x0

    move-object v4, v0

    move/from16 v5, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2430
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2431
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_d0

    .line 2435
    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V
    :try_end_d0
    .catchall {:try_start_af .. :try_end_d0} :catchall_b7

    .line 2438
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "realOptions":Landroid/app/ActivityOptions;
    :cond_d0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    nop

    .line 2440
    return-void

    .line 2438
    .end local v11    # "callingPid":I
    .restart local v15    # "callingPid":I
    :catchall_d5
    move-exception v0

    move-object/from16 v10, p5

    move v11, v15

    .end local v15    # "callingPid":I
    .restart local v11    # "callingPid":I
    :goto_d9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    throw v0
.end method

.method public moveTaskToRootTask(IIZ)V
    .registers 22
    .param p1, "taskId"    # I
    .param p2, "rootTaskId"    # I
    .param p3, "toTop"    # Z

    .line 2586
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string/jumbo v0, "moveTaskToRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2587
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d8

    .line 2590
    .local v5, "ident":J
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2591
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_3f

    .line 2592
    const-string v7, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: No task for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_d2

    .line 2611
    :try_start_37
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_d8

    .line 2593
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2596
    :cond_3f
    :try_start_3f
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v7, :cond_6f

    int-to-long v7, v2

    .local v7, "protoLogParam0":J
    int-to-long v9, v3

    .local v9, "protoLogParam1":J
    move/from16 v11, p3

    .local v11, "protoLogParam2":Z
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0x35

    const/4 v15, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    move-wide/from16 v16, v7

    const v7, -0x28610e9b

    .end local v7    # "protoLogParam0":J
    .local v16, "protoLogParam0":J
    invoke-static {v12, v7, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2599
    .end local v9    # "protoLogParam1":J
    .end local v11    # "protoLogParam2":Z
    .end local v16    # "protoLogParam0":J
    :cond_6f
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v14, v7

    .line 2600
    .local v14, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_b8

    .line 2604
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 2608
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "moveTaskToRootTask"

    move-object v7, v0

    move-object v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    :try_end_8b
    .catchall {:try_start_3f .. :try_end_8b} :catchall_d2

    .line 2611
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "rootTask":Lcom/android/server/wm/Task;
    :try_start_8b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2612
    nop

    .line 2613
    .end local v5    # "ident":J
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2614
    return-void

    .line 2605
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "ident":J
    .restart local v14    # "rootTask":Lcom/android/server/wm/Task;
    :cond_94
    :try_start_94
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: Attempt to move task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to rootTask "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "rootTaskId":I
    .end local p3    # "toTop":Z
    throw v7

    .line 2601
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "rootTaskId":I
    .restart local p3    # "toTop":Z
    :cond_b8
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: No rootTask for rootTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "rootTaskId":I
    .end local p3    # "toTop":Z
    throw v7
    :try_end_d2
    .catchall {:try_start_94 .. :try_end_d2} :catchall_d2

    .line 2611
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "rootTaskId":I
    .restart local p3    # "toTop":Z
    :catchall_d2
    move-exception v0

    :try_start_d3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2612
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "rootTaskId":I
    .end local p3    # "toTop":Z
    throw v0

    .line 2613
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "rootTaskId":I
    .restart local p3    # "toTop":Z
    :catchall_d8
    move-exception v0

    monitor-exit v4
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public moveTopActivityToCastMode()V
    .registers 11

    .line 7336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 7337
    .local v0, "endTime":J
    const/4 v2, 0x0

    .line 7338
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x0

    .line 7339
    .local v3, "stack":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 7340
    :goto_c
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5c

    if-eqz v2, :cond_5c

    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v7, v8, :cond_1b

    goto :goto_5c

    .line 7353
    :cond_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_8a

    .line 7355
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7356
    if-eqz v2, :cond_49

    .line 7357
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7358
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7359
    const-string/jumbo v4, "moveTopActivityToCastMode"

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7361
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 7363
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo v8, "moveTopActivityToCastMode"

    .line 7364
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 7363
    invoke-virtual {v5, v2, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 7365
    invoke-virtual {p0, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7366
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_51

    .line 7367
    :cond_49
    const-string v4, "ActivityTaskManager"

    const-string/jumbo v5, "moveTopActivityToCastMode top activity is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7370
    :goto_51
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7371
    return-void

    .line 7370
    :catchall_56
    move-exception v4

    :try_start_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 7341
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v3, v7

    .line 7342
    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    move-object v2, v5

    .line 7343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v0, v5

    .line 7344
    .local v5, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_7c

    .line 7345
    const-string v7, "ActivityTaskManager"

    const-string/jumbo v8, "moveTopActivityToCastMode timeout!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7346
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_5c .. :try_end_7b} :catchall_8a

    return-void

    .line 7349
    :cond_7c
    :try_start_7c
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x64

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_87} :catch_88
    .catchall {:try_start_7c .. :try_end_87} :catchall_8a

    .line 7351
    goto :goto_89

    .line 7350
    :catch_88
    move-exception v7

    .line 7352
    .end local v5    # "delay":J
    :goto_89
    goto :goto_c

    .line 7353
    :catchall_8a
    move-exception v5

    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v5
.end method

.method public notifyRemoveSnapshotQS(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 7680
    const-string v0, "ActivityTaskManager"

    if-eqz p1, :cond_3a

    .line 7681
    :try_start_4
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7682
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_19

    .line 7683
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7684
    const-string/jumbo v2, "notifyTakeSnapshotQS failed, activity = null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7686
    :cond_18
    return-void

    .line 7688
    :cond_19
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_3a

    .line 7690
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_1e
    move-exception v1

    .line 7691
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 7692
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    nop

    .line 7693
    :goto_3b
    return-void
.end method

.method public notifyTakeSnapshotQS(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "className"    # Ljava/lang/String;

    .line 7649
    const-string v0, "ActivityTaskManager"

    if-eqz p1, :cond_83

    .line 7650
    :try_start_4
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7651
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_19

    .line 7652
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7653
    const-string/jumbo v2, "notifyTakeSnapshotQS failed, activity = null"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7655
    :cond_18
    return-void

    .line 7657
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 7658
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 7659
    const-string v2, "In MultiWindowMode, wont do snapshot, return !...."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7661
    :cond_2c
    return-void

    .line 7664
    :cond_2d
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->get()Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->canTakeSnapshot(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 7665
    iput-object p2, v1, Lcom/android/server/wm/ActivityRecord;->classNameQS:Ljava/lang/String;

    .line 7666
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppResumed(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_83

    .line 7667
    :cond_42
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 7668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No snapshot since not start by launcher, activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 7669
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7668
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_66} :catch_67

    goto :goto_83

    .line 7672
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_67
    move-exception v1

    .line 7673
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 7674
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    nop

    .line 7675
    :goto_84
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 4231
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 4232
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1075
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1076
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1077
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1078
    return-void

    .line 1077
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onImeWindowSetOnDisplayArea(ILcom/android/server/wm/DisplayArea;)V
    .registers 13
    .param p1, "pid"    # I
    .param p2, "imeContainer"    # Lcom/android/server/wm/DisplayArea;

    .line 5646
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2c

    if-gez p1, :cond_9

    goto :goto_2c

    .line 5651
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 5652
    .local v0, "process":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_28

    .line 5653
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v3, :cond_27

    int-to-long v3, p1

    .local v3, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1ac5015f

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5, v6, v7, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5655
    .end local v3    # "protoLogParam0":J
    :cond_27
    return-void

    .line 5657
    :cond_28
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->registerDisplayAreaConfigurationListener(Lcom/android/server/wm/DisplayArea;)V

    .line 5658
    return-void

    .line 5647
    .end local v0    # "process":Lcom/android/server/wm/WindowProcessController;
    :cond_2c
    :goto_2c
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x6be93a42

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5649
    :cond_3b
    return-void
.end method

.method public onInitPowerManagement()V
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 943
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->initPowerManagement()V

    .line 944
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 945
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 946
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 947
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 948
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 949
    return-void

    .line 948
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 5
    .param p1, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 4255
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4256
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4257
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4258
    .local v0, "rootPinnedTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 4259
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 4260
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4259
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityClientController;->onPictureInPictureStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V

    .line 4262
    :cond_25
    return-void
.end method

.method public onScreenAwakeChanged(Z)V
    .registers 7
    .param p1, "isAwake"    # Z

    .line 3188
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3194
    if-eqz p1, :cond_d

    .line 3195
    return-void

    .line 3200
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 3201
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3202
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3203
    .local v1, "notificationShade":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2b

    .line 3204
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    move-object v1, v2

    .line 3205
    .local v1, "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_46

    .line 3206
    if-nez v1, :cond_31

    .line 3207
    return-void

    .line 3211
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->setRunningAnimationUnsafe()V

    .line 3212
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 3213
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3215
    return-void

    .line 3205
    .end local v1    # "proc":Lcom/android/server/wm/WindowProcessController;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3795
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v2, "copySplashScreenViewFinish()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3798
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3800
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_21

    .line 3801
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3802
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_21

    .line 3803
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityRecord;->onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 3806
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3807
    return-void

    .line 3806
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onSystemReady()V
    .registers 4

    .line 919
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 920
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 921
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 922
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 923
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v2}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 924
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 925
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onSystemReady()V

    .line 926
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityClientController;->onSystemReady()V

    .line 927
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 929
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->onSystemReady()V

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->onATMSSystemReady()V

    .line 931
    invoke-static {}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;->get()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;->onSystemReady()V

    .line 933
    return-void

    .line 927
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5620
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 5621
    :catch_5
    move-exception v0

    .line 5622
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method postFinishBooting(ZZ)V
    .registers 5
    .param p1, "finishBooting"    # Z
    .param p2, "enableScreen"    # Z

    .line 5180
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5188
    return-void
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3812
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerActivityObserver()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v0

    .line 3816
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiActivityController;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    .line 3817
    return-void
.end method

.method public registerAnrController(Landroid/app/AnrController;)V
    .registers 4
    .param p1, "controller"    # Landroid/app/AnrController;

    .line 2476
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2477
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2479
    return-void

    .line 2478
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 4049
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 4052
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 4055
    .local v1, "origId":J
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2f

    .line 4058
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4059
    nop

    .line 4060
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4061
    return-void

    .line 4058
    .restart local v1    # "origId":J
    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4059
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local p3    # "launchCookie":Landroid/os/IBinder;
    throw v3

    .line 4060
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local p3    # "launchCookie":Landroid/os/IBinder;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 4066
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4069
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4070
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4071
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_40

    .line 4072
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find display with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4075
    :cond_40
    :try_start_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_56

    .line 4077
    .local v2, "origId":J
    :try_start_44
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_50

    .line 4079
    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4080
    nop

    .line 4081
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "origId":J
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4082
    return-void

    .line 4079
    .restart local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v2    # "origId":J
    :catchall_50
    move-exception v4

    :try_start_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4080
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4081
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "displayId":I
    .restart local p2    # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/IWindowSecureChangeListener;

    .line 3265
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->addSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 3266
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 3252
    const-string/jumbo v0, "registerTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3253
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3254
    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 7
    .param p1, "appInt"    # Landroid/app/IApplicationThread;

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 3138
    .local v1, "origId":J
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 3139
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    const-string v4, "low-mem"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->releaseSomeActivities(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1c

    .line 3141
    .end local v3    # "app":Lcom/android/server/wm/WindowProcessController;
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3142
    nop

    .line 3143
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3144
    return-void

    .line 3141
    .restart local v1    # "origId":J
    :catchall_1c
    move-exception v3

    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3142
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "appInt":Landroid/app/IApplicationThread;
    throw v3

    .line 3143
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "appInt":Landroid/app/IApplicationThread;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeAllVisibleRecentTasks()V
    .registers 6

    .line 2171
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeAllVisibleRecentTasks()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_30

    .line 2175
    .local v1, "ident":J
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2a

    .line 2177
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2178
    nop

    .line 2179
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2180
    return-void

    .line 2177
    .restart local v1    # "ident":J
    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2178
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2179
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeNfcBlackList(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 3280
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->removeNfcBlackList(Ljava/lang/String;)V

    .line 3281
    return-void
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 6
    .param p1, "windowingModes"    # [I

    .line 2622
    const-string/jumbo v0, "removeRootTasksInWindowingModes()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2624
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_24

    .line 2627
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    .line 2629
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    nop

    .line 2631
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2632
    return-void

    .line 2629
    .restart local v1    # "ident":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2630
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "windowingModes":[I
    throw v3

    .line 2631
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "windowingModes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRootTasksWithActivityTypes([I)V
    .registers 6
    .param p1, "activityTypes"    # [I

    .line 2636
    const-string/jumbo v0, "removeRootTasksWithActivityTypes()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2638
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_24

    .line 2641
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksWithActivityTypes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    .line 2643
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    nop

    .line 2645
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2646
    return-void

    .line 2643
    .restart local v1    # "ident":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "activityTypes":[I
    throw v3

    .line 2645
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "activityTypes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeTask(I)Z
    .registers 9
    .param p1, "taskId"    # I

    .line 2146
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_62

    .line 2150
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2152
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_3f

    .line 2153
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeTask: No task remove with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_5c

    .line 2154
    const/4 v4, 0x0

    .line 2164
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_62

    .line 2154
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2157
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2158
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v6, "remove-task"

    invoke-virtual {v5, v3, v4, v4, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_53

    .line 2160
    :cond_4e
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_5c

    .line 2162
    :goto_53
    nop

    .line 2164
    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_62

    .line 2162
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2164
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2165
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3

    .line 2166
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 15
    .param p1, "assistToken"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "referrer"    # Landroid/net/Uri;

    .line 2875
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 2876
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    monitor-enter v0

    .line 2877
    :try_start_4
    iput-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 2878
    iput-object p3, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 2879
    iput-object p4, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 2880
    if-eqz p5, :cond_13

    .line 2881
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2883
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2888
    monitor-exit v0

    return-void

    .line 2890
    :cond_1d
    if-eqz p3, :cond_36

    .line 2892
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 2893
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 2894
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 2896
    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 2897
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2898
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez v1, :cond_46

    .line 2900
    monitor-exit v0

    return-void

    .line 2902
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_f0

    .line 2904
    const/4 v1, 0x0

    .line 2905
    .local v1, "sendReceiver":Landroid/app/IAssistDataReceiver;
    const/4 v2, 0x0

    .line 2906
    .local v2, "sendBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2907
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 2908
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 2909
    .local v4, "exists":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2910
    if-nez v4, :cond_64

    .line 2912
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2915
    :cond_64
    :try_start_64
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    move-object v1, v5

    if-eqz v5, :cond_a4

    .line 2917
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 2918
    const-string/jumbo v5, "taskId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 2919
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2918
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2920
    const-string v5, "activityId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2922
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2923
    const-string/jumbo v5, "structure"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2924
    const-string v5, "content"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2925
    const-string/jumbo v5, "receiverExtras"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2927
    .end local v4    # "exists":Z
    :cond_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_64 .. :try_end_a5} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2928
    if-eqz v1, :cond_b0

    .line 2930
    :try_start_aa
    invoke-interface {v1, v2}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 2932
    goto :goto_af

    .line 2931
    :catch_ae
    move-exception v3

    .line 2933
    :goto_af
    return-void

    .line 2936
    :cond_b0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2938
    .local v3, "ident":J
    :try_start_b4
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2939
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2942
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "assist"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_b4 .. :try_end_c9} :catchall_e5

    .line 2945
    :try_start_c9
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_d7} :catch_d8
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_e5

    .line 2948
    goto :goto_e0

    .line 2946
    :catch_d8
    move-exception v5

    .line 2947
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_d9
    const-string v6, "ActivityTaskManager"

    const-string v7, "No activity to handle assist action."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_e5

    .line 2950
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    :goto_e0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2951
    nop

    .line 2952
    return-void

    .line 2950
    :catchall_e5
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2951
    throw v5

    .line 2927
    .end local v3    # "ident":J
    :catchall_ea
    move-exception v4

    :try_start_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2902
    .end local v1    # "sendReceiver":Landroid/app/IAssistDataReceiver;
    .end local v2    # "sendBundle":Landroid/os/Bundle;
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 21
    .param p1, "requestType"    # I
    .param p2, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p3, "receiverExtras"    # Landroid/os/Bundle;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "checkActivityIsTop"    # Z
    .param p6, "newSessionId"    # Z

    .line 3287
    nop

    .line 3288
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3287
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z
    .registers 29
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p2, "taskId"    # I
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .line 3295
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v3, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string/jumbo v4, "requestAssistDataForTask()"

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3298
    .local v3, "callingId":J
    const/4 v5, 0x0

    .line 3300
    .local v5, "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    :try_start_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_7e

    .line 3302
    .end local v5    # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .local v0, "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3303
    nop

    .line 3304
    if-nez v0, :cond_3a

    .line 3305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find activity for task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    const/4 v5, 0x0

    return v5

    .line 3309
    :cond_3a
    new-instance v10, Lcom/android/server/wm/AssistDataReceiverProxy;

    move-object/from16 v14, p1

    move-object/from16 v5, p3

    invoke-direct {v10, v14, v5}, Lcom/android/server/wm/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 3311
    .local v10, "proxy":Lcom/android/server/wm/AssistDataReceiverProxy;
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 3312
    .local v11, "lock":Ljava/lang/Object;
    new-instance v15, Lcom/android/server/am/AssistDataRequester;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 3313
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    const/16 v12, 0x31

    const/4 v13, -0x1

    move-object v6, v15

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    .line 3316
    .local v15, "requester":Lcom/android/server/am/AssistDataRequester;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3317
    .local v6, "topActivityToken":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3318
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 3321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 3318
    move-object/from16 v16, v6

    move-object/from16 v24, p3

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;)V

    .line 3323
    const/4 v7, 0x1

    return v7

    .line 3302
    .end local v0    # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .end local v6    # "topActivityToken":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v10    # "proxy":Lcom/android/server/wm/AssistDataReceiverProxy;
    .end local v11    # "lock":Ljava/lang/Object;
    .end local v15    # "requester":Lcom/android/server/am/AssistDataRequester;
    .restart local v5    # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    :catchall_7e
    move-exception v0

    move-object/from16 v14, p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3303
    throw v0
.end method

.method public requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .registers 19
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p2, "receiverExtras"    # Landroid/os/Bundle;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "flags"    # I

    .line 3329
    nop

    .line 3330
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3329
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)Z
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 3106
    const-string/jumbo v0, "resizeTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3109
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_82

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3110
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3112
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_40

    .line 3113
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeTask: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_7c

    .line 3129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3114
    return v4

    .line 3116
    :cond_40
    :try_start_40
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 3117
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeTask not allowed on task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_7c

    .line 3129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3118
    return v4

    .line 3122
    :cond_6b
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_70

    const/4 v4, 0x1

    .line 3126
    .local v4, "preserveWindow":Z
    :cond_70
    :try_start_70
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    move-result v5

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_7c

    .line 3129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3126
    return v5

    .line 3127
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "preserveWindow":Z
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "resizeMode":I
    throw v3
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    .line 3129
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "resizeMode":I
    :catchall_82
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3130
    throw v2
.end method

.method resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 1990
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1992
    const/16 v1, -0x2710

    invoke-static {p4, p4, v1}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v6

    .line 1990
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1994
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v0, p3}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 4139
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "resumeAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4141
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4142
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4143
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4144
    return-void

    .line 4143
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public resumeCastActivity()V
    .registers 7

    .line 7417
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 7421
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7422
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 7423
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_17

    .line 7424
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7427
    :cond_17
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mResumeCastActivity:Z

    .line 7428
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, v1, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7430
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7431
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7432
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;->onCastActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 7433
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mResumeCastActivity:Z

    .line 7434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7435
    return-void
.end method

.method public retrieveSettings(Landroid/content/ContentResolver;)V
    .registers 27
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 956
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 957
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1e

    const-string v0, "enable_freeform_support"

    .line 958
    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v4

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    move v5, v0

    .line 961
    .local v5, "freeformWindowManagement":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 962
    .local v6, "supportsMultiWindow":Z
    if-eqz v6, :cond_38

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 963
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    move v0, v4

    :goto_39
    move v7, v0

    .line 964
    .local v7, "supportsPictureInPicture":Z
    if-eqz v7, :cond_4c

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 965
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.software.expanded_picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    move v0, v4

    :goto_4d
    move v8, v0

    .line 967
    .local v8, "supportsExpandedPictureInPicture":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 968
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v9

    .line 969
    .local v9, "supportsSplitScreenMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.software.activities_on_secondary_displays"

    .line 970
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 971
    .local v10, "supportsMultiDisplay":Z
    const-string v0, "debug.force_rtl"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_6b

    :cond_6a
    move v0, v4

    :goto_6b
    move v11, v0

    .line 972
    .local v11, "forceRtl":Z
    const-string v0, "force_resizable_activities"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x1

    goto :goto_77

    :cond_76
    move v0, v4

    :goto_77
    move v12, v0

    .line 974
    .local v12, "forceResizable":Z
    const-string v0, "enable_non_resizable_multi_window"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_83

    :cond_82
    move v0, v4

    :goto_83
    move v13, v0

    .line 976
    .local v13, "devEnableNonResizableMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e00f2

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 978
    .local v14, "supportsNonResizableMultiWindow":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x10e00d3

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 980
    .local v15, "respectsActivityMinWidthHeightMultiWindow":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10500c7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 982
    .local v4, "minPercentageMultiWindowSupportHeight":F
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10500c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 984
    .local v3, "minPercentageMultiWindowSupportWidth":F
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v18, v8

    .end local v8    # "supportsExpandedPictureInPicture":Z
    .local v18, "supportsExpandedPictureInPicture":Z
    const v8, 0x10e0084

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 988
    .local v8, "largeScreenSmallestScreenWidthDp":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 990
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v19, v0

    .line 991
    .local v19, "configuration":Landroid/content/res/Configuration;
    move/from16 v20, v6

    move-object/from16 v6, v19

    .end local v19    # "configuration":Landroid/content/res/Configuration;
    .local v6, "configuration":Landroid/content/res/Configuration;
    .local v20, "supportsMultiWindow":Z
    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 992
    if-eqz v11, :cond_e3

    .line 994
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 997
    :cond_e3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_e6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 998
    iput-boolean v12, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 999
    iput-boolean v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 1000
    iput v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 1001
    iput v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 1002
    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    .line 1003
    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    .line 1004
    iput v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I
    :try_end_f7
    .catchall {:try_start_e6 .. :try_end_f7} :catchall_1bd

    .line 1005
    if-nez v5, :cond_102

    if-nez v9, :cond_102

    if-nez v7, :cond_102

    if-eqz v10, :cond_100

    goto :goto_102

    :cond_100
    const/4 v0, 0x0

    goto :goto_103

    :cond_102
    :goto_102
    const/4 v0, 0x1

    .line 1009
    .local v0, "multiWindowFormEnabled":Z
    :goto_103
    if-nez v20, :cond_10f

    if-eqz v12, :cond_108

    goto :goto_10f

    :cond_108
    move/from16 v19, v0

    move/from16 v21, v3

    move/from16 v3, v18

    goto :goto_141

    :cond_10f
    :goto_10f
    if-eqz v0, :cond_13b

    .line 1010
    move/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "multiWindowFormEnabled":Z
    .local v19, "multiWindowFormEnabled":Z
    :try_start_114
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1011
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1012
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1013
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_130

    .line 1014
    move/from16 v21, v3

    move/from16 v3, v18

    .end local v18    # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .local v21, "minPercentageMultiWindowSupportWidth":F
    :try_start_120
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 1015
    iput-boolean v10, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_125

    goto :goto_14e

    .line 1037
    .end local v19    # "multiWindowFormEnabled":Z
    :catchall_125
    move-exception v0

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    goto/16 :goto_1c6

    .end local v21    # "minPercentageMultiWindowSupportWidth":F
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v18    # "supportsExpandedPictureInPicture":Z
    :catchall_130
    move-exception v0

    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v18    # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v21    # "minPercentageMultiWindowSupportWidth":F
    goto/16 :goto_1c6

    .line 1009
    .end local v21    # "minPercentageMultiWindowSupportWidth":F
    .restart local v0    # "multiWindowFormEnabled":Z
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v18    # "supportsExpandedPictureInPicture":Z
    :cond_13b
    move/from16 v19, v0

    move/from16 v21, v3

    move/from16 v3, v18

    .line 1017
    .end local v0    # "multiWindowFormEnabled":Z
    .end local v18    # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v19    # "multiWindowFormEnabled":Z
    .restart local v21    # "minPercentageMultiWindowSupportWidth":F
    :goto_141
    const/4 v0, 0x0

    :try_start_142
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1018
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1019
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1020
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1021
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 1022
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 1024
    :goto_14e
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V
    :try_end_155
    .catchall {:try_start_142 .. :try_end_155} :catchall_1b3

    .line 1027
    const/4 v0, 0x0

    move/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "supportsExpandedPictureInPicture":Z
    .restart local v18    # "supportsExpandedPictureInPicture":Z
    :try_start_159
    invoke-virtual {v1, v6, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1029
    .local v3, "globalConfig":Landroid/content/res/Configuration;
    sget-boolean v22, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v22, :cond_186

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .local v22, "protoLogParam0":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v24, v3

    .end local v3    # "globalConfig":Landroid/content/res/Configuration;
    .local v24, "globalConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;
    :try_end_16f
    .catchall {:try_start_159 .. :try_end_16f} :catchall_1ab

    move/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "minPercentageMultiWindowSupportHeight":F
    .local v17, "minPercentageMultiWindowSupportHeight":F
    :try_start_172
    aput-object v22, v3, v4
    :try_end_174
    .catchall {:try_start_172 .. :try_end_174} :catchall_180

    move/from16 v16, v5

    move-object/from16 v23, v6

    const v5, -0x4dd440e8

    const/4 v6, 0x0

    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .local v16, "freeformWindowManagement":Z
    .local v23, "configuration":Landroid/content/res/Configuration;
    :try_start_17c
    invoke-static {v0, v5, v4, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18e

    .line 1037
    .end local v16    # "freeformWindowManagement":Z
    .end local v19    # "multiWindowFormEnabled":Z
    .end local v22    # "protoLogParam0":Ljava/lang/String;
    .end local v23    # "configuration":Landroid/content/res/Configuration;
    .end local v24    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v5    # "freeformWindowManagement":Z
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    :catchall_180
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v16    # "freeformWindowManagement":Z
    .restart local v23    # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .line 1029
    .end local v16    # "freeformWindowManagement":Z
    .end local v17    # "minPercentageMultiWindowSupportHeight":F
    .end local v23    # "configuration":Landroid/content/res/Configuration;
    .restart local v3    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v4    # "minPercentageMultiWindowSupportHeight":F
    .restart local v5    # "freeformWindowManagement":Z
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v19    # "multiWindowFormEnabled":Z
    :cond_186
    move-object/from16 v24, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .line 1032
    .end local v3    # "globalConfig":Landroid/content/res/Configuration;
    .end local v4    # "minPercentageMultiWindowSupportHeight":F
    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v16    # "freeformWindowManagement":Z
    .restart local v17    # "minPercentageMultiWindowSupportHeight":F
    .restart local v23    # "configuration":Landroid/content/res/Configuration;
    .restart local v24    # "globalConfig":Landroid/content/res/Configuration;
    :goto_18e
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1033
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 1035
    const v3, 0x1050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 1037
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v19    # "multiWindowFormEnabled":Z
    .end local v24    # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v2
    :try_end_1a7
    .catchall {:try_start_17c .. :try_end_1a7} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1038
    return-void

    .line 1037
    .end local v16    # "freeformWindowManagement":Z
    .end local v17    # "minPercentageMultiWindowSupportHeight":F
    .end local v23    # "configuration":Landroid/content/res/Configuration;
    .restart local v4    # "minPercentageMultiWindowSupportHeight":F
    .restart local v5    # "freeformWindowManagement":Z
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    :catchall_1ab
    move-exception v0

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v4    # "minPercentageMultiWindowSupportHeight":F
    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v16    # "freeformWindowManagement":Z
    .restart local v17    # "minPercentageMultiWindowSupportHeight":F
    .restart local v23    # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .end local v16    # "freeformWindowManagement":Z
    .end local v17    # "minPercentageMultiWindowSupportHeight":F
    .end local v18    # "supportsExpandedPictureInPicture":Z
    .end local v23    # "configuration":Landroid/content/res/Configuration;
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v4    # "minPercentageMultiWindowSupportHeight":F
    .restart local v5    # "freeformWindowManagement":Z
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    :catchall_1b3
    move-exception v0

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v3    # "supportsExpandedPictureInPicture":Z
    .end local v4    # "minPercentageMultiWindowSupportHeight":F
    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v16    # "freeformWindowManagement":Z
    .restart local v17    # "minPercentageMultiWindowSupportHeight":F
    .restart local v18    # "supportsExpandedPictureInPicture":Z
    .restart local v23    # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .end local v16    # "freeformWindowManagement":Z
    .end local v17    # "minPercentageMultiWindowSupportHeight":F
    .end local v21    # "minPercentageMultiWindowSupportWidth":F
    .end local v23    # "configuration":Landroid/content/res/Configuration;
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v4    # "minPercentageMultiWindowSupportHeight":F
    .restart local v5    # "freeformWindowManagement":Z
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    :catchall_1bd
    move-exception v0

    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v3    # "minPercentageMultiWindowSupportWidth":F
    .end local v4    # "minPercentageMultiWindowSupportHeight":F
    .end local v5    # "freeformWindowManagement":Z
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v16    # "freeformWindowManagement":Z
    .restart local v17    # "minPercentageMultiWindowSupportHeight":F
    .restart local v21    # "minPercentageMultiWindowSupportWidth":F
    .restart local v23    # "configuration":Landroid/content/res/Configuration;
    :goto_1c6
    :try_start_1c6
    monitor-exit v2
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1cb
    move-exception v0

    goto :goto_1c6
.end method

.method saveANRState(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;

    .line 5529
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 5530
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 5531
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5532
    if-eqz p1, :cond_48

    .line 5533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5535
    :cond_48
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5536
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "  "

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5537
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5538
    const-string v2, "-------------------------------------------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5540
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 5543
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5544
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 5546
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 5547
    return-void
.end method

.method scheduleAppGcsLocked()V
    .registers 3

    .line 5355
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5356
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/app/IActivityController;
    .param p2, "imAMonkey"    # Z

    .line 2521
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2524
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2525
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2527
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->setActivityController(Landroid/app/IActivityController;)V

    .line 2528
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2529
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2530
    return-void

    .line 2529
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setBooted(Z)V
    .registers 3
    .param p1, "booted"    # Z

    .line 5172
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5173
    return-void
.end method

.method setBooting(Z)V
    .registers 3
    .param p1, "booting"    # Z

    .line 5164
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5165
    return-void
.end method

.method public setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 8
    .param p1, "castActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "enter"    # I

    .line 7468
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 7469
    .local v0, "packageName":Ljava/lang/String;
    :goto_7
    if-eqz p1, :cond_14

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    .line 7471
    .local v1, "pid":I
    :goto_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p2, v0, v1}, Landroid/app/ActivityManagerInternal;->setCastPid(ILjava/lang/String;I)V

    .line 7473
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7474
    .local v2, "res":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v3

    .line 7475
    .local v3, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    invoke-interface {v3}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiCastModeSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7476
    invoke-interface {v3}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiCastModePackageSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7477
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 5521
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 5522
    return-void
.end method

.method public setFocusedRootTask(I)V
    .registers 11
    .param p1, "taskId"    # I

    .line 2085
    const-string/jumbo v0, "setFocusedRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2086
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v0, :cond_1e

    int-to-long v0, p1

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xf382dd5

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2087
    .end local v0    # "protoLogParam0":J
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2089
    .local v0, "callingId":J
    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_74

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2090
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2091
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_51

    .line 2092
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFocusedRootTask: No task with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_6e

    .line 2101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    return-void

    .line 2095
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2096
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_65

    const-string/jumbo v5, "setFocusedRootTask"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2097
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2099
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_6e

    :try_start_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 2101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    nop

    .line 2103
    return-void

    .line 2099
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 2101
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_74
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    throw v2
.end method

.method public setFocusedTask(I)V
    .registers 6
    .param p1, "taskId"    # I

    .line 2107
    const-string/jumbo v0, "setFocusedTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2110
    .local v0, "callingId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_23

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2111
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 2112
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 2114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    nop

    .line 2116
    return-void

    .line 2112
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2114
    .restart local v0    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    throw v2
.end method

.method setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "taskId"    # I
    .param p2, "touchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2119
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    int-to-long v3, p1

    .local v3, "protoLogParam0":J
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x34a1065

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v0, v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2121
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam0":J
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2122
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_28

    .line 2123
    return-void

    .line 2125
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2126
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_2f

    .line 2127
    return-void

    .line 2130
    :cond_2f
    const-string/jumbo v4, "setFocusedTask"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2131
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_5e

    .line 2132
    :cond_3e
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2133
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    .line 2134
    .local v4, "parent":Lcom/android/server/wm/TaskFragment;
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2136
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 2137
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, p2}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2138
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2142
    .end local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5e
    :goto_5e
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 2050
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2054
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2055
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 2056
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1c
    if-nez v2, :cond_2b

    .line 2057
    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2060
    :cond_2b
    :try_start_2b
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2061
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 2062
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2063
    return-void

    .line 2062
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;

    .line 5191
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5192
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5192
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5195
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5196
    return-void
.end method

.method setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4908
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiOrientationStub;->update3appCameraWhenResume(Lcom/android/server/wm/ActivityRecord;)V

    .line 4909
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4910
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    .line 4911
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_40

    .line 4913
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_34

    .line 4914
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 4915
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4916
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4917
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 4918
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4920
    :cond_34
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_46

    .line 4921
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4922
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_46

    .line 4925
    :cond_40
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_46

    .line 4928
    :cond_44
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4933
    :cond_46
    :goto_46
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_56

    .line 4934
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_73

    .line 4936
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 4938
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_73

    .line 4941
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4942
    .local v1, "lastResumedActivityTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_6a

    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_6a

    .line 4944
    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .local v4, "session":Landroid/service/voice/IVoiceInteractionSession;
    goto :goto_6e

    .line 4946
    .end local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_6a
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 4949
    .restart local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :goto_6e
    if-eqz v4, :cond_73

    .line 4954
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 4959
    .end local v1    # "lastResumedActivityTask":Lcom/android/server/wm/Task;
    .end local v4    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_86

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v1, v4, :cond_86

    .line 4960
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 4962
    :cond_86
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_90

    :cond_8f
    move-object v1, v3

    .line 4964
    .local v1, "prevTask":Lcom/android/server/wm/Task;
    :goto_90
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 4965
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4970
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 4971
    .local v4, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v5, 0x0

    if-eqz v4, :cond_a8

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v4, v6, v5, v2, v7}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;ZZI)Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_a9

    .line 4972
    :cond_a8
    move-object v6, v3

    :goto_a9
    nop

    .line 4973
    .local v6, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_b0

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4974
    .local v3, "nextAr":Lcom/android/server/wm/ActivityRecord;
    :cond_b0
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v7

    .line 4975
    .local v7, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v7, :cond_d3

    invoke-virtual {v7}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_d3

    if-eqz v3, :cond_d3

    .line 4976
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v8, v9, :cond_d3

    .line 4977
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .local v8, "changed":Z
    goto :goto_d9

    .line 4979
    .end local v8    # "changed":Z
    :cond_d3
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 4982
    .restart local v8    # "changed":Z
    :goto_d9
    if-eqz v8, :cond_e0

    .line 4983
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4986
    :cond_e0
    if-eqz v1, :cond_e4

    if-eq v0, v1, :cond_f4

    .line 4987
    :cond_e4
    if-eqz v1, :cond_ed

    .line 4988
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v10, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 4990
    :cond_ed
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v9, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v9, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 4993
    :cond_f4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4994
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4997
    if-nez p1, :cond_fe

    const/4 v2, -0x1

    goto :goto_100

    :cond_fe
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4998
    :goto_100
    if-nez p1, :cond_105

    const-string v5, "NULL"

    goto :goto_107

    :cond_105
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 4996
    :goto_107
    invoke-static {v2, v5, p2}, Lcom/android/server/wm/EventLogTags;->writeWmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5000
    return-void
.end method

.method public setLockScreenShown(ZZ)V
    .registers 9
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 3148
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 3154
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3156
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_2c

    .line 3157
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3158
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3158
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3161
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_60

    .line 3165
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2c
    if-nez p1, :cond_3d

    .line 3166
    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->setPackageHoldOn(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 3167
    invoke-static {}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->get()Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->updateTextureEyeCareWhenAodShow(Z)V

    .line 3170
    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_5a

    .line 3175
    :try_start_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3176
    nop

    .line 3177
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3179
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3184
    return-void

    .line 3175
    .restart local v1    # "ident":J
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3176
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "keyguardShowing":Z
    .end local p2    # "aodShowing":Z
    throw v3

    .line 3177
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "keyguardShowing":Z
    .restart local p2    # "aodShowing":Z
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3150
    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocusId(Landroid/content/LocusId;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 2227
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2228
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2229
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_f

    .line 2230
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setLocusId(Landroid/content/LocusId;)V

    .line 2232
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2233
    return-void

    .line 2232
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setOrientationOptions(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # I

    .line 7519
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7520
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7521
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_f

    .line 7522
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setOrientationOptions(I)V

    .line 7524
    .end local v1    # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7525
    return-void

    .line 7524
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .line 4207
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4210
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 4211
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4212
    return-void

    .line 4211
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 4190
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4193
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 4194
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4195
    return-void

    .line 4194
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPeriodicCleaner(Lcom/android/server/am/PeriodicCleanerInternalStub;)V
    .registers 4
    .param p1, "periodicCleaner"    # Lcom/android/server/am/PeriodicCleanerInternalStub;

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1135
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    .line 1136
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1137
    return-void

    .line 1136
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPersistentVrThread(I)V
    .registers 6
    .param p1, "tid"    # I

    .line 4109
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 4118
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4119
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4121
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4122
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4123
    .end local v1    # "pid":I
    .end local v2    # "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4124
    return-void

    .line 4123
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4111
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4112
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4115
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"    # Lcom/android/server/wm/RecentTasks;

    .line 1172
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1173
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1174
    return-void
.end method

.method public setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .registers 10
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 5662
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "setRunningRemoteTransition"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 5665
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5666
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5669
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 5671
    .local v3, "callingProc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5678
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 5679
    .local v4, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v4, :cond_47

    .line 5680
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find process for application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5683
    :cond_47
    const/4 v5, 0x1

    :try_start_48
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 5684
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->addRemoteAnimationDelegate(Lcom/android/server/wm/WindowProcessController;)V

    .line 5685
    .end local v3    # "callingProc":Lcom/android/server/wm/WindowProcessController;
    .end local v4    # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5686
    return-void

    .line 5672
    .restart local v3    # "callingProc":Lcom/android/server/wm/WindowProcessController;
    :cond_53
    :try_start_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call setRunningRemoteTransition from a process (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") which isn\'t itself running a remote transition."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5675
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5676
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    throw v5

    .line 5685
    .end local v3    # "callingProc":Lcom/android/server/wm/WindowProcessController;
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    :catchall_81
    move-exception v3

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_53 .. :try_end_83} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public setSplitScreenResizing(Z)V
    .registers 6
    .param p1, "resizing"    # Z

    .line 3889
    const-string/jumbo v0, "setSplitScreenResizing()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3892
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3893
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setSplitScreenResizing(Z)V

    .line 3894
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 3896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3897
    nop

    .line 3898
    return-void

    .line 3894
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "resizing":Z
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 3896
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "resizing":Z
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3897
    throw v2
.end method

.method public setTaskResizeable(II)V
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "resizeableMode"    # I

    .line 3034
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3035
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3037
    .local v1, "task":Lcom/android/server/wm/Task;
    if-nez v1, :cond_33

    .line 3038
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskResizeable: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3041
    :cond_33
    :try_start_33
    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->setResizeMode(I)V

    .line 3042
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3043
    return-void

    .line 3042
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingMode(IIZ)Z
    .registers 13
    .param p1, "taskId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "toTop"    # Z

    .line 2270
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8f

    .line 2273
    .local v1, "ident":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2275
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_35

    .line 2276
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTaskWindowingMode: No task for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_89

    .line 2277
    nop

    .line 2299
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_8f

    .line 2277
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2280
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2286
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2287
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6, v3, p3, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->needSetWindowMode(Lcom/android/server/wm/Task;ZI)Z

    .line 2288
    if-eqz p3, :cond_4e

    .line 2289
    const-string/jumbo v6, "setTaskWindowingMode"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2292
    :cond_4e
    invoke-virtual {v5, p2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2293
    iget-object v6, v5, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x1

    if-eqz v6, :cond_5c

    .line 2294
    iget-object v6, v5, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4, v7, v7}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_5c
    .catchall {:try_start_35 .. :try_end_5c} :catchall_89

    .line 2297
    :cond_5c
    nop

    .line 2299
    :try_start_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_8f

    .line 2297
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 2281
    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    :cond_65
    :try_start_65
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to windowing mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "toTop":Z
    throw v4
    :try_end_89
    .catchall {:try_start_65 .. :try_end_89} :catchall_89

    .line 2299
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_89
    move-exception v3

    :try_start_8a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2300
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "toTop":Z
    throw v3

    .line 2301
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "toTop":Z
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 4
    .param p1, "usageStatsManager"    # Landroid/app/usage/UsageStatsManagerInternal;

    .line 1127
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1128
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1129
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1130
    return-void

    .line 1129
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"    # Z

    .line 3740
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3741
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 3742
    if-eqz p2, :cond_1c

    .line 3743
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_21

    .line 3745
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3748
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3749
    return-void

    .line 3748
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVrThread(I)V
    .registers 6
    .param p1, "tid"    # I

    .line 4099
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4100
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4101
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4102
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4103
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4104
    .end local v1    # "pid":I
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4105
    return-void

    .line 4104
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 1104
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1105
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1106
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowOrganizerController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1108
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1109
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1110
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 1111
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1112
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1115
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-eqz v1, :cond_45

    .line 1116
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BackNavigationController;->setTaskSnapshotController(Lcom/android/server/wm/TaskSnapshotController;)V

    .line 1120
    :cond_45
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->init(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1122
    invoke-static {}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;->get()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {v1, v2, p0, v3}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;->init(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 1123
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1124
    return-void

    .line 1123
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 4152
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v16, "startActivities"

    .line 1319
    .local v16, "reason":Ljava/lang/String;
    const-string/jumbo v1, "startActivities"

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p8

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v17

    .line 1322
    .end local p8    # "userId":I
    .local v17, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1324
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v11

    .line 1322
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string/jumbo v13, "startActivities"

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v12, v17

    move/from16 v15, v18

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    return v1
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 25
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 1308
    nop

    .line 1310
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1308
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1624
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1625
    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 1626
    .local v2, "res":Landroid/app/WaitResult;
    const-string/jumbo v3, "startActivityAndWait"

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1627
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move/from16 v6, p12

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    .line 1630
    .end local p12    # "userId":I
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1631
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1632
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1633
    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1634
    move-object/from16 v8, p5

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1635
    move-object/from16 v9, p6

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1636
    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1637
    move/from16 v11, p8

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1638
    move/from16 v12, p9

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1639
    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1640
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1641
    move-object/from16 v14, p10

    invoke-virtual {v3, v14}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1642
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1643
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1644
    return-object v2
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .registers 30
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"    # Landroid/os/Bundle;
    .param p11, "ignoreTargetSecurity"    # Z
    .param p12, "userId"    # I

    .line 1691
    move-object/from16 v1, p5

    move/from16 v2, p11

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1692
    if-eqz v1, :cond_16e

    .line 1696
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1697
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_149

    .line 1700
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_135

    .line 1704
    const-string v0, "android.permission.START_ACTIVITY_AS_CALLER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_82

    .line 1710
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1711
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1712
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->ignoreSpecifiedSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_44

    .line 1714
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Must be called from an activity that is declared in the android package"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1717
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_44
    :goto_44
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_82

    .line 1720
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v0, v6, :cond_59

    goto :goto_82

    .line 1721
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling activity in uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be system uid or original calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1728
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_82
    :goto_82
    if-eqz v2, :cond_a1

    .line 1729
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_91

    goto :goto_a1

    .line 1734
    :cond_91
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1730
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_99
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1738
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_a1
    :goto_a1
    iget v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move v6, v0

    .line 1739
    .local v6, "targetUid":I
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object v7, v0

    .line 1740
    .local v7, "targetPackage":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object v8, v0

    .line 1741
    .local v8, "targetFeatureId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v0

    move v9, v0

    .line 1742
    .local v9, "isResolver":Z
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_9 .. :try_end_b0} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1744
    const/16 v0, -0x2710

    move/from16 v10, p12

    if-ne v10, v0, :cond_c2

    .line 1745
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v10, v0

    .line 1750
    .end local p12    # "userId":I
    .local v10, "userId":I
    :cond_c2
    :try_start_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string/jumbo v4, "startActivityAsCaller"
    :try_end_c9
    .catch Ljava/lang/SecurityException; {:try_start_c2 .. :try_end_c9} :catch_127

    move-object/from16 v11, p3

    :try_start_cb
    invoke-virtual {v0, v11, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1751
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1752
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1753
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_db
    .catch Ljava/lang/SecurityException; {:try_start_cb .. :try_end_db} :catch_125

    .line 1754
    move-object/from16 v12, p4

    :try_start_dd
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1755
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_e5
    .catch Ljava/lang/SecurityException; {:try_start_dd .. :try_end_e5} :catch_123

    .line 1756
    move-object/from16 v13, p6

    :try_start_e7
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/SecurityException; {:try_start_e7 .. :try_end_eb} :catch_121

    .line 1757
    move/from16 v14, p7

    :try_start_ed
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_ed .. :try_end_f1} :catch_11f

    .line 1758
    move/from16 v15, p8

    :try_start_f3
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_f7} :catch_11d

    .line 1759
    move-object/from16 v4, p10

    :try_start_f9
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1760
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1761
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1762
    if-eqz v9, :cond_10c

    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_10d

    :cond_10c
    move v2, v6

    :goto_10d
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v2, 0x1

    .line 1765
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_11a
    .catch Ljava/lang/SecurityException; {:try_start_f9 .. :try_end_11a} :catch_11b

    .line 1750
    return v0

    .line 1767
    :catch_11b
    move-exception v0

    goto :goto_134

    :catch_11d
    move-exception v0

    goto :goto_132

    :catch_11f
    move-exception v0

    goto :goto_130

    :catch_121
    move-exception v0

    goto :goto_12e

    :catch_123
    move-exception v0

    goto :goto_12c

    :catch_125
    move-exception v0

    goto :goto_12a

    :catch_127
    move-exception v0

    move-object/from16 v11, p3

    :goto_12a
    move-object/from16 v12, p4

    :goto_12c
    move-object/from16 v13, p6

    :goto_12e
    move/from16 v14, p7

    :goto_130
    move/from16 v15, p8

    :goto_132
    move-object/from16 v4, p10

    .line 1779
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_134
    throw v0

    .line 1701
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v6    # "targetUid":I
    .end local v7    # "targetPackage":Ljava/lang/String;
    .end local v8    # "targetFeatureId":Ljava/lang/String;
    .end local v9    # "isResolver":Z
    .end local v10    # "userId":I
    .restart local p12    # "userId":I
    :cond_135
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    :try_start_141
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Called without a process attached to activity"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1698
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_149
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called with bad activity token: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1693
    .end local v5    # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :cond_16e
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Must be called from an activity"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/os/IBinder;
    .end local p6    # "resultWho":Ljava/lang/String;
    .end local p7    # "requestCode":I
    .end local p8    # "startFlags":I
    .end local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10    # "bOptions":Landroid/os/Bundle;
    .end local p11    # "ignoreTargetSecurity":Z
    .end local p12    # "userId":I
    throw v0

    .line 1742
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultWho":Ljava/lang/String;
    .restart local p7    # "requestCode":I
    .restart local p8    # "startFlags":I
    .restart local p9    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10    # "bOptions":Landroid/os/Bundle;
    .restart local p11    # "ignoreTargetSecurity":Z
    .restart local p12    # "userId":I
    :catchall_182
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    :goto_18f
    monitor-exit v4
    :try_end_190
    .catchall {:try_start_141 .. :try_end_190} :catchall_194

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_194
    move-exception v0

    goto :goto_18f
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 27
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1333
    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I
    .registers 14
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "taskId"    # I
    .param p8, "userId"    # I

    .line 1912
    const-string v0, "android.permission.MANAGE_GAME_ACTIVITY"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 1920
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1922
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1923
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1925
    const-string/jumbo v1, "startActivityFromGameSession"

    invoke-virtual {p0, p4, p5, p8, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 1927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1929
    .local v2, "origId":J
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    .line 1930
    invoke-virtual {v4, p6, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1931
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1932
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1933
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1934
    invoke-virtual {p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1935
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1936
    invoke-virtual {v1, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1937
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1939
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_59

    .line 1941
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    return v1

    .line 1941
    :catchall_59
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    throw v1

    .line 1913
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v2    # "origId":J
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: startActivityFromGameSession() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 9
    .param p1, "taskId"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startActivityFromRecents()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1897
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1898
    .local v1, "callingUid":I
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1899
    .local v2, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1901
    .local v3, "origId":J
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v0, v1, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v5
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 1904
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1901
    return v5

    .line 1904
    :catchall_24
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1905
    throw v5
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 29
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "target"    # Landroid/content/IIntentSender;
    .param p3, "allowlistToken"    # Landroid/os/IBinder;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 1378
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v0, "startActivityIntentSender"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1380
    if-eqz p4, :cond_1b

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 1381
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1384
    :cond_1b
    :goto_1b
    instance-of v0, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_6e

    .line 1388
    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    .line 1390
    .local v16, "pir":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1394
    .local v0, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 1395
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_48

    .line 1397
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 1399
    .end local v0    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1400
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v16

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0

    .line 1399
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1385
    .end local v16    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad PendingIntent object"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "config"    # Landroid/content/res/Configuration;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1652
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1653
    const-string/jumbo v0, "startActivityWithConfig"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1654
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1658
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1659
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1660
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1661
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1663
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1664
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1665
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1666
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1667
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1668
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1669
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1657
    return v0
.end method

.method public startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .line 1825
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v0, "startAssistantActivity"

    invoke-virtual {p0, p3, p4, p8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 1829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1831
    .local v1, "origId":J
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1833
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1834
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1835
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1836
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1837
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v3, 0x1

    .line 1838
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1839
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_45

    .line 1841
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1831
    return v0

    .line 1841
    :catchall_45
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1842
    throw v0
.end method

.method public startBackNavigation(Z)Landroid/window/BackNavigationInfo;
    .registers 5
    .param p1, "requestAnimation"    # Z

    .line 1947
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startBackNavigation()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-nez v0, :cond_10

    .line 1950
    const/4 v0, 0x0

    return-object v0

    .line 1952
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Lcom/android/server/wm/WindowManagerService;Z)Landroid/window/BackNavigationInfo;

    move-result-object v0

    return-object v0
.end method

.method public startDreamActivity(Landroid/content/Intent;)Z
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1569
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsDream(Ljava/lang/String;)V

    .line 1572
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1573
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    const v1, 0x1030417

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1574
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1575
    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1576
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 1577
    const/4 v2, 0x3

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1578
    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1579
    const/4 v2, -0x1

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1580
    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1581
    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1582
    iput v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1584
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1585
    .local v2, "options":Landroid/app/ActivityOptions;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 1587
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1588
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 1590
    .local v4, "process":Lcom/android/server/wm/WindowProcessController;
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1591
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1592
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1593
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v5, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1594
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1597
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1599
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_8d
    .catchall {:try_start_43 .. :try_end_8d} :catchall_d1

    .line 1601
    .local v7, "origId":J
    :try_start_8d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v9

    const-string v10, "dream"

    invoke-virtual {v9, p1, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1602
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1603
    invoke-virtual {v9, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1604
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1605
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1606
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1610
    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1611
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->execute()I
    :try_end_c2
    .catchall {:try_start_8d .. :try_end_c2} :catchall_cb

    .line 1612
    nop

    .line 1614
    :try_start_c3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_d1

    .line 1612
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1614
    :catchall_cb
    move-exception v1

    :try_start_cc
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1615
    nop

    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "intent":Landroid/content/Intent;
    throw v1

    .line 1616
    .end local v4    # "process":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v7    # "origId":J
    .restart local v0    # "a":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "options":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_d1
    move-exception v1

    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method startLaunchPowerMode(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 4730
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 4731
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 4733
    :cond_9
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4734
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2c

    .line 4735
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_1c

    .line 4736
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4738
    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 4739
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4741
    const-string v0, "ActivityTaskManager"

    const-string v1, "Temporarily retain top process state for launching app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    :cond_2c
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/wm/Task;Z)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"    # Z

    .line 2763
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x11a27eaf

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string/jumbo v6, "startLockTaskMode: %s"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2764
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_19
    if-eqz p1, :cond_59

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-nez v0, :cond_20

    goto :goto_59

    .line 2768
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2769
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne p1, v3, :cond_51

    .line 2779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2780
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2783
    .local v4, "ident":J
    :try_start_36
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-array v1, v1, [I

    const/4 v7, 0x2

    aput v7, v1, v2

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2785
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_4c

    .line 2787
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    nop

    .line 2789
    return-void

    .line 2787
    :catchall_4c
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    throw v1

    .line 2770
    .end local v3    # "callingUid":I
    .end local v4    # "ident":J
    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid task, not in foreground"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2765
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_59
    :goto_59
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 22
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bOptions"    # Landroid/os/Bundle;

    .line 1408
    move-object/from16 v1, p2

    if-eqz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 1409
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :cond_13
    :goto_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1413
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1414
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1415
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-nez v5, :cond_2f

    .line 1416
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1417
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1419
    :cond_2f
    :try_start_2f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1421
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1422
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1424
    :cond_3d
    :try_start_3d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_1f2

    move-object v1, v0

    .line 1426
    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_43
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1430
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_1f8

    and-int/lit8 v0, v0, 0x8

    const/4 v14, 0x1

    if-eqz v0, :cond_61

    move v0, v14

    goto :goto_62

    :cond_61
    move v0, v6

    :goto_62
    move v15, v0

    .line 1432
    .local v15, "debug":Z
    const/16 v16, 0x0

    .line 1435
    .local v16, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_65
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const-wide/32 v10, 0x10400

    .line 1438
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1435
    move-object v8, v1

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1441
    .local v0, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_82

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_83

    :cond_82
    move v7, v6

    .line 1442
    .local v7, "N":I
    :goto_83
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_84
    if-ge v8, v7, :cond_127

    .line 1443
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1444
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_121

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1445
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_121

    .line 1448
    add-int/2addr v8, v14

    .line 1449
    if-ge v8, v7, :cond_b4

    .line 1450
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_b1} :catch_12a
    .catchall {:try_start_65 .. :try_end_b1} :catchall_1f8

    move-object/from16 v16, v10

    goto :goto_b6

    .line 1449
    :cond_b4
    move-object/from16 v10, v16

    .line 1452
    .end local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_b6
    if-eqz v15, :cond_11e

    .line 1453
    :try_start_b8
    const-string v11, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Next matching activity: found current "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const-string v11, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Next matching activity: next is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v10, :cond_f3

    .line 1456
    const-string/jumbo v13, "null"

    goto :goto_10e

    :cond_f3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_10e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1455
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_119} :catch_11a
    .catchall {:try_start_b8 .. :try_end_119} :catchall_1f8

    goto :goto_11e

    .line 1461
    .end local v0    # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "N":I
    .end local v8    # "i":I
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_11a
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_12b

    .line 1462
    :cond_11e
    :goto_11e
    move-object/from16 v16, v10

    goto :goto_127

    .line 1442
    .end local v10    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "N":I
    .restart local v8    # "i":I
    .restart local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_121
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_84

    .line 1462
    .end local v0    # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_127
    :goto_127
    move-object/from16 v7, v16

    goto :goto_12d

    .line 1461
    :catch_12a
    move-exception v0

    :goto_12b
    move-object/from16 v7, v16

    .line 1464
    .end local v16    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_12d
    if-nez v7, :cond_140

    .line 1466
    :try_start_12f
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1467
    if-eqz v15, :cond_13b

    const-string v0, "ActivityTaskManager"

    const-string v8, "Next matching activity: nothing found"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_13b
    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_1f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1471
    :cond_140
    :try_start_140
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1473
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v8, -0x1e000001

    and-int/2addr v0, v8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1482
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    move v8, v0

    .line 1483
    .local v8, "wasFinishing":Z
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1486
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object v10, v0

    .line 1487
    .local v10, "resultTo":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object v11, v0

    .line 1488
    .local v11, "resultWho":Ljava/lang/String;
    iget v0, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move v12, v0

    .line 1489
    .local v12, "requestCode":I
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1490
    if-eqz v10, :cond_170

    .line 1491
    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1494
    :cond_170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_174
    .catchall {:try_start_140 .. :try_end_174} :catchall_1f8

    .line 1497
    .local v16, "origId":J
    if-nez v2, :cond_180

    .line 1498
    :try_start_176
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    move-object v2, v0

    .line 1506
    :cond_180
    invoke-virtual {v2, v5}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string/jumbo v14, "startNextMatchingActivity"

    .line 1508
    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1509
    invoke-virtual {v14}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1510
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1511
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1512
    if-eqz v10, :cond_1aa

    iget-object v13, v10, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    :cond_1aa
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1513
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1514
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1515
    const/4 v13, -0x1

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget v14, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1516
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1517
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1518
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1519
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget v13, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1520
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1521
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1523
    .local v0, "res":I
    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z
    :try_end_1e1
    .catchall {:try_start_176 .. :try_end_1e1} :catchall_1ec

    .line 1524
    if-nez v0, :cond_1e4

    move v6, v9

    .line 1526
    :cond_1e4
    :try_start_1e4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_1e8
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_1f8

    .line 1524
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1526
    .end local v0    # "res":I
    :catchall_1ec
    move-exception v0

    :try_start_1ed
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1527
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "callingActivity":Landroid/os/IBinder;
    .end local p3    # "bOptions":Landroid/os/Bundle;
    throw v0

    .line 1528
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "wasFinishing":Z
    .end local v10    # "resultTo":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v15    # "debug":Z
    .end local v16    # "origId":J
    .restart local v2    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "callingActivity":Landroid/os/IBinder;
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p3    # "bOptions":Landroid/os/Bundle;
    :catchall_1f2
    move-exception v0

    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_1f3
    monitor-exit v4
    :try_end_1f4
    .catchall {:try_start_1ed .. :try_end_1f4} :catchall_1f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1f8
    move-exception v0

    goto :goto_1f3
.end method

.method startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 19
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "knownToBeDead"    # Z
    .param p3, "isTop"    # Z
    .param p4, "hostingType"    # Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    .line 5146
    const-wide/16 v3, 0x20

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5152
    :cond_22
    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>()V

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5153
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 5156
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 5152
    move-object/from16 v11, p4

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5157
    .local v0, "m":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_50

    .line 5159
    nop

    .end local v0    # "m":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5160
    nop

    .line 5161
    return-void

    .line 5159
    :catchall_50
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5160
    throw v0
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    .registers 28
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "eventTime"    # J
    .param p4, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 1855
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p4

    const-string/jumbo v0, "startRecentsActivity()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1856
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1857
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1858
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1860
    .local v20, "origId":J
    :try_start_18
    iget-object v6, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_b5

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1861
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1862
    .local v7, "recentsComponent":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentFeatureId()Ljava/lang/String;

    move-result-object v8

    .line 1863
    .local v8, "recentsFeatureId":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v9

    .line 1864
    .local v9, "recentsUid":I
    invoke-virtual {v11, v14, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1867
    .local v10, "caller":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_a4

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v22, v6

    move-object/from16 v6, p1

    :try_start_45
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_a0

    .line 1870
    .local v0, "anim":Lcom/android/server/wm/RecentsAnimation;
    if-nez v15, :cond_5b

    .line 1871
    :try_start_4a
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    goto :goto_97

    .line 1885
    .end local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7    # "recentsComponent":Landroid/content/ComponentName;
    .end local v8    # "recentsFeatureId":Ljava/lang/String;
    .end local v9    # "recentsUid":I
    .end local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :catchall_53
    move-exception v0

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    goto/16 :goto_ac

    .line 1875
    .restart local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .restart local v7    # "recentsComponent":Landroid/content/ComponentName;
    .restart local v8    # "recentsFeatureId":Ljava/lang/String;
    .restart local v9    # "recentsUid":I
    .restart local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :cond_5b
    :try_start_5b
    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_a0

    if-eqz v1, :cond_8f

    .line 1876
    :try_start_63
    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v17

    .line 1877
    .local v17, "matrix":[F
    const-string v1, "KEY_RECENTSANIMATION_CROP"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v18

    .line 1878
    .local v18, "crop":[I
    const-string v1, "KEY_RECENTSANIMATION_RADIUS"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v19
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_88

    .line 1879
    .local v19, "radius":F
    move v1, v13

    .end local v13    # "callingUid":I
    .local v1, "callingUid":I
    move-object v13, v0

    move v2, v14

    .end local v14    # "callingPid":I
    .local v2, "callingPid":I
    move-object/from16 v14, p4

    move-object v3, v15

    move-wide/from16 v15, p2

    :try_start_7e
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J[F[IF)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_84

    .line 1880
    .end local v17    # "matrix":[F
    .end local v18    # "crop":[I
    .end local v19    # "radius":F
    move-wide/from16 v4, p2

    goto :goto_97

    .line 1885
    .end local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7    # "recentsComponent":Landroid/content/ComponentName;
    .end local v8    # "recentsFeatureId":Ljava/lang/String;
    .end local v9    # "recentsUid":I
    .end local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :catchall_84
    move-exception v0

    move-wide/from16 v4, p2

    goto :goto_ac

    .end local v1    # "callingUid":I
    .end local v2    # "callingPid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    :catchall_88
    move-exception v0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-wide/from16 v4, p2

    goto :goto_ac

    .line 1881
    .restart local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .restart local v7    # "recentsComponent":Landroid/content/ComponentName;
    .restart local v8    # "recentsFeatureId":Ljava/lang/String;
    .restart local v9    # "recentsUid":I
    .restart local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :cond_8f
    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "callingPid":I
    move-wide/from16 v4, p2

    :try_start_94
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V

    .line 1885
    .end local v0    # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7    # "recentsComponent":Landroid/content/ComponentName;
    .end local v8    # "recentsFeatureId":Ljava/lang/String;
    .end local v9    # "recentsUid":I
    .end local v10    # "caller":Lcom/android/server/wm/WindowProcessController;
    :goto_97
    monitor-exit v22
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_b3

    :try_start_98
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b1

    .line 1887
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1888
    nop

    .line 1889
    return-void

    .line 1885
    .end local v1    # "callingUid":I
    .end local v2    # "callingPid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    :catchall_a0
    move-exception v0

    move-wide/from16 v4, p2

    goto :goto_a9

    :catchall_a4
    move-exception v0

    move-wide/from16 v4, p2

    move-object/from16 v22, v6

    :goto_a9
    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "callingPid":I
    :goto_ac
    :try_start_ac
    monitor-exit v22
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_b3

    :try_start_ad
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "callingUid":I
    .end local v2    # "callingPid":I
    .end local v20    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "eventTime":J
    .end local p4    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 1887
    .restart local v1    # "callingUid":I
    .restart local v2    # "callingPid":I
    .restart local v20    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "eventTime":J
    .restart local p4    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :catchall_b1
    move-exception v0

    goto :goto_bb

    .line 1885
    :catchall_b3
    move-exception v0

    goto :goto_ac

    .line 1887
    .end local v1    # "callingUid":I
    .end local v2    # "callingPid":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "callingPid":I
    :catchall_b5
    move-exception v0

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13    # "callingUid":I
    .end local v14    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v2    # "callingPid":I
    :goto_bb
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1888
    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .registers 8
    .param p1, "taskId"    # I

    .line 2732
    const-string/jumbo v0, "startSystemLockTaskMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2736
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3e

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2737
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2739
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_21

    .line 2740
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_38

    .line 2748
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    return-void

    .line 2744
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const-string/jumbo v5, "startSystemLockTaskMode"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2745
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 2746
    .end local v3    # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_38

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2748
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2749
    nop

    .line 2750
    return-void

    .line 2746
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 2748
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2749
    throw v2
.end method

.method public startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "startFlags"    # I
    .param p10, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"    # Landroid/os/Bundle;
    .param p12, "userId"    # I

    .line 1793
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1794
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    if-eqz p7, :cond_52

    if-eqz p8, :cond_52

    .line 1798
    const-string/jumbo v0, "startVoiceActivity"

    invoke-virtual {p0, p3, p4, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1801
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1802
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1803
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1804
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1805
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1806
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1807
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1808
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1809
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1810
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1811
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1812
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1800
    return v0

    .line 1796
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null session or interactor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAppSwitches()V
    .registers 6

    .line 4128
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "stopAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4130
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4132
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4133
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4134
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4135
    return-void

    .line 4134
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method stopLockTaskModeInternal(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSystemCaller"    # Z

    .line 2792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2793
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2795
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4b

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2796
    const/4 v4, 0x0

    .line 2797
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz p1, :cond_24

    .line 2798
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2799
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_1f

    .line 2800
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_45

    .line 2813
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2800
    return-void

    .line 2802
    :cond_1f
    :try_start_1f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    move-object v4, v6

    .line 2804
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, v4, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V

    .line 2805
    .end local v4    # "task":Lcom/android/server/wm/Task;
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_45

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2808
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 2809
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_40

    .line 2810
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_4b

    .line 2813
    .end local v3    # "tm":Landroid/telecom/TelecomManager;
    :cond_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2814
    nop

    .line 2815
    return-void

    .line 2805
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callingUid":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "isSystemCaller":Z
    throw v4
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 2813
    .restart local v0    # "callingUid":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "isSystemCaller":Z
    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2814
    throw v3
.end method

.method public stopSystemLockTaskMode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2758
    const-string/jumbo v0, "stopSystemLockTaskMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2759
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    .line 2760
    return-void
.end method

.method public supportMultipleTask(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 7722
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    .line 7723
    if-nez p1, :cond_9

    .line 7724
    const-string v1, "android"

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 7723
    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inMultipleTaskWhiteList(Ljava/lang/String;)Z

    move-result v0

    .line 7722
    return v0
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 3918
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 3919
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 3918
    return v0
.end method

.method public supportsSplitScreen(Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 7699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7700
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7702
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    .line 7703
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_40
    .catchall {:try_start_9 .. :try_end_15} :catchall_3b

    .line 7704
    .local v4, "inBlackList":Z
    if-eqz v4, :cond_1b

    .line 7714
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7704
    return v3

    .line 7706
    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x400

    invoke-interface {v5, p1, v6, v7, v0}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 7708
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_3a

    .line 7709
    iget v6, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 7710
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v6
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_40
    .catchall {:try_start_1b .. :try_end_33} :catchall_3b

    if-eqz v6, :cond_36

    :cond_35
    const/4 v3, 0x1

    .line 7714
    :cond_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7709
    return v3

    .line 7708
    .end local v4    # "inBlackList":Z
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3a
    goto :goto_41

    .line 7714
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7715
    throw v3

    .line 7712
    :catch_40
    move-exception v4

    .line 7714
    :goto_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7715
    nop

    .line 7716
    return v3
.end method

.method public suppressResizeConfigChanges(Z)V
    .registers 5
    .param p1, "suppress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3778
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string/jumbo v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3780
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3781
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 3782
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3783
    return-void

    .line 3782
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public takeTaskSnapshot(I)Landroid/window/TaskSnapshot;
    .registers 9
    .param p1, "taskId"    # I

    .line 3999
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "takeTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4002
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_63

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4003
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4005
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_35

    .line 4009
    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/TaskSnapshotController;->captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;

    move-result-object v4

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_5d

    .line 4013
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4009
    return-object v4

    .line 4006
    :cond_35
    :goto_35
    :try_start_35
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "takeTaskSnapshot: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found or not visible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_5d

    .line 4013
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4007
    return-object v4

    .line 4011
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "taskId":I
    throw v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    .line 4013
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "taskId":I
    :catchall_63
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4014
    throw v2
.end method

.method public unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/IWindowSecureChangeListener;

    .line 3270
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->removeSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 3271
    return-void
.end method

.method public unhandledBack()V
    .registers 5

    .line 2355
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string/jumbo v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2c

    .line 2361
    .local v1, "origId":J
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2362
    .local v3, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1d

    .line 2363
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->unhandledBackLocked()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_26

    .line 2366
    .end local v3    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_1d
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    nop

    .line 2368
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2369
    return-void

    .line 2366
    .restart local v1    # "origId":J
    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2368
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;

    .line 3821
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v0

    .line 3822
    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiActivityController;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    .line 3823
    return-void
.end method

.method public unregisterAnrController(Landroid/app/AnrController;)V
    .registers 4
    .param p1, "controller"    # Landroid/app/AnrController;

    .line 2483
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2484
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2485
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2486
    return-void

    .line 2485
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 3259
    const-string/jumbo v0, "unregisterTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3260
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3261
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 13
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "event"    # I

    .line 5121
    const/4 v0, 0x0

    .line 5122
    .local v0, "taskRoot":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5123
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_f

    .line 5124
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5125
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_f

    .line 5126
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5130
    .end local v2    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 5130
    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5133
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5135
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPeriodicCleaner:Lcom/android/server/am/PeriodicCleanerInternalStub;

    if-eqz v4, :cond_4b

    const/4 v3, 0x1

    if-ne p2, v3, :cond_4b

    .line 5136
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5137
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5138
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFullScreen()Z

    move-result v9

    .line 5136
    move v8, p2

    invoke-interface/range {v4 .. v9}, Lcom/android/server/am/PeriodicCleanerInternalStub;->reportEvent(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 5141
    :cond_4b
    return-void
.end method

.method public updateAssetConfiguration(Ljava/util/List;Z)V
    .registers 7
    .param p2, "updateFrameworkRes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;Z)V"
        }
    .end annotation

    .line 4711
    .local p1, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4712
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseAssetConfigurationSeq()I

    move-result v1

    .line 4714
    .local v1, "assetSeq":I
    if-eqz p2, :cond_16

    .line 4715
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 4716
    .local v2, "newConfig":Landroid/content/res/Configuration;
    iput v1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 4717
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 4722
    .end local v2    # "newConfig":Landroid/content/res/Configuration;
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_2a

    .line 4723
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 4724
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowProcessController;->updateAssetConfiguration(I)V

    .line 4722
    .end local v3    # "wpc":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 4726
    .end local v1    # "assetSeq":I
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4727
    return-void

    .line 4726
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9
    .param p1, "component"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resumed"    # Z

    .line 5090
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5091
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5092
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5090
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5093
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5094
    return-void
.end method

.method public updateCastActivityConfig(Z)V
    .registers 9
    .param p1, "finishCastActivity"    # Z

    .line 7439
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 7440
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7441
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCastRotationMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 7442
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "exitCastMode"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7445
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7446
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 7447
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v3, :cond_2e

    .line 7448
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7451
    :cond_2e
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFinishCastActivity:Z

    .line 7452
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7454
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7455
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7456
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7457
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 15
    .param p1, "values"    # Landroid/content/res/Configuration;

    .line 3924
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3927
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 3928
    const-string v1, "ActivityTaskManager"

    const-string v3, "Skip updateConfiguration because mWindowManager isn\'t set"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3932
    :cond_21
    if-nez p1, :cond_28

    .line 3934
    :try_start_23
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    move-object p1, v1

    .line 3937
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3939
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3937
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_68

    move-wide v11, v3

    .line 3943
    .local v11, "origId":J
    if-eqz p1, :cond_46

    .line 3944
    :try_start_43
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 3946
    :cond_46
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x2710

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 3949
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_62

    if-eqz v1, :cond_5a

    const/4 v2, 0x1

    .line 3951
    :cond_5a
    :try_start_5a
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_68

    .line 3949
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3951
    :catchall_62
    move-exception v1

    :try_start_63
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3952
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    throw v1

    .line 3953
    .end local v11    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z

    .line 4534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "deferResume"    # Z

    .line 4540
    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 11
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"    # Z
    .param p4, "persistent"    # Z
    .param p5, "userId"    # I
    .param p6, "deferResume"    # Z
    .param p7, "result"    # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 4578
    const/4 v0, 0x0

    .line 4579
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 4581
    .local v1, "kept":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 4583
    if-eqz p1, :cond_f

    .line 4584
    :try_start_7
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result v2

    move v0, v2

    goto :goto_f

    .line 4591
    :catchall_d
    move-exception v2

    goto :goto_17

    .line 4587
    :cond_f
    :goto_f
    if-nez p6, :cond_1b

    .line 4588
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_d

    move v1, v2

    goto :goto_1b

    .line 4591
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4592
    throw v2

    .line 4591
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4592
    nop

    .line 4594
    if-eqz p7, :cond_2a

    .line 4595
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 4596
    if-nez v1, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    iput-boolean v2, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 4598
    :cond_2a
    return v1
.end method

.method updateCpuStats()V
    .registers 4

    .line 5086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5087
    return-void
.end method

.method updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I
    .registers 33
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "initLocale"    # Z
    .param p3, "persistent"    # Z
    .param p4, "userId"    # I

    .line 4605
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4606
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 4607
    .local v2, "changes":I
    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 4608
    return v3

    .line 4611
    :cond_17
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2d

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x3743f29c

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v3

    invoke-static {v7, v8, v3, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4613
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_2d
    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeConfigurationChanged(I)V

    .line 4614
    const/16 v10, 0x42

    iget v11, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v12, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v13, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v14, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v15, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v4, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    move/from16 v16, v4

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    move/from16 v17, v4

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    move/from16 v18, v4

    iget v4, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v19, v4

    iget v4, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v20, v4

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v22, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v23, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v24, v4

    iget v4, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v4

    iget v4, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v26, v4

    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v27, v4

    invoke-static/range {v10 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    .line 4634
    if-nez p2, :cond_b8

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b8

    iget-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v4, :cond_b8

    .line 4635
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 4636
    .local v4, "locales":Landroid/os/LocaleList;
    const/4 v7, 0x0

    .line 4637
    .local v7, "bestLocaleIndex":I
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v6, :cond_a6

    .line 4638
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v8, :cond_9c

    .line 4639
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 4641
    :cond_9c
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4643
    :cond_a6
    nop

    .line 4644
    invoke-virtual {v4, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 4643
    const-string/jumbo v9, "persist.sys.locale"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    invoke-static {v4, v7}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 4648
    .end local v4    # "locales":Landroid/os/LocaleList;
    .end local v7    # "bestLocaleIndex":I
    :cond_b8
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v7

    iput v7, v4, Landroid/content/res/Configuration;->seq:I

    .line 4650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config changes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 4655
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 4657
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    .line 4658
    .local v4, "ac":Lcom/android/internal/policy/AttributeCache;
    if-eqz v4, :cond_105

    .line 4659
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 4666
    :cond_105
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 4668
    if-eqz p3, :cond_12d

    invoke-static {v2}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 4669
    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;-><init>()V

    .line 4671
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/content/res/Configuration;

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4669
    invoke-static {v7, v0, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4672
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4675
    .end local v7    # "msg":Landroid/os/Message;
    :cond_12d
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v7

    .line 4676
    .local v7, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "i":I
    :goto_138
    if-ltz v8, :cond_16b

    .line 4677
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 4678
    .local v9, "pid":I
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowProcessController;

    .line 4679
    .local v10, "app":Lcom/android/server/wm/WindowProcessController;
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v11, :cond_163

    iget-object v11, v10, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x1e052edc

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v3

    aput-object v12, v15, v6

    invoke-static {v13, v14, v3, v5, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4681
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_163
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4676
    .end local v9    # "pid":I
    .end local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v8, v8, -0x1

    goto :goto_138

    .line 4685
    .end local v8    # "i":I
    :cond_16b
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Landroid/content/res/ThemeManagerStub;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 4687
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->handleQSOnConfigureChanged(II)V

    .line 4689
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4691
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 4689
    invoke-static {v3, v5, v6, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4692
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4695
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4697
    return v2
.end method

.method public updateLockTaskFeatures(II)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 4033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4034
    .local v0, "callingUid":I
    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 4035
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v3, "updateLockTaskFeatures()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4040
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_3e

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0xa0facdd

    const-string v7, "Allowing features %d:0x%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4042
    .end local v2    # "protoLogParam0":J
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4043
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4044
    return-void

    .line 4043
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 2819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2820
    .local v0, "callingUid":I
    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 2821
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v3, "updateLockTaskPackages()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2825
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_3e

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2aa97a22

    const-string v7, "Allowlisting %d:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2826
    .end local v2    # "protoLogParam0":J
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2827
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2828
    return-void

    .line 2827
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateMiuiClipAnimation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7755
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_2a

    .line 7756
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setLoadMiuiClipAnimation(IZ)V

    .line 7757
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    const/4 v5, 0x0

    iget-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->mIsClipWithScale:Z

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->mClipToRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mClipFromRect:Landroid/graphics/Rect;

    iget v9, p1, Lcom/android/server/wm/ActivityRecord;->mClipToCornerRadius:F

    iget v10, p1, Lcom/android/server/wm/ActivityRecord;->mClipFromCornerRadius:F

    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->mClipInterpolatorId:I

    iget v12, p1, Lcom/android/server/wm/ActivityRecord;->mClipDuration:F

    const/16 v13, 0x6b

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->overrideActivityTransitionClipWindow(IZZLandroid/graphics/Rect;Landroid/graphics/Rect;FFIFI)V

    .line 7761
    :cond_2a
    return-void
.end method

.method updateMiuiRoundAnimation(Lcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7764
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_24

    .line 7765
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setLoadMiuiRoundAnimation(IZ)V

    .line 7766
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mRoundToCornerRadius:F

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->mRoundFromCornerRadius:F

    iget v8, p1, Lcom/android/server/wm/ActivityRecord;->mRoundInterpolatorId:I

    iget v9, p1, Lcom/android/server/wm/ActivityRecord;->mRoundDuration:F

    const/16 v10, 0x6c

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/WindowManagerService;->overrideActivityTransitionRoundWindow(IZFFIFI)V

    .line 7770
    :cond_24
    return-void
.end method

.method updateMiuiRoundedViewAnimationInfo(Lcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7238
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7239
    .local v0, "orientation":I
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 7240
    .local v1, "scaleBackToScreenCenter":Z
    :goto_15
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_25

    .line 7241
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setLoadRoundedViewAnimation(ZZZI)V

    goto :goto_34

    .line 7242
    :cond_25
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_34

    .line 7243
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v3, v2, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setLoadRoundedViewAnimation(ZZZI)V

    .line 7245
    :cond_34
    :goto_34
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mThumbnailGraphicBuffer:Landroid/hardware/HardwareBuffer;

    .line 7246
    .local v2, "iconGraphicBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v8, Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mStartX:I

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartY:I

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartX:I

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mWidth:I

    add-int/2addr v5, v6

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mStartY:I

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->mHeight:I

    add-int/2addr v6, v7

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7247
    .local v8, "mRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/wm/ActivityRecord;->mRadius:I

    iget v10, p1, Lcom/android/server/wm/ActivityRecord;->mForeGroundColor:I

    iget-object v11, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationReenterStartedCallback:Landroid/os/IRemoteCallback;

    iget-object v12, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationReenterFinishedCallback:Landroid/os/IRemoteCallback;

    .line 7249
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v13

    .line 7247
    move-object v7, v2

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiRoundedViewAnimationInfo(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;I)V

    .line 7250
    return-void
.end method

.method updateOomAdj()V
    .registers 3

    .line 5081
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5082
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5083
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .registers 14
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .line 4545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4547
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_28

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4550
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 4551
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 4553
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 4555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4556
    nop

    .line 4557
    return-void

    .line 4553
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1    # "values":Landroid/content/res/Configuration;
    .end local p2    # "userId":I
    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 4555
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1    # "values":Landroid/content/res/Configuration;
    .restart local p2    # "userId":I
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4556
    throw v2
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "stoppedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5108
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-wide v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    .line 5115
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5116
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 5118
    :cond_24
    return-void
.end method

.method public updateShouldDeclineIfNeed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1082
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->shouldDeclineIfNeed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method updateSleepIfNeededLocked()V
    .registers 9

    .line 5035
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5036
    .local v0, "shouldSleep":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5037
    .local v2, "wasSleeping":Z
    const/4 v3, 0x0

    .line 5039
    .local v3, "updateOomAdj":Z
    const-string v4, "ActivityTaskManager"

    const/16 v5, 0xe

    if-nez v0, :cond_3c

    .line 5041
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5046
    if-eqz v2, :cond_33

    .line 5047
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5048
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5050
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5051
    iput v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5052
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5055
    :cond_33
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 5056
    if-eqz v2, :cond_6b

    .line 5057
    const/4 v3, 0x1

    goto :goto_6b

    .line 5059
    :cond_3c
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v6, :cond_6b

    if-eqz v0, :cond_6b

    .line 5061
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5063
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5064
    invoke-static {v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5066
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_58

    .line 5067
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5069
    :cond_58
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5070
    const-string v1, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    .line 5072
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5073
    const/4 v3, 0x1

    .line 5075
    :cond_6b
    :goto_6b
    if-eqz v3, :cond_70

    .line 5076
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 5078
    :cond_70
    return-void
.end method

.method updateTopApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "topResumedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 5097
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_a

    .line 5099
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_a
    nop

    .line 5100
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 5101
    return-void
.end method
