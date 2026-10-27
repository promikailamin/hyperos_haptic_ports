.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$Builder;,
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ActivityTaskHandler;,
        Lcom/android/server/wm/Task$ReparentMoveRootTaskMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_LAST_SNAPSHOT_BUFFER_SIZE:Ljava/lang/String; = "last_snapshot_buffer_size"

.field private static final ATTR_LAST_SNAPSHOT_CONTENT_INSETS:Ljava/lang/String; = "last_snapshot_content_insets"

.field private static final ATTR_LAST_SNAPSHOT_TASK_SIZE:Ljava/lang/String; = "last_snapshot_task_size"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_REBORN_CHILDREN_SIZE:Ljava/lang/String; = "reborn_children_size"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field private static final DEFAULT_MIN_TASK_SIZE_DP:I = 0xdc

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final LAYER_RANK_INVISIBLE:I = -0x1

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_ROOT_TASK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_ROOT_TASK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_ROOT_TASK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_REBORN_ACTIVITY:Ljava/lang/String; = "reborn_activity"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field public static final WINDOWING_MODE_HOVER_DEFAULT:I = -0x1

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field private static final sTmpBounds:Landroid/graphics/Rect;

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field alreadySetFreeformBounds:Z

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field public behindAppLockPkg:Ljava/lang/String;

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field private mAdjustedFreeFromBounds:Landroid/graphics/Rect;

.field mAffiliatedTaskId:I

.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mBackGestureStarted:Z

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private mDeferTaskAppear:Z

.field mDisplayCompatAvailable:Z

.field mDisplayCompatPolicy:I

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceShowForAllUsers:Z

.field mFreeFormLaunchBoundsFromOptions:Landroid/graphics/Rect;

.field mFreeFormShadowShow:Z

.field mFreeFormShouldBeAvoided:Z

.field public mFreeform2Full:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasBeenVisible:Z

.field public mHoverLastWindowMode:I

.field mInRemoveTask:Z

.field mInResumeTopActivity:Z

.field public mIsBack:Z

.field mIsCirculatedToVirtual:Z

.field mIsEffectivelySystemApp:Z

.field mIsSplitMode:Z

.field public mLastDisplayId:I

.field private mLastFreeFromBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field mLastSurfaceShowing:Z

.field final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field mLastTimeMoved:J

.field mLaunchCookie:Landroid/os/IBinder;

.field mLaunchFullScreenInDesktopMode:Z

.field mLaunchMiniFreeformFromFull:Z

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field private mMiuiIsImeTarget:Z

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mRemoveWithTaskOrganizer:Z

.field private mRemoving:Z

.field mResizeMode:I

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field private mRotation:I

.field private mShadowRadius:F

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field public originatingUid:I

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-nHv3hp3munhu4Gy96iX2y0sRuI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4uoiBIGNMTDRqeJdiWkAelWVBX8(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nTho283cVKQ1bb86OUzh4bK9Cc(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjYN3ut3_eNan1AWUCfq2whHyXw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TwcYFtyP_7sSBwZAOJGxcsSiZJc(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UqOZnD1FgFOGmAuBU4uaaelTkDg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjBpDLSo_osTHUebmVR0R-BqIrQ(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPzn7AyFC3Orcy8ROEU4TPRxugk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 469
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 584
    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    .line 623
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .registers 58
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p15, "lastTimeMoved"    # J
    .param p17, "neverRelinquishIdentity"    # Z
    .param p18, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "_lastSnapshotData"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "callingUid"    # I
    .param p24, "callingPackage"    # Ljava/lang/String;
    .param p25, "callingFeatureId"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "info"    # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "_createdByOrganizer"    # Z
    .param p36, "_launchCookie"    # Landroid/os/IBinder;
    .param p37, "_deferTaskAppear"    # Z
    .param p38, "_removeWithTaskOrganizer"    # Z

    .line 722
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p26

    move-object/from16 v4, p32

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p35

    invoke-direct {v0, v7, v5, v8, v6}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 332
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 336
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 337
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    .line 338
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    .line 339
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    .line 340
    iput-object v5, v0, Lcom/android/server/wm/Task;->mFreeFormLaunchBoundsFromOptions:Landroid/graphics/Rect;

    .line 341
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mFreeFormShouldBeAvoided:Z

    .line 347
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mLaunchFullScreenInDesktopMode:Z

    .line 352
    const/4 v10, -0x1

    iput v10, v0, Lcom/android/server/wm/Task;->mHoverLastWindowMode:I

    .line 378
    iput-object v5, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 379
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 390
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 429
    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 431
    iput v10, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 439
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 447
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 454
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 460
    iput v10, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 462
    iput v10, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 474
    iput-object v5, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 491
    iput v10, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 494
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 497
    new-instance v11, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v11}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 506
    iput v10, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 509
    iput v10, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 529
    iput v10, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 532
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 534
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 556
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 559
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 568
    iput v6, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 577
    new-instance v11, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v11}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 587
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 590
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 625
    new-instance v11, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v11, v0, v5}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$FindRootHelper-IA;)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 701
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 707
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 724
    iput v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 725
    move/from16 v5, p12

    iput v5, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 726
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 727
    move/from16 v11, p27

    iput-boolean v11, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 728
    if-eqz p18, :cond_a3

    .line 729
    move-object/from16 v12, p18

    goto :goto_a8

    .line 730
    :cond_a3
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v12}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_a8
    iput-object v12, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 731
    if-eqz p19, :cond_af

    .line 732
    move-object/from16 v12, p19

    goto :goto_b4

    .line 733
    :cond_af
    new-instance v12, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v12}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_b4
    iput-object v12, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 735
    const/4 v12, -0x2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 736
    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 737
    move-object/from16 v13, p5

    iput-object v13, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 738
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 739
    move-object/from16 v15, p33

    iput-object v15, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 740
    move-object/from16 v10, p34

    iput-object v10, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 741
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 742
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 743
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 744
    move/from16 v5, p9

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 745
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 746
    move/from16 v5, p10

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 747
    move/from16 v5, p11

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 748
    move/from16 v5, p29

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 749
    move/from16 v5, p13

    iput v5, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 751
    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 752
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 753
    move/from16 v5, p17

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 754
    move/from16 v6, p20

    iput v6, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 755
    move/from16 v5, p21

    iput v5, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 756
    move/from16 v5, p22

    iput v5, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 757
    move/from16 v5, p23

    iput v5, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 758
    move-object/from16 v5, p24

    iput-object v5, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 759
    move-object/from16 v5, p25

    iput-object v5, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 760
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 763
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_127

    .line 764
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    .line 768
    :cond_127
    if-eqz v4, :cond_134

    .line 769
    invoke-direct {v0, v2, v4}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 770
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v3, p30

    move/from16 v2, p31

    goto :goto_13e

    .line 772
    :cond_134
    iput-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 773
    move/from16 v3, p30

    iput v3, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 774
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 776
    :goto_13e
    iget-object v2, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 777
    new-instance v2, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    .line 778
    iget-object v2, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 780
    move-object/from16 v2, p36

    iput-object v2, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    .line 781
    move/from16 v3, p37

    iput-boolean v3, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 782
    move/from16 v2, p38

    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v17

    if-eqz v17, :cond_172

    const/4 v0, -0x1

    goto :goto_178

    :cond_172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v16

    move/from16 v0, v16

    :goto_178
    invoke-static {v1, v0}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V
    .registers 40

    invoke-direct/range {p0 .. p38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z

    .line 6970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 6973
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6974
    return-void
.end method

.method private autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z
    .registers 3
    .param p1, "oldParentFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 1754
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    if-eqz p1, :cond_19

    .line 1755
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1754
    :goto_1c
    return v0
.end method

.method private canBeOrganized()Z
    .registers 5

    .line 4934
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_12

    .line 4936
    :cond_11
    return v1

    .line 4940
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1e

    goto :goto_2e

    .line 4945
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4946
    .local v0, "parentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2d

    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2d

    move v1, v2

    :cond_2d
    return v1

    .line 4941
    .end local v0    # "parentTask":Lcom/android/server/wm/Task;
    :cond_2e
    :goto_2e
    return v2
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2059
    const/4 v0, 0x1

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_50

    .line 2063
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 2064
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2065
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 2066
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 2067
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    :cond_37
    move v0, v3

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 2066
    :goto_3a
    return v0

    .line 2069
    :cond_3b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_40

    if-nez v1, :cond_45

    :cond_40
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4e

    if-nez v1, :cond_4e

    .line 2072
    :cond_45
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v3

    goto :goto_4f

    :cond_4e
    :goto_4e
    nop

    .line 2069
    :goto_4f
    return v0

    .line 2061
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_50
    :goto_50
    return v0
.end method

.method private canReuseAsLeafTask()Z
    .registers 5

    .line 6866
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    .line 6872
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 6873
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    .line 6874
    .local v2, "activityType":I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 6867
    .end local v0    # "windowingMode":I
    .end local v2    # "activityType":I
    :cond_1f
    :goto_1f
    return v1
.end method

.method private canSpecifyOrientation()Z
    .registers 5

    .line 3698
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 3699
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 3700
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 809
    .local p1, "oldParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 810
    return-void

    .line 814
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v1

    .line 818
    .local v2, "isVoiceSession":Z
    :goto_16
    if-eqz v2, :cond_21

    .line 820
    :try_start_18
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v3, v4}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 822
    goto :goto_21

    .line 821
    :catch_20
    move-exception v0

    .line 824
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v2, :cond_34

    .line 827
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 835
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 836
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 837
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 838
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_61

    .line 839
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 840
    .local v3, "c":Landroid/content/res/Configuration;
    iget-object v4, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 841
    iget-object v1, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 842
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 847
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v3    # "c":Landroid/content/res/Configuration;
    :cond_61
    const-string v0, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method private clearPinnedTaskIfNeed()V
    .registers 3

    .line 1760
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1761
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1763
    :cond_15
    return-void
.end method

.method private clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "finishCount"    # [I

    .line 1840
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1841
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 1843
    :cond_a
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v1, p3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>([I)V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 1846
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 1843
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1847
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 1848
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1852
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v2, :cond_38

    const/high16 v2, 0x20000000

    and-int/2addr v2, p2

    if-nez v2, :cond_38

    .line 1854
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1855
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_38

    .line 1856
    const/4 v2, 0x0

    const-string v3, "clear-task-top"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1860
    :cond_38
    return-object v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    .line 1441
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1443
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 1444
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1446
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1447
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1448
    return-void
.end method

.method private computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2544
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 2546
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2547
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2548
    .local v1, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2549
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    nop

    .line 2559
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2564
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 2565
    .local v3, "offsetTop":I
    if-lez v3, :cond_2c

    .line 2566
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2568
    :cond_2c
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .registers 4
    .param p1, "maxPosition"    # I

    .line 3041
    :goto_0
    if-lez p1, :cond_15

    .line 3042
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3043
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3044
    .local v1, "canShow":Z
    if-nez v1, :cond_11

    .line 3045
    goto :goto_15

    .line 3047
    :cond_11
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 3048
    goto :goto_0

    .line 3049
    :cond_15
    :goto_15
    return p1
.end method

.method private computeMinUserPosition(II)I
    .registers 5
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 3023
    :goto_0
    if-ge p1, p2, :cond_15

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3025
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3026
    .local v1, "canShow":Z
    if-eqz v1, :cond_11

    .line 3027
    goto :goto_15

    .line 3029
    :cond_11
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 3030
    goto :goto_0

    .line 3031
    :cond_15
    :goto_15
    return p1
.end method

.method private static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 8
    .param p0, "pipCandidate"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "toFrontTask"    # Lcom/android/server/wm/Task;
    .param p2, "toFrontActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .line 6128
    if-nez p0, :cond_3

    .line 6129
    return-void

    .line 6131
    :cond_3
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6133
    return-void

    .line 6135
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6137
    return-void

    .line 6139
    :cond_13
    const/4 v0, 0x1

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 6140
    .local v1, "isTransient":Z
    :goto_1f
    if-eqz p1, :cond_26

    .line 6141
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6142
    .local v2, "targetRootTask":Lcom/android/server/wm/Task;
    :goto_2a
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz v1, :cond_35

    .line 6146
    :cond_34
    return-void

    .line 6148
    :cond_35
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 6150
    return-void
.end method

.method static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "topTask"    # Lcom/android/server/wm/Task;

    .line 6103
    if-nez p0, :cond_4

    .line 6104
    const/4 v0, 0x0

    return-object v0

    .line 6106
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 6107
    .local v0, "candidate":[Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>([Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 6117
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;[I)Z
    .registers 7
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "finishCount"    # [I

    .line 1866
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1868
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v2, 0x0

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1870
    .local v1, "opts":Landroid/app/ActivityOptions;
    if-eqz v1, :cond_1b

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 1873
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1875
    :cond_1b
    aget v3, p2, v2

    add-int/2addr v3, v0

    aput v3, p2, v2

    .line 1876
    const-string v0, "clear-task-stack"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1879
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :cond_25
    return v2
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 6263
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_25

    .line 6265
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 6267
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 6270
    goto :goto_1e

    .line 6268
    :catch_1d
    move-exception v0

    .line 6271
    :goto_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 6272
    const/4 v0, 0x1

    return v0

    .line 6263
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 6246
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_13

    .line 6247
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_28

    .line 6254
    :cond_13
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6255
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 6254
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 6257
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 6258
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 6260
    .end local v0    # "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    :goto_28
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 10
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "rootTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "overlapPxX"    # I
    .param p3, "overlapPxY"    # I

    .line 2583
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 2589
    :cond_f
    const/4 v0, 0x0

    .line 2591
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2592
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    .line 2593
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_36

    .line 2594
    :cond_27
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_36

    .line 2595
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2597
    :cond_36
    :goto_36
    const/4 v2, 0x0

    .line 2598
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2599
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_4e

    .line 2600
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_5d

    .line 2601
    :cond_4e
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_5d

    .line 2602
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2604
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2605
    return-void

    .line 2584
    .end local v0    # "horizontalDiff":I
    .end local v1    # "overlapLR":I
    .end local v2    # "verticalDiff":I
    .end local v3    # "overlapTB":I
    :cond_61
    :goto_61
    return-void
.end method

.method static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .registers 2
    .param p0, "token"    # Landroid/window/WindowContainerToken;

    .line 787
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .registers 9
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "suggestedPosition"    # I

    .line 3053
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 3055
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 3058
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    .line 3059
    .local v2, "minPosition":I
    :cond_11
    move v3, v2

    .line 3060
    .local v3, "maxPosition":I
    if-lez v1, :cond_1e

    .line 3061
    add-int/lit8 v4, v1, -0x1

    if-eqz v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v4

    :goto_1d
    move v3, v4

    .line 3069
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_34

    instance-of v4, p1, Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_48

    .line 3071
    :cond_34
    :goto_34
    if-le v3, v2, :cond_48

    .line 3072
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_48

    .line 3073
    :cond_45
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 3078
    :cond_48
    :goto_48
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4f

    if-nez v2, :cond_4f

    .line 3079
    return v4

    .line 3080
    :cond_4f
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_59

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_59

    .line 3081
    return v4

    .line 3085
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 3086
    add-int/lit8 v3, v3, 0x1

    .line 3090
    :cond_61
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 12
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "foundTop"    # [Z

    .line 3337
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_f

    goto :goto_46

    .line 3340
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3341
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_16

    .line 3342
    return-void

    .line 3344
    :cond_16
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_21

    .line 3345
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3346
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3349
    :cond_21
    sget-object v1, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 3350
    .local v1, "visibleFrame":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3351
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3352
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3353
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3352
    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3355
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3356
    return-void

    .line 3338
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "visibleFrame":Landroid/graphics/Rect;
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_46
    :goto_46
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "allowFocusSelf"    # Z

    .line 2936
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2937
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 2938
    const/4 v1, 0x0

    return-object v1

    .line 2944
    :cond_8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2952
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2953
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2955
    :cond_22
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .registers 2
    .param p1, "reportOut"    # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1539
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1541
    return-void
.end method

.method private getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;
    .registers 5
    .param p1, "top"    # Lcom/android/server/wm/Task;

    .line 4208
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4209
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4210
    .local v1, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1b

    .line 4211
    :cond_13
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v0, v2}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_1c

    :cond_1b
    :goto_1b
    nop

    .line 4210
    :goto_1c
    return-object v0
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 7163
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getRelativePosition()Landroid/graphics/Point;
    .registers 2

    .line 7097
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7098
    .local v0, "position":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 7099
    return-object v0
.end method

.method private getShadowRadius(Z)F
    .registers 6
    .param p1, "taskIsFocused"    # Z

    .line 5146
    const/4 v0, 0x0

    .line 5149
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 5151
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-eqz v1, :cond_1f

    .line 5152
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 5153
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowSettings()V

    .line 5154
    const-string v1, "ActivityTaskManager"

    const-string v3, "inPinnedWindowingMode setGlobalShadowSettings"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_1f
    const/4 v0, 0x5

    .line 5169
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_27

    .line 5170
    return v2

    .line 5173
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 5165
    :cond_35
    return v2
.end method

.method private hasVisibleChildren()Z
    .registers 3

    .line 5135
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1b

    .line 5139
    :cond_e
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 5136
    :cond_1b
    :goto_1b
    return v1
.end method

.method private inFrontOfStandardRootTask()Z
    .registers 7

    .line 6277
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6278
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6279
    return v1

    .line 6281
    :cond_8
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 6282
    .local v3, "hasFound":[Z
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 6294
    .local v4, "rootTaskBehind":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method private isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 3568
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 3569
    return v0

    .line 3571
    :cond_4
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"    # I
    .param p2, "notTop"    # Landroid/os/IBinder;

    .line 3643
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    if-eq v0, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3622
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_e

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$applyAnimationUnchecked$16(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "sources"    # Ljava/util/ArrayList;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 3995
    if-nez p0, :cond_3

    return-void

    .line 3996
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 3997
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3996
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3999
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method static synthetic lambda$clearTopActivities$4([ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "finishCount"    # [I
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1845
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;[I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ensureActivitiesVisible$23(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5
    .param p0, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "configChanges"    # I
    .param p2, "preserveWindows"    # Z
    .param p3, "notifyClients"    # Z
    .param p4, "task"    # Lcom/android/server/wm/Task;

    .line 5720
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 5722
    return-void
.end method

.method static synthetic lambda$fillTaskInfo$17(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "info"    # Landroid/app/TaskInfo;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4126
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4127
    return-void
.end method

.method static synthetic lambda$findEnterPipOnTaskSwitchCandidate$26([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 6
    .param p0, "candidate"    # [Lcom/android/server/wm/ActivityRecord;
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 6109
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6110
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6111
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6112
    aput-object v0, p0, v1

    .line 6113
    const/4 v1, 0x1

    return v1

    .line 6115
    :cond_1b
    return v1
.end method

.method static synthetic lambda$finishIfVoiceTask$27(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "tr"    # Lcom/android/server/wm/Task;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6248
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 6249
    :cond_5
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6250
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 6251
    return-void
.end method

.method static synthetic lambda$forAllLeafTasksAndLeafTaskFragments$15(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V
    .registers 7
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "traverseTopToBottom"    # Z
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 3771
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3772
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3773
    return-void

    .line 3777
    :cond_a
    const/4 v0, 0x0

    .line 3778
    .local v0, "consumed":Z
    if-eqz p1, :cond_39

    .line 3779
    iget-object v1, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_38

    .line 3780
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3781
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 3782
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_35

    .line 3783
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 3784
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3785
    const/4 v0, 0x1

    .line 3779
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .end local v1    # "i":I
    :cond_38
    goto :goto_63

    .line 3789
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 3790
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3791
    .restart local v2    # "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 3792
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_60

    .line 3793
    :cond_54
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_60

    if-nez v0, :cond_60

    .line 3794
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3795
    const/4 v0, 0x1

    .line 3789
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 3799
    .end local v1    # "i":I
    :cond_63
    :goto_63
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$8(Lcom/android/server/wm/Task;[I)V
    .registers 4
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "count"    # [I

    .line 2918
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$31(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "matcher"    # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p1, "activities"    # Ljava/util/ArrayList;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6772
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6773
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6775
    :cond_f
    return-void
.end method

.method static synthetic lambda$getStartingWindowInfo$19(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 4262
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method static synthetic lambda$getTopFullscreenActivity$11(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3648
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3649
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method static synthetic lambda$getTopRealVisibleActivity$13(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3668
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$getTopVisibleActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3659
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$getTopWaitSplashScreenActivity$14(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3673
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static synthetic lambda$goToSleepIfPossible$22(Z[ILcom/android/server/wm/TaskFragment;)V
    .registers 5
    .param p0, "shuttingDown"    # Z
    .param p1, "sleepInProgress"    # [I
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 5656
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->sleepIfPossible(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5657
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 5659
    :cond_d
    return-void
.end method

.method static synthetic lambda$navigateUpTo$29(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "dest"    # Landroid/content/ComponentName;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 6350
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6351
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 6350
    :goto_1f
    return v0
.end method

.method static synthetic lambda$navigateUpTo$30(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 12
    .param p0, "finalParent"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultCodeHolder"    # [I
    .param p2, "resultDataHolder"    # [Landroid/content/Intent;
    .param p3, "resultGrantsHolder"    # [Lcom/android/server/uri/NeededUriGrants;
    .param p4, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 6391
    if-ne p4, p0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 6393
    :cond_4
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string/jumbo v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 6396
    aput v0, p1, v0

    .line 6397
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 6398
    return v0
.end method

.method static synthetic lambda$onConfigurationChanged$5(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2369
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    .line 2370
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setHiddenByKeyguard(Z)V

    .line 2372
    :cond_e
    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$6(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2384
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode()V

    .line 2385
    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$7(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatModeWithoutConfigChange()V

    .line 2391
    return-void
.end method

.method static synthetic lambda$resumeTopActivityInnerLocked$24(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V
    .registers 9
    .param p0, "topFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p1, "resumed"    # [Z
    .param p2, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "deferPause"    # Z
    .param p5, "f"    # Lcom/android/server/wm/TaskFragment;

    .line 5903
    if-ne p0, p5, :cond_3

    .line 5904
    return-void

    .line 5906
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5907
    return-void

    .line 5909
    :cond_b
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 5910
    return-void
.end method

.method static synthetic lambda$setMainWindowSizeChangeTransaction$20(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "d"    # Landroid/view/SurfaceControl$Transaction;

    .line 5247
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 5248
    return-void
.end method

.method static synthetic lambda$startActivityLocked$25(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 6074
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "window"    # Lcom/android/server/wm/WindowState;

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1530
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$trimIneffectiveInfo$18(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4160
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activityComponent"    # Landroid/content/ComponentName;

    .line 2096
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .registers 16
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 2189
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 2190
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2191
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1f

    .line 2192
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2194
    :cond_1f
    if-nez v0, :cond_38

    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_38

    .line 2195
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2198
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2201
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2202
    .local v2, "prevWinMode":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 2204
    .local v3, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    .line 2205
    .local v4, "wasInPictureInPicture":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2210
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_61

    move v5, v7

    goto :goto_62

    :cond_61
    move v5, v6

    .line 2211
    .local v5, "pipChanging":Z
    :goto_62
    if-eqz v5, :cond_6e

    .line 2212
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_79

    .line 2213
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v8

    if-eq v3, v8, :cond_79

    .line 2214
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2217
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    .line 2218
    .local v8, "newWinMode":I
    if-eq v2, v8, :cond_8e

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_8e

    .line 2219
    invoke-direct {p0, v2, v8}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 2220
    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 2223
    :cond_8e
    if-eq v2, v8, :cond_9e

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_9e

    .line 2224
    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 2225
    iget v9, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v9, v2, v8}, Lcom/android/server/wm/EventLogTags;->writeWmTaskWindowingModeChanged(III)V

    .line 2231
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 2232
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2233
    .local v9, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b5

    .line 2234
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2238
    .end local v9    # "currentBounds":Landroid/graphics/Rect;
    :cond_b5
    if-eqz v5, :cond_e4

    if-eqz v4, :cond_e4

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 2244
    .local v9, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_e4

    iget-object v10, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 2245
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    .line 2246
    invoke-virtual {v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v12, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v13, 0x9

    new-array v13, v13, [F

    .line 2247
    invoke-virtual {v10, v11, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 2251
    .end local v9    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_e4
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2255
    if-ne v8, v7, :cond_f1

    const/4 v9, 0x5

    if-ne v2, v9, :cond_f1

    .line 2256
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v7

    .local v7, "taskOrgChanged":Z
    goto :goto_f5

    .line 2258
    .end local v7    # "taskOrgChanged":Z
    :cond_f1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    move-result v7

    .line 2261
    .restart local v7    # "taskOrgChanged":Z
    :goto_f5
    if-eqz v7, :cond_10b

    .line 2262
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-nez v9, :cond_10b

    .line 2267
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2272
    :cond_10b
    if-nez v7, :cond_110

    .line 2273
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2275
    :cond_110
    return-void
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;

    .line 6702
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6704
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 6705
    return-void
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 1085
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6802
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 6804
    if-eqz p1, :cond_1a

    if-ne p0, p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1a

    .line 6805
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 6808
    :cond_1a
    return-void
.end method

.method static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .registers 58
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .param p1, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 4643
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 4644
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 4645
    .local v3, "affinityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4646
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v5, 0x0

    .line 4647
    .local v5, "realActivity":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 4648
    .local v6, "realActivitySuspended":Z
    const/4 v7, 0x0

    .line 4649
    .local v7, "origActivity":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 4650
    .local v8, "affinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4651
    .local v9, "rootAffinity":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4652
    .local v10, "hasRootAffinity":Z
    const/4 v11, 0x0

    .line 4653
    .local v11, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v12, 0x0

    .line 4654
    .local v12, "rootHasReset":Z
    const/4 v13, 0x0

    .line 4655
    .local v13, "autoRemoveRecents":Z
    const/4 v14, 0x0

    .line 4656
    .local v14, "askedCompatMode":Z
    const/4 v15, 0x0

    .line 4657
    .local v15, "taskType":I
    const/16 v16, 0x0

    .line 4658
    .local v16, "userId":I
    const/16 v17, 0x1

    .line 4659
    .local v17, "userSetupComplete":Z
    const/16 v18, -0x1

    .line 4660
    .local v18, "effectiveUid":I
    const/16 v19, 0x0

    .line 4661
    .local v19, "lastDescription":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 4662
    .local v20, "lastTimeOnTop":J
    const/16 v22, 0x1

    .line 4663
    .local v22, "neverRelinquishIdentity":Z
    const/16 v23, -0x1

    .line 4664
    .local v23, "taskId":I
    move-object/from16 v24, v3

    .end local v3    # "affinityIntent":Landroid/content/Intent;
    .local v24, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4665
    .local v3, "outerDepth":I
    new-instance v25, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v26, v25

    .line 4666
    .local v26, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v25, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    move-object/from16 v27, v25

    .line 4667
    .local v27, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/16 v25, -0x1

    .line 4668
    .local v25, "taskAffiliation":I
    const/16 v28, -0x1

    .line 4669
    .local v28, "prevTaskId":I
    const/16 v29, -0x1

    .line 4670
    .local v29, "nextTaskId":I
    const/16 v30, -0x1

    .line 4671
    .local v30, "callingUid":I
    const-string v31, ""

    .line 4672
    .local v31, "callingPackage":Ljava/lang/String;
    const/16 v32, 0x0

    .line 4673
    .local v32, "callingFeatureId":Ljava/lang/String;
    const/16 v33, 0x4

    .line 4674
    .local v33, "resizeMode":I
    const/16 v34, 0x0

    .line 4675
    .local v34, "supportsPictureInPicture":Z
    const/16 v35, 0x0

    .line 4676
    .local v35, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v36, -0x1

    .line 4677
    .local v36, "minWidth":I
    const/16 v37, -0x1

    .line 4678
    .local v37, "minHeight":I
    const/16 v38, 0x0

    .line 4680
    .local v38, "persistTaskVersion":I
    const/16 v39, 0x0

    .line 4682
    .local v39, "childCount":I
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v40

    move-object/from16 v41, v5

    .end local v5    # "realActivity":Landroid/content/ComponentName;
    .local v41, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x1

    add-int/lit8 v40, v40, -0x1

    move/from16 v42, v15

    move/from16 v43, v16

    move/from16 v44, v17

    move-object/from16 v45, v19

    move-wide/from16 v46, v20

    move/from16 v48, v22

    move/from16 v5, v23

    move/from16 v21, v25

    move/from16 v20, v28

    move/from16 v49, v29

    move/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v52, v32

    move-object/from16 v53, v35

    move/from16 v54, v36

    move/from16 v55, v37

    move-object/from16 v22, v0

    move/from16 v19, v6

    move-object/from16 v17, v11

    move v15, v14

    move/from16 v0, v40

    move-object/from16 v6, v41

    move v11, v10

    move v14, v13

    move-object v10, v9

    move v13, v12

    move/from16 v12, v38

    move-object v9, v8

    move-object v8, v7

    move/from16 v7, v33

    .end local v16    # "userId":I
    .end local v23    # "taskId":I
    .end local v25    # "taskAffiliation":I
    .end local v28    # "prevTaskId":I
    .end local v29    # "nextTaskId":I
    .end local v30    # "callingUid":I
    .end local v31    # "callingPackage":Ljava/lang/String;
    .end local v32    # "callingFeatureId":Ljava/lang/String;
    .end local v33    # "resizeMode":I
    .end local v35    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v36    # "minWidth":I
    .end local v37    # "minHeight":I
    .end local v38    # "persistTaskVersion":I
    .end local v41    # "realActivity":Landroid/content/ComponentName;
    .local v0, "attrNdx":I
    .local v5, "taskId":I
    .local v6, "realActivity":Landroid/content/ComponentName;
    .local v7, "resizeMode":I
    .local v8, "origActivity":Landroid/content/ComponentName;
    .local v9, "affinity":Ljava/lang/String;
    .local v10, "rootAffinity":Ljava/lang/String;
    .local v11, "hasRootAffinity":Z
    .local v12, "persistTaskVersion":I
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .local v17, "windowLayoutAffinity":Ljava/lang/String;
    .local v19, "realActivitySuspended":Z
    .local v20, "prevTaskId":I
    .local v21, "taskAffiliation":I
    .local v22, "intent":Landroid/content/Intent;
    .local v42, "taskType":I
    .local v43, "userId":I
    .local v44, "userSetupComplete":Z
    .local v45, "lastDescription":Ljava/lang/String;
    .local v46, "lastTimeOnTop":J
    .local v48, "neverRelinquishIdentity":Z
    .local v49, "nextTaskId":I
    .local v50, "callingUid":I
    .local v51, "callingPackage":Ljava/lang/String;
    .local v52, "callingFeatureId":Ljava/lang/String;
    .local v53, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v54, "minWidth":I
    .local v55, "minHeight":I
    :goto_90
    move/from16 v23, v15

    .end local v15    # "askedCompatMode":Z
    .local v23, "askedCompatMode":Z
    const-string v15, "ActivityTaskManager"

    if-ltz v0, :cond_441

    .line 4683
    move/from16 v30, v14

    .end local v14    # "autoRemoveRecents":Z
    .local v30, "autoRemoveRecents":Z
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 4684
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    .line 4689
    .local v31, "attrValue":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v32

    move/from16 v33, v13

    .end local v13    # "rootHasReset":Z
    .local v33, "rootHasReset":Z
    sparse-switch v32, :sswitch_data_6c0

    :cond_a9
    goto/16 :goto_22e

    :sswitch_ab
    const-string/jumbo v13, "root_has_reset"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x7

    goto/16 :goto_22f

    :sswitch_b7
    const-string/jumbo v13, "window_layout_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x6

    goto/16 :goto_22f

    :sswitch_c3
    const-string/jumbo v13, "real_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x1

    goto/16 :goto_22f

    :sswitch_cf
    const-string/jumbo v13, "never_relinquish_identity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x10

    goto/16 :goto_22f

    :sswitch_dc
    const-string v13, "calling_package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x15

    goto/16 :goto_22f

    :sswitch_e8
    const-string/jumbo v13, "persist_task_version"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1c

    goto/16 :goto_22f

    :sswitch_f5
    const-string v13, "last_description"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xe

    goto/16 :goto_22f

    :sswitch_101
    const-string v13, "affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x4

    goto/16 :goto_22f

    :sswitch_10c
    const-string/jumbo v13, "min_width"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1a

    goto/16 :goto_22f

    :sswitch_119
    const-string v13, "calling_feature_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x16

    goto/16 :goto_22f

    :sswitch_125
    const-string/jumbo v13, "prev_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x12

    goto/16 :goto_22f

    :sswitch_132
    const-string/jumbo v13, "task_type"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xd

    goto/16 :goto_22f

    :sswitch_13f
    const-string v13, "calling_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x14

    goto/16 :goto_22f

    :sswitch_14b
    const-string/jumbo v13, "user_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xa

    goto/16 :goto_22f

    :sswitch_158
    const-string/jumbo v13, "root_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x5

    goto/16 :goto_22f

    :sswitch_164
    const-string/jumbo v13, "supports_picture_in_picture"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x18

    goto/16 :goto_22f

    :sswitch_171
    const-string v13, "auto_remove_recents"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x8

    goto/16 :goto_22f

    :sswitch_17d
    const-string v13, "last_snapshot_buffer_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1f

    goto/16 :goto_22f

    :sswitch_189
    const-string/jumbo v13, "orig_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x3

    goto/16 :goto_22f

    :sswitch_195
    const-string/jumbo v13, "non_fullscreen_bounds"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x19

    goto/16 :goto_22f

    :sswitch_1a2
    const-string v13, "last_snapshot_task_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1d

    goto/16 :goto_22f

    :sswitch_1ae
    const-string/jumbo v13, "min_height"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1b

    goto/16 :goto_22f

    :sswitch_1bb
    const-string/jumbo v13, "resize_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x17

    goto/16 :goto_22f

    :sswitch_1c8
    const-string v13, "effective_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xc

    goto :goto_22f

    :sswitch_1d3
    const-string/jumbo v13, "user_setup_complete"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xb

    goto :goto_22f

    :sswitch_1df
    const-string/jumbo v13, "task_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x11

    goto :goto_22f

    :sswitch_1eb
    const-string/jumbo v13, "real_activity_suspended"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x2

    goto :goto_22f

    :sswitch_1f6
    const-string/jumbo v13, "next_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x13

    goto :goto_22f

    :sswitch_202
    const-string/jumbo v13, "task_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x0

    goto :goto_22f

    :sswitch_20d
    const-string v13, "last_time_moved"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0xf

    goto :goto_22f

    :sswitch_218
    const-string v13, "last_snapshot_content_insets"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x1e

    goto :goto_22f

    :sswitch_223
    const-string v13, "asked_compat_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/16 v13, 0x9

    goto :goto_22f

    :goto_22e
    const/4 v13, -0x1

    :goto_22f
    packed-switch v13, :pswitch_data_742

    .line 4788
    move-object/from16 v13, v27

    const-string/jumbo v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_433

    .line 4789
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    .end local v8    # "origActivity":Landroid/content/ComponentName;
    .local v32, "origActivity":Landroid/content/ComponentName;
    const-string v8, "Task: Unknown attribute="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_435

    .line 4785
    .end local v32    # "origActivity":Landroid/content/ComponentName;
    .restart local v8    # "origActivity":Landroid/content/ComponentName;
    :pswitch_257
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v15, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4786
    move-object/from16 v32, v8

    goto/16 :goto_435

    .line 4782
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_263
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4783
    move-object/from16 v32, v8

    goto/16 :goto_435

    .line 4779
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_26f
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4780
    move-object/from16 v32, v8

    goto/16 :goto_435

    .line 4776
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_27b
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4777
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4773
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_289
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4774
    .end local v55    # "minHeight":I
    .local v13, "minHeight":I
    move/from16 v55, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4770
    .end local v13    # "minHeight":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v55    # "minHeight":I
    :pswitch_299
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4771
    .end local v54    # "minWidth":I
    .local v13, "minWidth":I
    move/from16 v54, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4767
    .end local v13    # "minWidth":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v54    # "minWidth":I
    :pswitch_2a9
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    .line 4768
    .end local v53    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v13, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v53, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4764
    .end local v13    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v53    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_2b9
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4765
    .end local v34    # "supportsPictureInPicture":Z
    .local v13, "supportsPictureInPicture":Z
    move/from16 v34, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4761
    .end local v13    # "supportsPictureInPicture":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v34    # "supportsPictureInPicture":Z
    :pswitch_2c9
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4762
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4758
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_2d7
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4759
    .end local v52    # "callingFeatureId":Ljava/lang/String;
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v52, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4755
    .end local v13    # "callingFeatureId":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v52    # "callingFeatureId":Ljava/lang/String;
    :pswitch_2e5
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4756
    .end local v51    # "callingPackage":Ljava/lang/String;
    .local v13, "callingPackage":Ljava/lang/String;
    move-object/from16 v51, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4752
    .end local v13    # "callingPackage":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v51    # "callingPackage":Ljava/lang/String;
    :pswitch_2f3
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4753
    .end local v50    # "callingUid":I
    .local v13, "callingUid":I
    move/from16 v50, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4749
    .end local v13    # "callingUid":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v50    # "callingUid":I
    :pswitch_303
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4750
    .end local v49    # "nextTaskId":I
    .local v13, "nextTaskId":I
    move/from16 v49, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4746
    .end local v13    # "nextTaskId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v49    # "nextTaskId":I
    :pswitch_313
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4747
    .end local v20    # "prevTaskId":I
    .local v13, "prevTaskId":I
    move/from16 v20, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4743
    .end local v13    # "prevTaskId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v20    # "prevTaskId":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_323
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4744
    .end local v21    # "taskAffiliation":I
    .local v13, "taskAffiliation":I
    move/from16 v21, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4740
    .end local v13    # "taskAffiliation":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v21    # "taskAffiliation":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_333
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4741
    .end local v48    # "neverRelinquishIdentity":Z
    .local v13, "neverRelinquishIdentity":Z
    move/from16 v48, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4737
    .end local v13    # "neverRelinquishIdentity":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v48    # "neverRelinquishIdentity":Z
    :pswitch_343
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 4738
    .end local v46    # "lastTimeOnTop":J
    .local v27, "lastTimeOnTop":J
    move-wide/from16 v46, v27

    move/from16 v14, v30

    move/from16 v13, v33

    move-object/from16 v27, v15

    move/from16 v15, v23

    goto/16 :goto_43d

    .line 4734
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v27, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v46    # "lastTimeOnTop":J
    :pswitch_355
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4735
    .end local v45    # "lastDescription":Ljava/lang/String;
    .local v13, "lastDescription":Ljava/lang/String;
    move-object/from16 v45, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4731
    .end local v13    # "lastDescription":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v45    # "lastDescription":Ljava/lang/String;
    :pswitch_363
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4732
    .end local v42    # "taskType":I
    .local v13, "taskType":I
    move/from16 v42, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4728
    .end local v13    # "taskType":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v42    # "taskType":I
    :pswitch_373
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4729
    .end local v18    # "effectiveUid":I
    .local v13, "effectiveUid":I
    move/from16 v18, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4725
    .end local v13    # "effectiveUid":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v18    # "effectiveUid":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_383
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4726
    .end local v44    # "userSetupComplete":Z
    .local v13, "userSetupComplete":Z
    move/from16 v44, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4722
    .end local v13    # "userSetupComplete":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v44    # "userSetupComplete":Z
    :pswitch_393
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4723
    .end local v43    # "userId":I
    .local v13, "userId":I
    move/from16 v43, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4719
    .end local v13    # "userId":I
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v43    # "userId":I
    :pswitch_3a3
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4720
    .end local v23    # "askedCompatMode":Z
    .local v13, "askedCompatMode":Z
    move/from16 v14, v30

    move v15, v13

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4716
    .end local v13    # "askedCompatMode":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v23    # "askedCompatMode":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3b0
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4717
    .end local v30    # "autoRemoveRecents":Z
    .local v13, "autoRemoveRecents":Z
    move v14, v13

    move/from16 v15, v23

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4713
    .end local v13    # "autoRemoveRecents":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v30    # "autoRemoveRecents":Z
    :pswitch_3bd
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4714
    .end local v33    # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    move/from16 v15, v23

    move/from16 v14, v30

    goto/16 :goto_43d

    .line 4710
    .end local v13    # "rootHasReset":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v33    # "rootHasReset":Z
    :pswitch_3c9
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4711
    .end local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .local v13, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v17, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4706
    .end local v13    # "windowLayoutAffinity":Ljava/lang/String;
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3d7
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v10, v31

    .line 4707
    const/4 v11, 0x1

    .line 4708
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43d

    .line 4703
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3e4
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v9, v31

    .line 4704
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43d

    .line 4700
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3ef
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 4701
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43d

    .line 4697
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3fc
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 4698
    .end local v19    # "realActivitySuspended":Z
    .local v13, "realActivitySuspended":Z
    move/from16 v19, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43d

    .line 4694
    .end local v13    # "realActivitySuspended":Z
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v19    # "realActivitySuspended":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_40f
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 4695
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43d

    .line 4691
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_41c
    move-object/from16 v15, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/4 v13, -0x1

    if-ne v5, v13, :cond_42e

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v27, v15

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43d

    :cond_42e
    move-object/from16 v32, v8

    move-object/from16 v27, v15

    goto :goto_435

    .line 4788
    .end local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :cond_433
    move-object/from16 v32, v8

    .line 4682
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .end local v31    # "attrValue":Ljava/lang/String;
    .restart local v15    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_435
    move/from16 v15, v23

    move/from16 v14, v30

    move-object/from16 v8, v32

    move/from16 v13, v33

    .end local v23    # "askedCompatMode":Z
    .end local v30    # "autoRemoveRecents":Z
    .end local v33    # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_43d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_90

    .end local v15    # "askedCompatMode":Z
    .restart local v23    # "askedCompatMode":Z
    :cond_441
    move-object/from16 v32, v8

    move/from16 v33, v13

    move/from16 v30, v14

    .line 4793
    .end local v0    # "attrNdx":I
    .end local v8    # "origActivity":Landroid/content/ComponentName;
    .end local v13    # "rootHasReset":Z
    .end local v14    # "autoRemoveRecents":Z
    .restart local v30    # "autoRemoveRecents":Z
    .restart local v32    # "origActivity":Landroid/content/ComponentName;
    .restart local v33    # "rootHasReset":Z
    move-object/from16 v8, v26

    .end local v26    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v8, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    .line 4796
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "affinityIntent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    .local v14, "affinityIntent":Landroid/content/Intent;
    :goto_450
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move/from16 v22, v0

    const/4 v1, 0x1

    .local v22, "event":I
    if-eq v0, v1, :cond_4e7

    move/from16 v1, v22

    move-object/from16 v22, v8

    const/4 v8, 0x3

    .end local v8    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v1, "event":I
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-ne v1, v8, :cond_46b

    .line 4797
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v3, :cond_467

    goto :goto_46b

    :cond_467
    move/from16 v24, v1

    goto/16 :goto_4eb

    .line 4798
    :cond_46b
    :goto_46b
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4df

    .line 4799
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4801
    .local v0, "name":Ljava/lang/String;
    const-string v8, "affinity_intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_482

    .line 4802
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v14, v8

    .end local v14    # "affinityIntent":Landroid/content/Intent;
    .local v8, "affinityIntent":Landroid/content/Intent;
    goto :goto_4d9

    .line 4803
    .end local v8    # "affinityIntent":Landroid/content/Intent;
    .restart local v14    # "affinityIntent":Landroid/content/Intent;
    :cond_482
    const-string v8, "intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_492

    .line 4804
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v13, v8

    .end local v13    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_4d9

    .line 4806
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_492
    invoke-static {}, Lcom/android/server/wm/AppResurrectionServiceStub;->getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/android/server/wm/AppResurrectionServiceStub;->isActivityTag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a8

    .line 4808
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 4809
    .local v8, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_4a5

    .line 4810
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4813
    .end local v8    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4a5
    move/from16 v24, v1

    goto :goto_4d9

    :cond_4a8
    const-string v8, "activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4bd

    .line 4814
    nop

    .line 4815
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 4819
    .restart local v8    # "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_4ba

    .line 4820
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4822
    .end local v8    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4ba
    move/from16 v24, v1

    goto :goto_4d9

    .line 4823
    :cond_4bd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    .end local v1    # "event":I
    .local v24, "event":I
    const-string/jumbo v1, "restoreTask: Unexpected name="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4826
    .end local v0    # "name":Ljava/lang/String;
    :goto_4d9
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto/16 :goto_450

    .line 4798
    .end local v24    # "event":I
    .restart local v1    # "event":I
    :cond_4df
    move/from16 v24, v1

    .end local v1    # "event":I
    .restart local v24    # "event":I
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto/16 :goto_450

    .line 4796
    .end local v24    # "event":I
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "event":I
    :cond_4e7
    move/from16 v24, v22

    move-object/from16 v22, v8

    .line 4828
    .end local v8    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v24    # "event":I
    :goto_4eb
    if-nez v11, :cond_4ef

    .line 4829
    move-object v10, v9

    goto :goto_4f8

    .line 4830
    :cond_4ef
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f8

    .line 4831
    const/4 v10, 0x0

    .line 4833
    :cond_4f8
    :goto_4f8
    if-gtz v18, :cond_56c

    .line 4834
    if-eqz v13, :cond_4fe

    move-object v0, v13

    goto :goto_4ff

    :cond_4fe
    move-object v0, v14

    :goto_4ff
    move-object v1, v0

    .line 4835
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 4836
    .end local v18    # "effectiveUid":I
    .local v8, "effectiveUid":I
    if-eqz v1, :cond_535

    .line 4837
    move/from16 v26, v3

    .end local v3    # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 4839
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 4840
    :try_start_50a
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_512
    .catch Landroid/os/RemoteException; {:try_start_50a .. :try_end_512} :catch_52b

    move-object/from16 v35, v10

    move/from16 v31, v11

    .end local v10    # "rootAffinity":Ljava/lang/String;
    .end local v11    # "hasRootAffinity":Z
    .local v31, "hasRootAffinity":Z
    .local v35, "rootAffinity":Ljava/lang/String;
    const-wide/16 v10, 0x2200

    .line 4839
    move/from16 v18, v8

    move/from16 v8, v43

    .end local v43    # "userId":I
    .local v8, "userId":I
    .restart local v18    # "effectiveUid":I
    :try_start_51c
    invoke-interface {v3, v0, v10, v11, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4843
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_526

    .line 4844
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_524
    .catch Landroid/os/RemoteException; {:try_start_51c .. :try_end_524} :catch_529

    move/from16 v18, v10

    .line 4847
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_526
    move/from16 v0, v18

    goto :goto_541

    .line 4846
    :catch_529
    move-exception v0

    goto :goto_53f

    .end local v18    # "effectiveUid":I
    .end local v31    # "hasRootAffinity":Z
    .end local v35    # "rootAffinity":Ljava/lang/String;
    .local v8, "effectiveUid":I
    .restart local v10    # "rootAffinity":Ljava/lang/String;
    .restart local v11    # "hasRootAffinity":Z
    .restart local v43    # "userId":I
    :catch_52b
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v43

    .end local v10    # "rootAffinity":Ljava/lang/String;
    .end local v11    # "hasRootAffinity":Z
    .end local v43    # "userId":I
    .local v8, "userId":I
    .restart local v18    # "effectiveUid":I
    .restart local v31    # "hasRootAffinity":Z
    .restart local v35    # "rootAffinity":Ljava/lang/String;
    goto :goto_53f

    .line 4836
    .end local v18    # "effectiveUid":I
    .end local v26    # "outerDepth":I
    .end local v31    # "hasRootAffinity":Z
    .end local v35    # "rootAffinity":Ljava/lang/String;
    .local v3, "outerDepth":I
    .local v8, "effectiveUid":I
    .restart local v10    # "rootAffinity":Ljava/lang/String;
    .restart local v11    # "hasRootAffinity":Z
    .restart local v43    # "userId":I
    :cond_535
    move/from16 v26, v3

    move/from16 v18, v8

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v43

    .line 4849
    .end local v3    # "outerDepth":I
    .end local v10    # "rootAffinity":Ljava/lang/String;
    .end local v11    # "hasRootAffinity":Z
    .end local v43    # "userId":I
    .local v8, "userId":I
    .restart local v18    # "effectiveUid":I
    .restart local v26    # "outerDepth":I
    .restart local v31    # "hasRootAffinity":Z
    .restart local v35    # "rootAffinity":Ljava/lang/String;
    :goto_53f
    move/from16 v0, v18

    .end local v18    # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ": effectiveUid="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_576

    .line 4833
    .end local v0    # "effectiveUid":I
    .end local v1    # "checkIntent":Landroid/content/Intent;
    .end local v8    # "userId":I
    .end local v26    # "outerDepth":I
    .end local v31    # "hasRootAffinity":Z
    .end local v35    # "rootAffinity":Ljava/lang/String;
    .restart local v3    # "outerDepth":I
    .restart local v10    # "rootAffinity":Ljava/lang/String;
    .restart local v11    # "hasRootAffinity":Z
    .restart local v18    # "effectiveUid":I
    .restart local v43    # "userId":I
    :cond_56c
    move/from16 v26, v3

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v43

    .end local v3    # "outerDepth":I
    .end local v10    # "rootAffinity":Ljava/lang/String;
    .end local v11    # "hasRootAffinity":Z
    .end local v43    # "userId":I
    .restart local v8    # "userId":I
    .restart local v26    # "outerDepth":I
    .restart local v31    # "hasRootAffinity":Z
    .restart local v35    # "rootAffinity":Ljava/lang/String;
    move/from16 v0, v18

    .line 4853
    .end local v18    # "effectiveUid":I
    .restart local v0    # "effectiveUid":I
    :goto_576
    const/4 v1, 0x1

    if-ge v12, v1, :cond_584

    .line 4858
    move/from16 v3, v42

    .end local v42    # "taskType":I
    .local v3, "taskType":I
    if-ne v3, v1, :cond_58f

    const/4 v1, 0x2

    if-ne v7, v1, :cond_58f

    .line 4859
    const/4 v7, 0x1

    move/from16 v1, v34

    goto :goto_591

    .line 4866
    .end local v3    # "taskType":I
    .restart local v42    # "taskType":I
    :cond_584
    move/from16 v3, v42

    .end local v42    # "taskType":I
    .restart local v3    # "taskType":I
    const/4 v1, 0x3

    if-ne v7, v1, :cond_58f

    .line 4867
    const/4 v7, 0x2

    .line 4868
    const/16 v34, 0x1

    move/from16 v1, v34

    goto :goto_591

    .line 4872
    :cond_58f
    move/from16 v1, v34

    .end local v34    # "supportsPictureInPicture":Z
    .local v1, "supportsPictureInPicture":Z
    :goto_591
    new-instance v10, Lcom/android/server/wm/Task$Builder;

    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v10, v11}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 4873
    invoke-virtual {v10, v5}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4874
    invoke-virtual {v10, v13}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4875
    invoke-static {v10, v14}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4876
    invoke-static {v10, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4877
    move-object/from16 v11, v35

    .end local v35    # "rootAffinity":Ljava/lang/String;
    .local v11, "rootAffinity":Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4878
    invoke-virtual {v10, v6}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4879
    move/from16 v18, v3

    move-object/from16 v3, v32

    .end local v32    # "origActivity":Landroid/content/ComponentName;
    .local v3, "origActivity":Landroid/content/ComponentName;
    .local v18, "taskType":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4880
    move/from16 v3, v33

    .end local v33    # "rootHasReset":Z
    .local v3, "rootHasReset":Z
    .restart local v32    # "origActivity":Landroid/content/ComponentName;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4881
    move/from16 v3, v30

    .end local v30    # "autoRemoveRecents":Z
    .local v3, "autoRemoveRecents":Z
    .restart local v33    # "rootHasReset":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4882
    move/from16 v3, v23

    .end local v23    # "askedCompatMode":Z
    .local v3, "askedCompatMode":Z
    .restart local v30    # "autoRemoveRecents":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAskedCompatMode(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4883
    invoke-static {v10, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4884
    invoke-virtual {v10, v0}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4885
    move-object/from16 v3, v45

    .end local v45    # "lastDescription":Ljava/lang/String;
    .local v3, "lastDescription":Ljava/lang/String;
    .restart local v23    # "askedCompatMode":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4886
    move/from16 v29, v5

    move-object/from16 v28, v6

    move-wide/from16 v5, v46

    .end local v6    # "realActivity":Landroid/content/ComponentName;
    .end local v46    # "lastTimeOnTop":J
    .local v5, "lastTimeOnTop":J
    .local v28, "realActivity":Landroid/content/ComponentName;
    .local v29, "taskId":I
    invoke-static {v10, v5, v6}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4887
    move-object/from16 v34, v3

    move/from16 v3, v48

    .end local v48    # "neverRelinquishIdentity":Z
    .local v3, "neverRelinquishIdentity":Z
    .local v34, "lastDescription":Ljava/lang/String;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4888
    move/from16 v35, v3

    move-object/from16 v3, v22

    .end local v22    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v3, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v35, "neverRelinquishIdentity":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4889
    move-object/from16 v3, v27

    .end local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v3, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v22    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastSnapshotData(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4890
    move/from16 v3, v21

    .end local v21    # "taskAffiliation":I
    .local v3, "taskAffiliation":I
    .restart local v27    # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4891
    move/from16 v3, v20

    .end local v20    # "prevTaskId":I
    .local v3, "prevTaskId":I
    .restart local v21    # "taskAffiliation":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4892
    move/from16 v3, v49

    .end local v49    # "nextTaskId":I
    .local v3, "nextTaskId":I
    .restart local v20    # "prevTaskId":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4893
    move/from16 v36, v3

    move/from16 v3, v50

    .end local v50    # "callingUid":I
    .local v3, "callingUid":I
    .local v36, "nextTaskId":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4894
    move/from16 v37, v3

    move-object/from16 v3, v51

    .end local v51    # "callingPackage":Ljava/lang/String;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v37, "callingUid":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4895
    move-object/from16 v38, v3

    move-object/from16 v3, v52

    .end local v52    # "callingFeatureId":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v38, "callingPackage":Ljava/lang/String;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4896
    invoke-static {v10, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4897
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4898
    move/from16 v40, v1

    move/from16 v1, v19

    .end local v19    # "realActivitySuspended":Z
    .local v1, "realActivitySuspended":Z
    .local v40, "supportsPictureInPicture":Z
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4899
    move/from16 v1, v44

    .end local v44    # "userSetupComplete":Z
    .local v1, "userSetupComplete":Z
    .restart local v19    # "realActivitySuspended":Z
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4900
    move/from16 v41, v1

    move/from16 v1, v54

    .end local v54    # "minWidth":I
    .local v1, "minWidth":I
    .local v41, "userSetupComplete":Z
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4901
    move/from16 v42, v1

    move/from16 v1, v55

    .end local v55    # "minHeight":I
    .local v1, "minHeight":I
    .local v42, "minWidth":I
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4902
    invoke-virtual {v10}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 4903
    .local v10, "task":Lcom/android/server/wm/Task;
    move/from16 v43, v1

    move-object/from16 v1, v53

    .end local v53    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v1, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v43, "minHeight":I
    iput-object v1, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4904
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4905
    move-object/from16 v44, v1

    move-object/from16 v1, v17

    .end local v17    # "windowLayoutAffinity":Ljava/lang/String;
    .local v1, "windowLayoutAffinity":Ljava/lang/String;
    .local v44, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v1, v10, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4906
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_6a1

    .line 4908
    move/from16 v17, v0

    .end local v0    # "effectiveUid":I
    .local v17, "effectiveUid":I
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4909
    move-object/from16 v45, v1

    const/4 v1, 0x0

    .end local v1    # "windowLayoutAffinity":Ljava/lang/String;
    .local v45, "windowLayoutAffinity":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4910
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object/from16 v25, v0

    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v25, "dc":Lcom/android/server/wm/DisplayContent;
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v10, v0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4914
    .local v0, "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4915
    move-object v4, v0

    .line 4918
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_68a
    if-ltz v1, :cond_69e

    .line 4919
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v46, v0

    .end local v0    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v46, "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 4918
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v46

    goto :goto_68a

    .end local v46    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v0    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_69e
    move-object/from16 v46, v0

    .end local v0    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v46    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    goto :goto_6a5

    .line 4906
    .end local v17    # "effectiveUid":I
    .end local v25    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v45    # "windowLayoutAffinity":Ljava/lang/String;
    .end local v46    # "reverseActivity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v0, "effectiveUid":I
    .local v1, "windowLayoutAffinity":Ljava/lang/String;
    :cond_6a1
    move/from16 v17, v0

    move-object/from16 v45, v1

    .line 4923
    .end local v0    # "effectiveUid":I
    .end local v1    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v17    # "effectiveUid":I
    .restart local v45    # "windowLayoutAffinity":Ljava/lang/String;
    :goto_6a5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_6bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    :cond_6bf
    return-object v10

    :sswitch_data_6c0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_223
        -0x5eb23152 -> :sswitch_218
        -0x5ccdaff6 -> :sswitch_20d
        -0x5ba06deb -> :sswitch_202
        -0x591a685c -> :sswitch_1f6
        -0x43dc2f14 -> :sswitch_1eb
        -0x430d08ca -> :sswitch_1df
        -0x3a0f4851 -> :sswitch_1d3
        -0x37680e48 -> :sswitch_1c8
        -0x3395d9b2 -> :sswitch_1bb
        -0x313f784c -> :sswitch_1ae
        -0x2fcb75f7 -> :sswitch_1a2
        -0x2a27c539 -> :sswitch_195
        -0x2a0990b3 -> :sswitch_189
        -0x20dc8352 -> :sswitch_17d
        -0x1df202b3 -> :sswitch_171
        -0x158140a0 -> :sswitch_164
        -0x9b3481b -> :sswitch_158
        -0x8c511f1 -> :sswitch_14b
        -0x7e175ab -> :sswitch_13f
        0xac8bdb4 -> :sswitch_132
        0x13bdcee4 -> :sswitch_125
        0x1782e55f -> :sswitch_119
        0x2046b199 -> :sswitch_10c
        0x24172928 -> :sswitch_101
        0x33cf43d3 -> :sswitch_f5
        0x3c12eca9 -> :sswitch_e8
        0x40756fcb -> :sswitch_dc
        0x56e1584e -> :sswitch_cf
        0x5bc3bc90 -> :sswitch_c3
        0x772fa04e -> :sswitch_b7
        0x789a804d -> :sswitch_ab
    .end sparse-switch

    :pswitch_data_742
    .packed-switch 0x0
        :pswitch_41c
        :pswitch_40f
        :pswitch_3fc
        :pswitch_3ef
        :pswitch_3e4
        :pswitch_3d7
        :pswitch_3c9
        :pswitch_3bd
        :pswitch_3b0
        :pswitch_3a3
        :pswitch_393
        :pswitch_383
        :pswitch_373
        :pswitch_363
        :pswitch_355
        :pswitch_343
        :pswitch_333
        :pswitch_323
        :pswitch_313
        :pswitch_303
        :pswitch_2f3
        :pswitch_2e5
        :pswitch_2d7
        :pswitch_2c9
        :pswitch_2b9
        :pswitch_2a9
        :pswitch_299
        :pswitch_289
        :pswitch_27b
        :pswitch_26f
        :pswitch_263
        :pswitch_257
    .end packed-switch
.end method

.method private resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 11
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 5923
    const-string/jumbo v0, "noMoreActivities"

    .line 5925
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "noMoreActivities"

    if-nez v1, :cond_1a

    .line 5926
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5927
    .local v1, "nextFocusedTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1a

    .line 5931
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 5938
    .end local v1    # "nextFocusedTask":Lcom/android/server/wm/Task;
    :cond_1a
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5939
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x88e815e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5941
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 16
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "deferPause"    # Z

    .line 5890
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5892
    return v1

    .line 5894
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5895
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_1e

    .line 5897
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 5899
    :cond_1e
    new-array v9, v0, [Z

    .line 5900
    .local v9, "resumed":[Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    .line 5901
    .local v10, "topFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    aput-boolean v3, v9, v1

    .line 5902
    new-instance v11, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    move-object v3, v11

    move-object v4, v10

    move-object v5, v9

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    invoke-virtual {p0, v11, v0}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5911
    aget-boolean v0, v9, v1

    return v0
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 7
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "first"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"    # Landroid/util/TypedXmlSerializer;

    .line 4622
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4623
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_1f

    if-eq p0, p1, :cond_1f

    goto :goto_2f

    .line 4630
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4631
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4632
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2b

    .line 4633
    const/4 v0, 0x0

    return v0

    .line 4634
    :catch_2b
    move-exception v0

    .line 4635
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4636
    return v2

    .line 4627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .registers 2

    .line 2775
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2776
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2780
    return-void

    .line 2783
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2785
    return-void

    .line 2788
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2790
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 2791
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2792
    return-void

    .line 2796
    :cond_1c
    const/4 v2, 0x5

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_22

    .line 2798
    return-void

    .line 2804
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_2d

    .line 2805
    return-void

    .line 2809
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2810
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5033
    if-eqz p1, :cond_9

    .line 5034
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5036
    :cond_9
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 6946
    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6947
    const/4 v0, 0x0

    return v0

    .line 6950
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    move-object v0, p2

    :goto_11
    invoke-super {p0, v0}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 6952
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 6953
    return v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 13
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1131
    :cond_7
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 1132
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1133
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_1e

    .line 1137
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1139
    :cond_1e
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1140
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1143
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v4, 0x2

    if-nez v3, :cond_77

    .line 1144
    if-eqz p1, :cond_4e

    .line 1148
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 1149
    :cond_42
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 1150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1154
    :cond_4e
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_68

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x7a744c8b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v6, v7, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_68
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1156
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_72

    :cond_71
    move-object v3, v0

    :goto_72
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1157
    iput-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c1

    .line 1159
    :cond_77
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_b2

    .line 1162
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1163
    .local v5, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1164
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1165
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_a7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x283aa656

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v1

    invoke-static {v8, v9, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    :cond_a7
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1167
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1168
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1169
    .end local v5    # "targetIntent":Landroid/content/Intent;
    goto :goto_c1

    .line 1170
    :cond_b2
    iput-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1171
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1172
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1175
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_c1
    nop

    .line 1176
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v3, :cond_c7

    goto :goto_cb

    :cond_c7
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_cb
    iput-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1178
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_d3

    move v0, v2

    goto :goto_d7

    :cond_d3
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1179
    .local v0, "intentFlags":I
    :goto_d7
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_de

    .line 1182
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1184
    :cond_de
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1185
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1186
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1185
    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_fd

    move v3, v1

    goto :goto_fe

    :cond_fd
    move v3, v2

    :goto_fe
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1187
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_109

    .line 1189
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11d

    .line 1190
    :cond_109
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_11b

    .line 1195
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_118

    .line 1196
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11d

    .line 1198
    :cond_118
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11d

    .line 1201
    :cond_11b
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1203
    :goto_11d
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v1, v2, :cond_12a

    .line 1204
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1208
    :cond_12a
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateTaskInfo(III)V

    .line 1209
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1212
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v1, :cond_151

    .line 1213
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1214
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1216
    :cond_151
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1899
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_30

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6cb9a502

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const-string/jumbo v6, "setLockTaskAuth: task=%s mLockTaskAuth=%s"

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1901
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_30
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"    # Lcom/android/server/wm/Task;

    .line 5235
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5236
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 5237
    .local v1, "leaf":Lcom/android/server/wm/Task;
    :goto_c
    if-nez v1, :cond_f

    .line 5238
    return-void

    .line 5240
    :cond_f
    if-eq v1, p0, :cond_15

    .line 5241
    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 5242
    return-void

    .line 5244
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5245
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_24

    .line 5246
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    invoke-direct {v3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    goto :goto_27

    .line 5250
    :cond_24
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5252
    :goto_27
    return-void
.end method

.method private setScreenProjectionFlag(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 3872
    if-nez p1, :cond_3

    .line 3873
    return-void

    .line 3875
    :cond_3
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v0

    .line 3876
    .local v0, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionPrivaceState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionState()I

    move-result v1

    if-ne v1, v2, :cond_20

    .line 3877
    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_24

    .line 3879
    :cond_20
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 3881
    :goto_24
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_84

    .line 2131
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2132
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2133
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2135
    :cond_19
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_26

    .line 2136
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2138
    :cond_26
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2139
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2141
    :cond_33
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_40

    .line 2142
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2144
    :cond_40
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4d

    .line 2145
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2147
    :cond_4d
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_62

    .line 2148
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2149
    nop

    .line 2150
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2149
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2152
    :cond_62
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_77

    .line 2153
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2154
    nop

    .line 2155
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2154
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2157
    :cond_77
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_84

    .line 2158
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 2163
    .end local v0    # "atd":Landroid/app/ActivityManager$TaskDescription;
    :cond_84
    if-ne p0, p1, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    return v0
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .registers 19
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5343
    move-object/from16 v1, p0

    const-string/jumbo v0, "movePinnedActivityToOriginalTask"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 5344
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const-string v3, "ActivityTaskManager"

    if-nez v2, :cond_14

    .line 5345
    const-string/jumbo v0, "taskDisplayArea is null, bail early"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    return-void

    .line 5348
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    .line 5349
    .local v4, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 5350
    .local v5, "topTask":Lcom/android/server/wm/Task;
    move/from16 v6, p1

    .line 5355
    .local v6, "windowingMode":I
    const/4 v7, 0x0

    if-nez p2, :cond_28

    .line 5356
    invoke-virtual {v2, v6, v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 5358
    const/4 v6, 0x0

    .line 5362
    :cond_28
    if-ne v4, v6, :cond_34

    .line 5366
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 5367
    return-void

    .line 5370
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 5375
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v9, v6

    .line 5376
    .local v9, "likelyResolvedMode":I
    const/4 v10, 0x1

    if-nez v6, :cond_49

    .line 5377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 5378
    .local v11, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v11, :cond_47

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_48

    .line 5379
    :cond_47
    move v12, v10

    :goto_48
    move v9, v12

    .line 5381
    .end local v11    # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_49
    const/4 v11, 0x2

    if-ne v4, v11, :cond_51

    .line 5382
    iget-object v12, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v1, v7}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 5384
    :cond_51
    if-ne v9, v11, :cond_63

    .line 5388
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 5389
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_63

    .line 5391
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 5394
    :cond_63
    const/4 v12, 0x5

    if-eq v9, v10, :cond_85

    if-eq v9, v12, :cond_85

    if-eqz v8, :cond_85

    iget-boolean v13, v8, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v13, :cond_85

    .line 5398
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v13

    if-eqz v13, :cond_85

    .line 5401
    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5402
    .local v13, "packageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    iget v15, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v14, v15, v10, v13}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 5406
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_85
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5408
    if-eqz v8, :cond_93

    .line 5409
    :try_start_8c
    iget-object v13, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5412
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 5413
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v13, v1, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackWindowModeSet(Lcom/android/server/wm/Task;I)V

    .line 5415
    :cond_a0
    invoke-super {v1, v6}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 5418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v13

    if-eqz v13, :cond_ea

    .line 5419
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v13, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateCornerRadius(Lcom/android/server/wm/Task;)V

    .line 5420
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v13

    .line 5421
    .local v13, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-ne v6, v12, :cond_ea

    iget-object v12, v1, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_ea

    iget-object v12, v1, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v12}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v12

    if-eqz v12, :cond_ea

    .line 5422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    iget-object v14, v1, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5423
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "show freeform task surface: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    .end local v13    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_ea
    if-ne v4, v11, :cond_11a

    if-eqz v8, :cond_11a

    .line 5434
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_10f

    .line 5437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    if-nez v3, :cond_10f

    .line 5438
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5439
    .local v3, "lastParentBeforePip":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_10f

    .line 5440
    nop

    .line 5441
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v12

    .line 5440
    invoke-virtual {v8, v3, v12, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 5443
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5449
    .end local v3    # "lastParentBeforePip":Lcom/android/server/wm/Task;
    :cond_10f
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 5450
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 5455
    :cond_11a
    const/4 v0, 0x0

    if-ne v6, v10, :cond_12c

    .line 5456
    if-eqz v5, :cond_12c

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12c

    .line 5457
    invoke-virtual {v5, v7, v0, v0}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z
    :try_end_12c
    .catchall {:try_start_8c .. :try_end_12c} :catchall_179

    .line 5462
    :cond_12c
    if-eqz p2, :cond_134

    .line 5489
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5464
    return-void

    .line 5468
    :cond_134
    if-eqz v8, :cond_160

    if-ne v4, v10, :cond_160

    if-ne v6, v11, :cond_160

    :try_start_13a
    iget-object v3, v1, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5470
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-nez v3, :cond_160

    .line 5472
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/wm/WindowManagerServiceStub;->showPinnedTaskIfNeeded(Lcom/android/server/wm/Task;)V

    .line 5481
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_159

    .line 5482
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_160

    .line 5483
    :cond_159
    iget-object v3, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 5484
    invoke-virtual {v3}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    :try_end_160
    .catchall {:try_start_13a .. :try_end_160} :catchall_179

    .line 5489
    :cond_160
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5490
    nop

    .line 5492
    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v3

    if-nez v3, :cond_178

    .line 5493
    iget-object v3, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v7, v0, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5494
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5496
    :cond_178
    return-void

    .line 5489
    :catchall_179
    move-exception v0

    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5490
    throw v0
.end method

.method private shouldDockBigOverlays()Z
    .registers 3

    .line 4215
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4216
    .local v0, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private shouldStartChangeTransition(II)Z
    .registers 8
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 2608
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canStartChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    .line 2611
    invoke-interface {v0}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->isFreeformResizingByCvw()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_1d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_23

    if-eq p2, v0, :cond_23

    goto :goto_52

    .line 2617
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 2621
    .local v2, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    const/4 v3, 0x1

    if-ne p1, v0, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v1

    :goto_35
    if-ne p2, v0, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    if-eq v4, v0, :cond_50

    if-eqz v2, :cond_44

    .line 2623
    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isLaunchingSmallFreeForm()Z

    move-result v0

    if-nez v0, :cond_50

    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2624
    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isSwitchingApp()Z

    move-result v0

    if-nez v0, :cond_50

    move v1, v3

    goto :goto_51

    :cond_50
    nop

    .line 2621
    :goto_51
    return v1

    .line 2613
    .end local v2    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_52
    :goto_52
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1917
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayAreaForSplit(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1917
    :goto_15
    return v0
.end method

.method static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 8
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 4160
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4163
    .local v0, "baseActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 4165
    .local v1, "baseActivityUid":I
    :goto_13
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v3, ""

    if-eqz v2, :cond_b6

    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v4, :cond_b6

    .line 4168
    new-instance v2, Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4169
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4173
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4174
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4175
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4176
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4177
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4178
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4179
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4180
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4181
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 4182
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 4183
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4184
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 4185
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 4186
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4187
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 4188
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 4189
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4190
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 4191
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 4192
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4193
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 4194
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 4195
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4198
    :cond_b6
    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v2, v1, :cond_c1

    .line 4199
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4201
    :cond_c1
    return-void
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "taskIsFocused"    # Z
    .param p2, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 5185
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_33

    .line 5187
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 5190
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 5191
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5193
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 5194
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 5196
    :cond_32
    return-void

    .line 5185
    .end local v0    # "newShadowRadius":F
    :cond_33
    :goto_33
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 7091
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 7092
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 7093
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 7094
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 6465
    if-eqz p2, :cond_17

    .line 6466
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6467
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 6468
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 6470
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6473
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6474
    return-void
.end method

.method private warnForNonLeafTask(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 7115
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_22

    .line 7116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on non-leaf task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7118
    :cond_22
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 9
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 1571
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1572
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1574
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x4f52761a

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1584
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1588
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1589
    .local v0, "childTaskFrag":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_57

    .line 1590
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragment;->setMinDimensions(II)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1594
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_57

    .line 1595
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    .line 1602
    .end local v1    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_57
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v4

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 1602
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->updateImeBoundsInTaskChanged(ZIZLcom/android/server/wm/DisplayContent;)V

    .line 1606
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 7
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .line 6879
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6881
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 6882
    :try_start_7
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_d

    .line 6888
    :catchall_b
    move-exception v2

    goto :goto_1d

    .line 6886
    :cond_d
    :goto_d
    if-eqz p2, :cond_13

    const v2, 0x7fffffff

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_b

    .line 6888
    if-eqz v0, :cond_1c

    .line 6889
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 6892
    :cond_1c
    return-void

    .line 6888
    :goto_1d
    if-eqz v0, :cond_22

    .line 6889
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 6891
    :cond_22
    throw v2
.end method

.method adjustAnimationBoundsForTransition(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "animationBounds"    # Landroid/graphics/Rect;

    .line 3412
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    .line 3413
    .local v0, "spec":Landroid/view/TaskTransitionSpec;
    if-eqz v0, :cond_34

    .line 3414
    iget-object v1, v0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3415
    .local v2, "insetType":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3416
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    .line 3417
    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v3

    .line 3419
    .local v3, "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    .line 3421
    .local v4, "insets":Landroid/graphics/Insets;
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3422
    .end local v2    # "insetType":I
    .end local v3    # "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .end local v4    # "insets":Landroid/graphics/Insets;
    goto :goto_c

    .line 3424
    :cond_34
    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3449
    if-nez p1, :cond_3

    .line 3450
    return-void

    .line 3452
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3453
    return-void

    .line 3455
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3456
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3457
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 3461
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3462
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3463
    return-void

    .line 3466
    :cond_21
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_26

    .line 3469
    return-void

    .line 3477
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3482
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_78

    .line 3488
    :cond_40
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3489
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_77

    .line 3492
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_5b} :catch_5c

    .line 3495
    goto :goto_77

    .line 3493
    :catch_5c
    move-exception v2

    .line 3494
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Note: WMS has a Freeform taskId, but AMS\'s taskId is different. taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_77
    :goto_77
    return-void

    .line 3484
    :cond_78
    :goto_78
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3485
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 2930
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z
    .param p3, "moveDisplayToTop"    # Z

    .line 2968
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2969
    .local v0, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_e

    .line 2970
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2972
    :cond_e
    if-nez v0, :cond_1b

    .line 2973
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2974
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_19

    .line 2976
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    .line 2978
    :cond_19
    const/4 v2, 0x0

    return-object v2

    .line 2981
    .end local v1    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2982
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-nez p3, :cond_3b

    .line 2986
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2987
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 2989
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_26
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2990
    move-object v3, v2

    .line 2991
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2992
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3a

    if-nez v2, :cond_26

    .line 2993
    :cond_3a
    return-object v1

    .line 2996
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "next":Lcom/android/server/wm/WindowContainer;
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adjustFocusToNextFocusableTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2997
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2998
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_66

    if-eqz v3, :cond_5e

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_66

    .line 3001
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3002
    return-object v1

    .line 3007
    :cond_66
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 3010
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 3012
    :cond_74
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;
    .param p3, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2486
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 2487
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 2491
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_25

    .line 2493
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_11

    .line 2494
    const/16 v2, 0xdc

    goto :goto_15

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 2495
    .local v2, "defaultMinSizeDp":I
    :goto_15
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 2496
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 2498
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_22

    .line 2499
    move v0, v4

    .line 2501
    :cond_22
    if-ne v1, v5, :cond_25

    .line 2502
    move v1, v4

    .line 2505
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "density":F
    .end local v4    # "defaultMinSize":I
    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2508
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2509
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_3e

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_3e

    .line 2510
    return-void

    .line 2512
    :cond_3e
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2514
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4b

    move v2, v3

    goto :goto_4c

    :cond_4b
    move v2, v4

    .line 2515
    .local v2, "adjustWidth":Z
    :goto_4c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    .line 2516
    .local v3, "adjustHeight":Z
    :goto_54
    if-nez v2, :cond_59

    if-nez v3, :cond_59

    .line 2517
    return-void

    .line 2520
    :cond_59
    if-eqz v2, :cond_72

    .line 2521
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_6d

    .line 2522
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_72

    .line 2526
    :cond_6d
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2529
    :cond_72
    :goto_72
    if-eqz v3, :cond_8b

    .line 2530
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_86

    .line 2531
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_8b

    .line 2535
    :cond_86
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2538
    :cond_8b
    :goto_8b
    return-void
.end method

.method adjustFreeformBoundForIme(ZI)V
    .registers 8
    .param p1, "getFocused"    # Z
    .param p2, "offSet"    # I

    .line 2647
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2648
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimationType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1a

    .line 2649
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2650
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2651
    return-void

    .line 2653
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2654
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isRunningUnPinAnim()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2655
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2656
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2657
    return-void

    .line 2659
    :cond_39
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    .line 2660
    const/4 v1, 0x0

    if-eqz p1, :cond_6a

    .line 2661
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    .line 2662
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2663
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le p2, v2, :cond_58

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    iget p2, v2, Landroid/graphics/Rect;->top:I

    .line 2664
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    neg-int v3, p2

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2665
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_8c

    .line 2666
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2667
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_8c

    .line 2669
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2670
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2672
    :goto_8c
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 16
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3985
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3986
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 3989
    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 3990
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_3d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xc8fcb49

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v4, v9, v1

    const/4 v1, 0x2

    aput-object v5, v9, v1

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3993
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    :cond_3d
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v1, p5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_6a

    .line 4001
    :cond_46
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    if-eqz v3, :cond_67

    .line 4006
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 4007
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, v3, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 4008
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v3, :cond_6a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5c13dcaf

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v6, "Skipping app transition animation. task=%s"

    invoke-static {v4, v5, v2, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    goto :goto_6a

    .line 4010
    :cond_67
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/TaskFragment;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 4012
    :cond_6a
    :goto_6a
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 4296
    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .registers 2

    .line 3832
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 2048
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 3502
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3503
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3502
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3505
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 5637
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5638
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 5640
    :cond_13
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "top"    # Lcom/android/server/wm/ActivityRecord;

    .line 5744
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 5745
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5746
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    .line 5748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5749
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5751
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5753
    :cond_1a
    return-void
.end method

.method clearLastRecentsAnimationTransaction(Z)V
    .registers 7
    .param p1, "forceRemoveOverlay"    # Z

    .line 7063
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    .line 7064
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7066
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7067
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7069
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 7070
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 7071
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 7072
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 2853
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 2854
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 2855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2857
    :cond_a
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5756
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5757
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5758
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5759
    return-void
.end method

.method cropWindowsToRootTaskBounds()Z
    .registers 4

    .line 3300
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3303
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3305
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    .line 3306
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_14
    if-eq p0, v1, :cond_1c

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3307
    :cond_1c
    const/4 v2, 0x0

    return v2

    .line 3310
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0
.end method

.method dismissPip()V
    .registers 3

    .line 6922
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6926
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 6931
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 6943
    return-void

    .line 6927
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6923
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchTaskInfoChangedIfNeeded(Z)V
    .registers 3
    .param p1, "force"    # Z

    .line 7167
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7168
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 7170
    :cond_d
    return-void
.end method

.method dontAnimateDimExit()V
    .registers 2

    .line 3836
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3837
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4310
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4311
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4312
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4313
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4314
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4315
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 4317
    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4318
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_66

    .line 4321
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_70

    .line 4319
    :cond_66
    :goto_66
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4324
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 4325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_b1

    .line 4328
    :cond_8a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4329
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4330
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4331
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4333
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_da

    .line 4334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4335
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4340
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_da
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_ff

    .line 4341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4342
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4343
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4347
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_ff
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_115

    .line 4348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4349
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4351
    :cond_115
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_12a

    .line 4352
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4353
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4355
    :cond_12a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_138

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_138

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_15b

    .line 4356
    :cond_138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4357
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4358
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4360
    :cond_15b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_16c

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_19a

    .line 4362
    :cond_16c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4363
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4364
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4365
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    :cond_19a
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_208

    .line 4370
    :cond_1b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4371
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4372
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4373
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string/jumbo v3, "null"

    if-nez v2, :cond_1d8

    .line 4374
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e3

    .line 4376
    :cond_1d8
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4378
    :goto_1e3
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4380
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1f8

    .line 4381
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_203

    .line 4383
    :cond_1f8
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4385
    :goto_203
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    :cond_208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4388
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_221

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_221

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_242

    .line 4389
    :cond_221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4390
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4391
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4393
    :cond_242
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_253

    .line 4394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4396
    :cond_253
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_265

    .line 4397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4399
    :cond_265
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_2b0

    move v2, v1

    goto :goto_2b1

    :cond_2b0
    move v2, v3

    :goto_2b1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4404
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4405
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4406
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportsSplitScreenWindowingMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " supportMultipleTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_331

    .line 4411
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 4412
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4411
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inMultipleTaskWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_331

    goto :goto_332

    :cond_331
    move v1, v3

    :goto_332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4410
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_36b

    .line 4415
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 4416
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_36b

    .line 4417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isHiddenFreeformTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->hadHideStackFormFullScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4421
    .end local v0    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_36b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4423
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 4016
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4017
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .line 6731
    const-string v1, "  "

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 7175
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 7176
    return-void

    .line 7179
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 7181
    .local v0, "token":J
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7182
    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7184
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 7185
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7187
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_46

    .line 7188
    const-wide v3, 0x1090000000dL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7190
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_56

    .line 7191
    const-wide v3, 0x1090000000eL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7193
    :cond_56
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7194
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7195
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7197
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_84

    .line 7198
    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 7201
    :cond_84
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_a4

    .line 7202
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7203
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7206
    :cond_a4
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7207
    const-wide v2, 0x1090000001dL

    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7208
    const-wide v2, 0x1080000001eL

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_c3

    const/4 v4, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v4, 0x0

    :goto_c4
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 7210
    const-wide v2, 0x10b0000001fL

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 7212
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7213
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 6736
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 6737
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1d

    .line 6738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mCreatedByOrganizer=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6740
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2e

    .line 6741
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6742
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6744
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 6745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6746
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  topPausingActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6748
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  topResumedActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6750
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_95

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v0, v1, :cond_ac

    .line 6751
    :cond_95
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mMinWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6752
    const-string v0, " mMinHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6755
    :cond_ac
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 5691
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 5692
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 5713
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    if-eqz v0, :cond_5

    .line 5714
    return-void

    .line 5717
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 5719
    :try_start_a
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5724
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5725
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_2a

    .line 5731
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5732
    nop

    .line 5733
    return-void

    .line 5731
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5732
    throw v0
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 7137
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 7138
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 7139
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 4026
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 4027
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 4
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 4030
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 4031
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 14
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z
    .param p3, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 4040
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 4041
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_10

    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_10
    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 4042
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 4043
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 4044
    if-eqz p3, :cond_22

    .line 4045
    iget v0, p3, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    iput v0, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 4047
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4051
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_37

    move v3, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 4052
    .local v3, "baseIntentFlags":I
    :goto_3b
    if-nez v0, :cond_43

    .line 4053
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    goto :goto_4f

    .line 4054
    :cond_43
    if-eqz p2, :cond_4a

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    goto :goto_4f

    :cond_4a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_4f
    iput-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 4055
    iget-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4056
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    if-eqz v4, :cond_68

    .line 4057
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_69

    .line 4058
    :cond_68
    move-object v4, v5

    :goto_69
    iput-object v4, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4059
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_78

    .line 4060
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_79

    .line 4061
    :cond_78
    move-object v4, v5

    :goto_79
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4062
    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 4063
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4064
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v4, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 4065
    iget-wide v6, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v6, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 4066
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v4, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4067
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 4068
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 4069
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4072
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 4073
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 4074
    iget-object v4, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4078
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 4079
    .local v4, "top":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_d4

    iget v6, v4, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_d6

    :cond_d4
    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_d6
    iput v6, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 4080
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    iput v6, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 4081
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 4082
    iget v6, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v6, p1, Landroid/app/TaskInfo;->minWidth:I

    .line 4083
    iget v6, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v6, p1, Landroid/app/TaskInfo;->minHeight:I

    .line 4084
    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v6, :cond_f3

    .line 4085
    const/16 v6, 0xdc

    goto :goto_f7

    :cond_f3
    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_f7
    iput v6, p1, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 4087
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 4089
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 4090
    invoke-direct {p0}, Lcom/android/server/wm/Task;->shouldDockBigOverlays()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 4091
    iget-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v6, :cond_12e

    iget-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 4092
    invoke-virtual {v6}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 4093
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_12e

    .line 4094
    nop

    .line 4095
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iput v6, p1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    .line 4097
    :cond_12e
    if-eqz v4, :cond_135

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_136

    :cond_135
    move-object v6, v5

    :goto_136
    iput-object v6, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 4098
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_145

    .line 4099
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_146

    .line 4100
    :cond_145
    move-object v6, v5

    :goto_146
    iput-object v6, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4102
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_166

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4103
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_166

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 4104
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_166

    move v6, v1

    goto :goto_167

    :cond_166
    move v6, v2

    .line 4106
    .local v6, "isTopActivityResumed":Z
    :goto_167
    if-eqz v6, :cond_17f

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4107
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v7

    if-nez v7, :cond_17d

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4108
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFullScreenRelaunchMode()Z

    move-result v7

    if-eqz v7, :cond_17f

    :cond_17d
    move v7, v1

    goto :goto_180

    :cond_17f
    move v7, v2

    :goto_180
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 4110
    if-eqz v6, :cond_1a6

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4111
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v7

    if-eqz v7, :cond_1a6

    .line 4112
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v8, v8, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inMiuiGameSizeCompat(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a6

    .line 4113
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v7

    if-nez v7, :cond_1a6

    move v7, v1

    goto :goto_1a7

    :cond_1a6
    move v7, v2

    :goto_1a7
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    .line 4116
    if-eqz v6, :cond_1b7

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4117
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isEligibleForLetterboxEducation()Z

    move-result v7

    if-eqz v7, :cond_1b7

    move v7, v1

    goto :goto_1b8

    :cond_1b7
    move v7, v2

    :goto_1b8
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    .line 4119
    if-eqz v6, :cond_1c5

    .line 4120
    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getCameraCompatControlState()I

    move-result v7

    goto :goto_1c6

    .line 4121
    :cond_1c5
    move v7, v2

    :goto_1c6
    iput v7, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 4123
    iget-object v7, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4124
    iget-object v7, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v7}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 4125
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v7, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 4128
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eqz v7, :cond_1e9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_1ea

    :cond_1e9
    move-object v7, v5

    .line 4129
    .local v7, "parentTask":Lcom/android/server/wm/Task;
    :goto_1ea
    const/4 v8, -0x1

    if-eqz v7, :cond_1f4

    iget-boolean v9, v7, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_1f4

    .line 4130
    iget v9, v7, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1f5

    .line 4131
    :cond_1f4
    move v9, v8

    :goto_1f5
    iput v9, p1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 4132
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v9

    iput-boolean v9, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 4133
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v9

    iput-boolean v9, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 4134
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v9

    iput-boolean v9, p1, Landroid/app/TaskInfo;->isSleeping:Z

    .line 4135
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 4136
    .local v9, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_213

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    :cond_213
    iput-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 4138
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_225

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v5, :cond_225

    move v5, v1

    goto :goto_226

    :cond_225
    move v5, v2

    :goto_226
    iput-boolean v5, p1, Landroid/app/TaskInfo;->mIsCastMode:Z

    .line 4141
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isSplitScreenRootTask()Z

    move-result v5

    if-eqz v5, :cond_238

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v8, v5, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_238
    iput v8, p1, Landroid/app/TaskInfo;->topChildTaskId:I

    .line 4142
    iget-object v5, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_24f

    .line 4143
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 4144
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4143
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inMultipleTaskWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24f

    goto :goto_250

    :cond_24f
    move v1, v2

    :goto_250
    iput-boolean v1, p1, Landroid/app/TaskInfo;->supportMultipleTask:Z

    .line 4146
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v1

    if-eqz v1, :cond_26d

    .line 4147
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v1

    .line 4148
    .local v1, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v1, :cond_26a

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->hadHideStackFormFullScreen()Z

    move-result v2

    :cond_26a
    iput-boolean v2, p1, Landroid/app/TaskInfo;->isHiddenFreeformTask:Z

    .line 4149
    .end local v1    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    goto :goto_26f

    .line 4150
    :cond_26d
    iput-boolean v2, p1, Landroid/app/TaskInfo;->isHiddenFreeformTask:Z

    .line 4153
    :goto_26f
    return-void
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2087
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2088
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2087
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2089
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2090
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2091
    return-object v1
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 6204
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6205
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_d

    goto/16 :goto_b0

    .line 6208
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_3c

    .line 6211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6212
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6211
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    return-object v1

    .line 6215
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6216
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6215
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6217
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6218
    .local v1, "finishedTask":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    .line 6219
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6223
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 6224
    .local v5, "activityBelow":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_af

    .line 6225
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 6226
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_8e

    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v6, v7, :cond_af

    .line 6228
    :cond_8e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6229
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6228
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6230
    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6235
    :cond_af
    return-object v1

    .line 6206
    .end local v1    # "finishedTask":Lcom/android/server/wm/Task;
    .end local v5    # "activityBelow":Lcom/android/server/wm/ActivityRecord;
    :cond_b0
    :goto_b0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 6239
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 6240
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 6239
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6241
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 6242
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6243
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3708
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3709
    .local v0, "count":I
    const/4 v1, 0x1

    .line 3710
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_23

    .line 3711
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_22

    .line 3712
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3713
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1f

    .line 3714
    const/4 v1, 0x0

    .line 3715
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3711
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2    # "i":I
    :cond_22
    goto :goto_3b

    .line 3719
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 3720
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3721
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_38

    .line 3722
    const/4 v1, 0x0

    .line 3723
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3719
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 3727
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3728
    :cond_40
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 3751
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    .line 3752
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 3753
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3754
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_21

    .line 3755
    const/4 v0, 0x0

    .line 3756
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3757
    return v2

    .line 3752
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3761
    .end local v1    # "i":I
    :cond_24
    if-eqz v0, :cond_2b

    .line 3762
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3764
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 3770
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3800
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3738
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3739
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3741
    :cond_9
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)Z"
        }
    .end annotation

    .line 3804
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3732
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3733
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3734
    return-void
.end method

.method forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 3745
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 3746
    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .registers 2

    .line 7125
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 3316
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3317
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_a

    .line 3318
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_d

    .line 3320
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3322
    :goto_d
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    .line 1488
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    .line 1490
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1491
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 6958
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6959
    return-void
.end method

.method getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2881
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5

    .line 2882
    return-object p0

    .line 2884
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2885
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2886
    return-object v1

    .line 2888
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2889
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_18
    return-object v1
.end method

.method getDescendantTaskCount()I
    .registers 5

    .line 2917
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2918
    .local v0, "currentCount":[I
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 2919
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2918
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2920
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2921
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2922
    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3360
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3361
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3362
    return-void

    .line 3365
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3366
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3369
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 3370
    invoke-virtual {v4}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v3

    .line 3371
    .local v4, "dockedResizing":Z
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 3372
    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    .line 3373
    .local v2, "foundTop":[Z
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>()V

    const-class v6, Lcom/android/server/wm/ActivityRecord;

    .line 3374
    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v6

    .line 3373
    invoke-static {v5, v6, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v5

    .line 3375
    .local v5, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3376
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3377
    aget-boolean v3, v2, v3

    if-eqz v3, :cond_45

    .line 3378
    return-void

    .line 3382
    .end local v2    # "foundTop":[Z
    .end local v5    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_65

    .line 3389
    if-eqz v4, :cond_51

    .line 3390
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_6c

    .line 3392
    :cond_51
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3393
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3394
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6c

    .line 3397
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3399
    :goto_6c
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 3847
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3848
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3852
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3853
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3854
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3863
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_37

    .line 3867
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3864
    :cond_37
    :goto_37
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayCutoutInsets()Landroid/graphics/Rect;
    .registers 5

    .line 4220
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_e

    goto :goto_37

    .line 4221
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4222
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_16

    .line 4223
    const/4 v2, 0x0

    goto :goto_22

    .line 4226
    :cond_16
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/TaskStub;->getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    :goto_22
    nop

    .line 4228
    .local v2, "displayCutoutMode":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_35

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    goto :goto_35

    .line 4230
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_36

    :cond_35
    :goto_35
    nop

    .line 4228
    :goto_36
    return-object v1

    .line 4220
    .end local v0    # "w":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayCutoutMode":I
    :cond_37
    :goto_37
    return-object v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 7121
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    .line 3445
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 6758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6760
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6761
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_3c

    .line 6762
    :cond_19
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6763
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6764
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2b

    .line 6765
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6767
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    goto :goto_3c

    .line 6768
    :cond_2c
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 6769
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 6771
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6777
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    :goto_3c
    const/4 v1, -0x1

    if-eq p2, v1, :cond_57

    .line 6778
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_45
    if-ltz v1, :cond_57

    .line 6779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v2, p2, :cond_54

    .line 6780
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6778
    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 6784
    .end local v1    # "i":I
    :cond_57
    return-object v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 5

    .line 2745
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2746
    return-object v1

    .line 2750
    :cond_d
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2751
    .local v0, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2752
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    const/16 v3, 0x1b

    .line 2753
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    .line 2755
    .local v2, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v3

    if-nez v3, :cond_30

    .line 2756
    return-object v1

    .line 2758
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 7250
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getHasBeenVisible()Z
    .registers 2

    .line 4989
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 1094
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .registers 2

    .line 2735
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 5

    .line 2828
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2829
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2830
    return-object v1

    .line 2833
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2834
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_28

    .line 2837
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2838
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2840
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2836
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_32
    return-object v1
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3526
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3564
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, p1, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2868
    return-object p0

    .line 2870
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2871
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2872
    return-object v1

    .line 2874
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2875
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_16

    goto :goto_1a

    :cond_16
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_1a
    return-object v1
.end method

.method getOrientation(I)I
    .registers 3
    .param p1, "candidate"    # I

    .line 3694
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->getOrientation(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 4

    .line 7239
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 7240
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 7241
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 7242
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object v1

    .line 7245
    .end local v0    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 4204
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 5313
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1497
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "setToBottomIfNone"    # Z

    .line 1501
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 1505
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3817
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method getRootTaskId()I
    .registers 2

    .line 2861
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .registers 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 4247
    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 4248
    .local v0, "info":Landroid/window/StartingWindowInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4249
    nop

    .line 4250
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v1, v2, :cond_1d

    .line 4251
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-object v1, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4255
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4256
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    nop

    :goto_34
    iput-boolean v2, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 4259
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 4260
    iget v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5c

    .line 4262
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4263
    .local v1, "topMainWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_5c

    .line 4264
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4265
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->requestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    .line 4270
    .end local v1    # "topMainWin":Lcom/android/server/wm/WindowState;
    :cond_5c
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4271
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4272
    .local v1, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_81

    .line 4273
    nop

    .line 4274
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4275
    .local v2, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_81

    .line 4276
    nop

    .line 4277
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iput-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 4278
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4283
    .end local v2    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :cond_81
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isPackageNeedAdaptCutout(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/window/StartingWindowInfo;->adaptCutout:I

    .line 4286
    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3809
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3810
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_7

    return-object v0

    .line 3811
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, p0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 3689
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 4237
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4238
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 4239
    return-object v0
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3647
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method public getTopLeafTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2908
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2909
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2910
    .local v1, "child":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1b

    .line 2908
    .end local v1    # "child":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2911
    .restart local v1    # "child":Lcom/android/server/wm/Task;
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2913
    .end local v0    # "i":I
    .end local v1    # "child":Lcom/android/server/wm/Task;
    :cond_20
    return-object p0
.end method

.method getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_26

    .line 1403
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1404
    .local v1, "pausingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_23

    .line 1405
    return-object v1

    .line 1402
    .end local v1    # "pausingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1410
    .end local v0    # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1411
    .local v0, "taskPausingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1412
    .local v1, "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_5b

    .line 1413
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1414
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 1415
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_55

    .line 1416
    :cond_4c
    if-eqz v0, :cond_55

    .line 1417
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_55

    .line 1418
    move-object v1, v0

    .line 1420
    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    .line 1421
    return-object v1

    .line 1412
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 1424
    .end local v2    # "i":I
    :cond_5b
    const/4 v2, 0x0

    return-object v2
.end method

.method getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3668
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1373
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_26

    .line 1374
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1375
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_23

    .line 1376
    return-object v1

    .line 1373
    .end local v1    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1381
    .end local v0    # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1382
    .local v0, "taskResumedActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1383
    .local v1, "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_5b

    .line 1384
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1385
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 1386
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_55

    .line 1387
    :cond_4c
    if-eqz v0, :cond_55

    .line 1388
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_55

    .line 1389
    move-object v1, v0

    .line 1391
    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    .line 1392
    return-object v1

    .line 1383
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 1395
    .end local v2    # "i":I
    :cond_5b
    const/4 v2, 0x0

    return-object v2
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3659
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 3609
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3610
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3672
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method goToSleepIfPossible(Z)Z
    .registers 6
    .param p1, "shuttingDown"    # Z

    .line 5654
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 5655
    .local v1, "sleepInProgress":[I
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    invoke-direct {v3, p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(Z[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5660
    aget v3, v1, v2

    if-nez v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 4

    .line 3215
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3216
    return v1

    .line 3223
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 3224
    return v2

    .line 3230
    :cond_10
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    move v1, v2

    :cond_21
    return v1
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 7

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    .line 2026
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-ne v1, v4, :cond_3d

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_3d

    move v3, v4

    goto :goto_3e

    :cond_3d
    nop

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_7b

    .line 2026
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2030
    :cond_43
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2031
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_75

    iget-boolean v5, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_75

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2032
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_75

    .line 2033
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_75

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 2034
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    if-ne v5, v2, :cond_75

    move v3, v4

    goto :goto_76

    :cond_75
    nop

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_43 .. :try_end_77} :catchall_7b

    .line 2031
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2036
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 5296
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .registers 2

    .line 5303
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method isAnimatingByRecents()Z
    .registers 3

    .line 3605
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 2079
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method public isCompatible(II)Z
    .registers 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 3190
    if-nez p2, :cond_3

    .line 3193
    const/4 p2, 0x1

    .line 3195
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 3441
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFocused()Z
    .registers 3

    .line 5125
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_c

    goto :goto_18

    .line 5128
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 5126
    :cond_18
    :goto_18
    return v1
.end method

.method isFocusedRootTaskOnDisplay()Z
    .registers 2

    .line 5673
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected isForceHidden()Z
    .registers 2

    .line 5308
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isInChangeTransition()Z
    .registers 2

    .line 2740
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4300
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4301
    return-object v0

    .line 4303
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4304
    return-object p1

    .line 4306
    :cond_b
    return-object v0
.end method

.method isLeafTask()Z
    .registers 4

    .line 2898
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 2899
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2900
    const/4 v1, 0x0

    return v1

    .line 2898
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2903
    .end local v0    # "i":I
    :cond_1d
    return v1
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 5515
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isOrganized()Z
    .registers 2

    .line 4929
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 3265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .registers 7
    .param p1, "checkPictureInPictureSupport"    # Z

    .line 3269
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 3270
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 3271
    .local v0, "forceResizable":Z
    :goto_11
    if-nez v0, :cond_53

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3

    if-nez v3, :cond_53

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz v3, :cond_21

    if-nez p1, :cond_53

    .line 3274
    :cond_21
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3276
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-lt v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_4d

    .line 3278
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 3279
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 3281
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_53
    move v1, v2

    .line 3271
    :cond_54
    return v1
.end method

.method isRootTask()Z
    .registers 2

    .line 2894
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1c

    .line 1238
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1240
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public isSplitScreenRootTask()Z
    .registers 4

    .line 7700
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_2d

    .line 7702
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7703
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7704
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7705
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 7700
    :goto_2e
    return v1
.end method

.method isTaskId(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 4290
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTopRootTaskInDisplayArea()Z
    .registers 3

    .line 5664
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5665
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1519
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1520
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1519
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1521
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 1522
    .local v1, "isUidPresent":Z
    :goto_1c
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1523
    return v1
.end method

.method synthetic lambda$dismissPip$32$com-android-server-wm-Task()V
    .registers 5

    .line 6932
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6933
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 6937
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6938
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6941
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 6942
    return-void
.end method

.method synthetic lambda$getNextFocusableTask$9$com-android-server-wm-Task(ZLjava/lang/Object;)Z
    .registers 5
    .param p1, "allowFocusSelf"    # Z
    .param p2, "task"    # Ljava/lang/Object;

    .line 2945
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2946
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2947
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-nez p1, :cond_15

    if-eq p2, p0, :cond_28

    :cond_15
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2948
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_26

    .line 2949
    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 2947
    :goto_29
    return v1
.end method

.method synthetic lambda$getOccludingActivityAbove$10$com-android-server-wm-Task(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3527
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    .line 3529
    return v0

    .line 3532
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3533
    return v2

    .line 3536
    :cond_c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 3537
    .local v1, "parent":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v1, v3, :cond_17

    .line 3539
    return v0

    .line 3541
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3544
    return v0

    .line 3548
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 3549
    .local v3, "grandParent":Lcom/android/server/wm/TaskFragment;
    :goto_2a
    if-eqz v3, :cond_50

    .line 3550
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 3552
    goto :goto_50

    .line 3554
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3557
    return v0

    .line 3559
    :cond_46
    move-object v1, v3

    .line 3560
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    goto :goto_2a

    .line 3562
    :cond_50
    :goto_50
    return v2
.end method

.method synthetic lambda$inFrontOfStandardRootTask$28$com-android-server-wm-Task([ZLcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "hasFound"    # [Z
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 6285
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 6286
    return v2

    .line 6288
    :cond_7
    if-ne p2, p0, :cond_b

    .line 6290
    aput-boolean v2, p1, v0

    .line 6292
    :cond_b
    return v0
.end method

.method synthetic lambda$removeActivities$2$com-android-server-wm-Task(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "excludingTaskOverlay"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1771
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_14

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 1775
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1776
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1777
    return-void

    .line 1772
    :cond_14
    :goto_14
    return-void
.end method

.method synthetic lambda$removeActivities$3$com-android-server-wm-Task(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "excludingTaskOverlay"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1780
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_30

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_30

    .line 1786
    :cond_d
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p3, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x2

    .line 1787
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2b

    .line 1790
    :cond_27
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_2f

    .line 1788
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1792
    :goto_2f
    return-void

    .line 1781
    :cond_30
    :goto_30
    return-void
.end method

.method synthetic lambda$setWindowingMode$21$com-android-server-wm-Task(IZ)V
    .registers 3
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5337
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1883
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_2c

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1888
    :pswitch_1c
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1887
    :pswitch_1f
    const-string v0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object v0

    .line 1886
    :pswitch_22
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1885
    :pswitch_25
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1884
    :pswitch_28
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 3576
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method maybeApplyLastRecentsAnimationTransaction()V
    .registers 4

    .line 7075
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_22

    .line 7076
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 7077
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_11

    .line 7078
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7080
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 7084
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7085
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7086
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7088
    .end local v0    # "tx":Landroid/view/SurfaceControl$Transaction;
    :cond_22
    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2631
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 2632
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    .line 2634
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2636
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_1c

    .line 2637
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->migrateToNewSurfaceControl(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V

    .line 2640
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2641
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2642
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2643
    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5627
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x456f6dcc    # -0.00110299f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5629
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_23
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 5630
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 5632
    invoke-static {}, Lcom/android/server/wm/MiuiMiPerfStub;->getInstance()Lcom/android/server/wm/MiuiMiPerfStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiMiPerfStub;->onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 5634
    return-void
.end method

.method final moveActivityToFront(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 10
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1548
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1b9e2278

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v2, v6, v1

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1550
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1552
    .local v0, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eq v0, p0, :cond_4e

    .line 1553
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 1554
    iput-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 1556
    :cond_37
    const v1, 0x7fffffff

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1557
    const/4 v1, 0x1

    .line 1558
    .local v1, "moved":Z
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1559
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1560
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_52

    .line 1563
    .end local v1    # "moved":Z
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->moveChildToFront(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    .line 1565
    .restart local v1    # "moved":Z
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1566
    return v1
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 9
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 6603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6607
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 6608
    return v2

    .line 6614
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_67

    .line 6615
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6616
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_41

    .line 6617
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6619
    :cond_41
    if-eqz v0, :cond_67

    .line 6621
    const/4 v4, 0x1

    .line 6623
    .local v4, "moveOK":Z
    :try_start_44
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v5
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_4e} :catch_50

    move v4, v5

    .line 6629
    :goto_4f
    goto :goto_64

    .line 6627
    :catch_50
    move-exception v5

    .line 6628
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "IActivityController activityResuming catch NullPointerException"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 6624
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_57
    move-exception v5

    .line 6625
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6626
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 6630
    :goto_64
    if-nez v4, :cond_67

    .line 6631
    return v2

    .line 6636
    .end local v0    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "moveOK":Z
    :cond_67
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to back transition: task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6643
    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 6644
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_ac

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_ac

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 6646
    :cond_a1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6647
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    .line 6651
    :cond_ac
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->resetMiuiEmbedStateIfNeeded(Lcom/android/server/wm/Task;)V

    .line 6653
    const-string/jumbo v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 6655
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_c6

    .line 6656
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 6657
    return v4

    .line 6660
    :cond_c6
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_d3

    .line 6661
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3, v5, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 6666
    :cond_d3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6667
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6668
    .local v2, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_f1

    if-eq v2, p0, :cond_f1

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 6671
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_f6

    .line 6673
    :cond_f1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 6675
    :goto_f6
    return v4
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 6478
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 6479
    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 15
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 6483
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToFront: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    :cond_1d
    nop

    .line 6485
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6484
    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6487
    .local v0, "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 6488
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-nez v2, :cond_8d

    .line 6489
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchParamsController;->hasFreeformDesktopMemory(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 6490
    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/LaunchParamsController;->getFreeformLastPosition(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6491
    .local v2, "launchBounds":Landroid/graphics/Rect;
    new-array v5, v3, [F

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/wm/LaunchParamsController;->getFreeformLastScale(Lcom/android/server/wm/Task;)F

    move-result v6

    aput v6, v5, v4

    .line 6492
    .local v5, "launchScale":[F
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v6, v2, v5, p1, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getFreeformRectDesktop(Landroid/graphics/Rect;[FLcom/android/server/wm/Task;Z)V

    .line 6493
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .end local v2    # "launchBounds":Landroid/graphics/Rect;
    .end local v5    # "launchScale":[F
    goto :goto_8c

    .line 6494
    :cond_72
    if-eqz p3, :cond_8c

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_8c

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eq v2, v5, :cond_8c

    .line 6495
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_eb

    .line 6494
    :cond_8c
    :goto_8c
    goto :goto_eb

    .line 6498
    :cond_8d
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 6499
    .local v2, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v2, :cond_a2

    .line 6500
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v5, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->fullscreenToFreeformAndShowHidden(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V

    .line 6502
    .end local v2    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_a2
    goto :goto_eb

    .line 6503
    :cond_a3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_eb

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-nez v2, :cond_eb

    .line 6504
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-nez v2, :cond_eb

    if-eqz p3, :cond_c4

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_eb

    .line 6505
    :cond_c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " task "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " moveTaskToFront: hideOtherFreeform "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6506
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->hideOtherFreeform()V

    .line 6508
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_105

    .line 6510
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 6511
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 6512
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->moveTaskToFront(Lcom/android/server/wm/Task;)V

    .line 6516
    :cond_105
    const/4 v2, 0x3

    if-eq p1, p0, :cond_118

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 6518
    if-eqz p2, :cond_114

    .line 6519
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_117

    .line 6521
    :cond_114
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 6523
    :goto_117
    return-void

    .line 6526
    :cond_118
    if-eqz p4, :cond_12f

    .line 6528
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>()V

    const-class v6, Lcom/android/server/wm/ActivityRecord;

    .line 6529
    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v6

    .line 6528
    invoke-static {v5, v6, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v5

    .line 6530
    .local v5, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6531
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6538
    .end local v5    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_12f
    :try_start_12f
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 6541
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 6542
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1a9

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v6

    if-nez v6, :cond_142

    goto/16 :goto_1a9

    .line 6552
    :cond_142
    invoke-virtual {v5, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 6554
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v6, :cond_15f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prepare to front transition: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6555
    :cond_15f
    const/4 v1, 0x0

    if-eqz p2, :cond_172

    .line 6556
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6557
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6558
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_198

    .line 6563
    :cond_172
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 6564
    .local v6, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_181

    .line 6565
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_182

    :cond_181
    move-object v7, v1

    .line 6566
    .local v7, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_182
    if-ne v5, v7, :cond_185

    goto :goto_186

    :cond_185
    move v3, v4

    .line 6567
    .local v3, "isTopAlready":Z
    :goto_186
    if-eqz v3, :cond_195

    if-eqz p1, :cond_195

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_191

    goto :goto_195

    .line 6570
    :cond_191
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_198

    .line 6568
    :cond_195
    :goto_195
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 6581
    .end local v3    # "isTopAlready":Z
    .end local v6    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v7    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_198
    invoke-static {v0, p1, v1, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 6583
    if-nez p5, :cond_1a2

    .line 6584
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_1a2
    .catchall {:try_start_12f .. :try_end_1a2} :catchall_1c2

    .line 6587
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1a2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6588
    nop

    .line 6589
    return-void

    .line 6543
    .restart local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1a9
    :goto_1a9
    :try_start_1a9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 6544
    if-eqz v5, :cond_1b9

    .line 6545
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 6547
    :cond_1b9
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_1bc
    .catchall {:try_start_1a9 .. :try_end_1bc} :catchall_1c2

    .line 6587
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6548
    return-void

    .line 6587
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_1c2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6588
    throw v1
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 5575
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5576
    return-void

    .line 5579
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 5580
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5581
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_53

    .line 5584
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 5585
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 5586
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    :goto_1e
    if-eqz v2, :cond_24

    .line 5587
    invoke-virtual {v2, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_3e

    .line 5589
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5590
    .local v3, "lastFocusedTask":Lcom/android/server/wm/Task;
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5591
    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5592
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    .line 5593
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 5592
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5595
    .end local v3    # "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_3e
    if-eqz p2, :cond_52

    if-eq p2, p0, :cond_52

    .line 5596
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 5597
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 5598
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 5597
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5600
    :cond_52
    return-void

    .line 5602
    .end local v1    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "parentTask":Lcom/android/server/wm/Task;
    :cond_53
    if-eqz p2, :cond_5c

    if-ne p2, p0, :cond_58

    goto :goto_5c

    .line 5609
    :cond_58
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 5610
    return-void

    .line 5603
    :cond_5c
    :goto_5c
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 5519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5520
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 5523
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mMoveAdjacentTogether:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 5524
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5525
    .local v0, "adjacentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2b

    .line 5526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adjacentTaskToTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5529
    .end local v0    # "adjacentTask":Lcom/android/server/wm/Task;
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5530
    return-void
.end method

.method moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 5538
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5539
    return-void

    .line 5542
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 5544
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5546
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnToHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 5552
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 5553
    .local v1, "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_3c
    if-nez p2, :cond_3f

    .line 5554
    move-object p2, p0

    .line 5556
    :cond_3f
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5557
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5559
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    iget v3, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/TaskStub;->notifyMovetoFront(IZ)V

    .line 5560
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 5561
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->moveToFront(Lcom/android/server/wm/Task;)V

    .line 5563
    :cond_67
    invoke-static {}, Lcom/android/server/wm/MiuiDesktopModeControllerStub;->getInstance()Lcom/android/server/wm/MiuiDesktopModeControllerStub;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/android/server/wm/MiuiDesktopModeControllerStub;->notifyMoveToFront(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5565
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 45
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "destGrants"    # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;
    .param p6, "resultGrants"    # Lcom/android/server/uri/NeededUriGrants;

    .line 6335
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_e

    .line 6338
    return v14

    .line 6340
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 6341
    .local v13, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 6342
    return v14

    .line 6345
    :cond_19
    invoke-virtual {v13, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6346
    .local v0, "parent":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x0

    .line 6347
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 6348
    .local v12, "dest":Landroid/content/ComponentName;
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v11, 0x1

    if-eq v4, v2, :cond_3b

    if-eqz v12, :cond_3b

    .line 6349
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    invoke-direct {v4, v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v13, v4, v2, v14, v11}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 6353
    .local v4, "candidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_3b

    .line 6354
    move-object v0, v4

    .line 6355
    const/4 v3, 0x1

    move/from16 v17, v3

    goto :goto_3e

    .line 6361
    .end local v4    # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_3b
    move-object v4, v0

    move/from16 v17, v3

    .end local v0    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "foundParentInTask":Z
    .local v4, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v17, "foundParentInTask":Z
    :goto_3e
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6362
    .local v3, "controller":Landroid/app/IActivityController;
    const/4 v5, -0x1

    if-eqz v3, :cond_70

    .line 6363
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v0, v5}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 6364
    .local v6, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_70

    .line 6366
    const/4 v7, 0x1

    .line 6368
    .local v7, "resumeOK":Z
    :try_start_4e
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_5f
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_54} :catch_56

    move v7, v0

    .line 6374
    :goto_55
    goto :goto_6d

    .line 6372
    :catch_56
    move-exception v0

    .line 6373
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "ActivityTaskManager"

    const-string v9, "IActivityController activityResuming catch NullPointerException"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 6369
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_5f
    move-exception v0

    .line 6370
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v8, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6371
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_55

    .line 6376
    :goto_6d
    if-nez v7, :cond_70

    .line 6377
    return v14

    .line 6381
    .end local v6    # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "resumeOK":Z
    :cond_70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 6383
    .local v18, "origId":J
    new-array v10, v11, [I

    .line 6384
    .local v10, "resultCodeHolder":[I
    aput p4, v10, v14

    .line 6385
    new-array v9, v11, [Landroid/content/Intent;

    .line 6386
    .local v9, "resultDataHolder":[Landroid/content/Intent;
    aput-object p5, v9, v14

    .line 6387
    new-array v8, v11, [Lcom/android/server/uri/NeededUriGrants;

    .line 6388
    .local v8, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    aput-object p6, v8, v14

    .line 6389
    move-object v7, v4

    .line 6390
    .local v7, "finalParent":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    invoke-direct {v0, v7, v10, v9, v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v13, v0, v2, v11, v11}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 6400
    aget v20, v10, v14

    .line 6401
    .end local p4    # "resultCode":I
    .local v20, "resultCode":I
    aget-object v21, v9, v14

    .line 6403
    .end local p5    # "resultData":Landroid/content/Intent;
    .local v21, "resultData":Landroid/content/Intent;
    if-eqz v4, :cond_1e6

    if-eqz v17, :cond_1e6

    .line 6404
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6405
    .local v6, "callingUid":I
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v13

    .end local v13    # "task":Lcom/android/server/wm/Task;
    .local v16, "task":Lcom/android/server/wm/Task;
    iget v13, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 6406
    .local v13, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    .line 6407
    .local v22, "destIntentFlags":I
    move-object/from16 v23, v12

    .end local v12    # "dest":Landroid/content/ComponentName;
    .local v23, "dest":Landroid/content/ComponentName;
    const/4 v12, 0x2

    move-object/from16 v24, v7

    .end local v7    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .local v24, "finalParent":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x3

    if-eq v13, v7, :cond_140

    if-eq v13, v12, :cond_140

    if-eq v13, v11, :cond_140

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_bc

    move v14, v6

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    goto/16 :goto_147

    .line 6430
    :cond_bc
    :try_start_bc
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6431
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-wide/16 v11, 0x400

    iget v14, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6430
    invoke-interface {v0, v7, v11, v12, v14}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 6434
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v7

    const-string/jumbo v11, "navigateUpTo"

    .line 6435
    invoke-virtual {v7, v15, v11}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6436
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6437
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 6438
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6439
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6440
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6441
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 6442
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6443
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6444
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6445
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6446
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_112} :catch_11b

    .line 6447
    .local v5, "res":I
    if-nez v5, :cond_116

    move v14, v11

    goto :goto_117

    :cond_116
    const/4 v14, 0x0

    :goto_117
    move v0, v14

    .line 6450
    .end local v5    # "res":I
    .end local v17    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    move/from16 v17, v0

    goto :goto_11f

    .line 6448
    .end local v0    # "foundParentInTask":Z
    .restart local v17    # "foundParentInTask":Z
    :catch_11b
    move-exception v0

    .line 6449
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 6451
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11f
    const/4 v0, 0x1

    const-string/jumbo v11, "navigate-top"

    move-object v5, v4

    move v14, v6

    .end local v6    # "callingUid":I
    .local v14, "callingUid":I
    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v25, v8

    .end local v8    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v25, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v8, p6

    move-object/from16 v27, v9

    .end local v9    # "resultDataHolder":[Landroid/content/Intent;
    .local v27, "resultDataHolder":[Landroid/content/Intent;
    move-object v9, v11

    move-object/from16 v28, v10

    .end local v10    # "resultCodeHolder":[I
    .local v28, "resultCodeHolder":[I
    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v5, p3

    move-object/from16 v34, v3

    move-object v7, v4

    move-object v4, v15

    move-object/from16 v30, v16

    goto/16 :goto_1f8

    .line 6407
    .end local v14    # "callingUid":I
    .end local v25    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v27    # "resultDataHolder":[Landroid/content/Intent;
    .end local v28    # "resultCodeHolder":[I
    .restart local v6    # "callingUid":I
    .restart local v8    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v9    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v10    # "resultCodeHolder":[I
    :cond_140
    move v14, v6

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    .line 6413
    .end local v6    # "callingUid":I
    .end local v8    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "resultDataHolder":[Landroid/content/Intent;
    .end local v10    # "resultCodeHolder":[I
    .restart local v14    # "callingUid":I
    .restart local v25    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v27    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v28    # "resultCodeHolder":[I
    :goto_147
    :try_start_147
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 6414
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v9

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/SecurityException; {:try_start_147 .. :try_end_155} :catch_1a0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 p4, v13

    .end local v13    # "parentLaunchMode":I
    .local p4, "parentLaunchMode":I
    :try_start_15d
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;
    :try_end_15f
    .catch Ljava/lang/SecurityException; {:try_start_15d .. :try_end_15f} :catch_18e

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 6413
    move-object/from16 v34, v3

    .end local v3    # "controller":Landroid/app/IActivityController;
    .local v34, "controller":Landroid/app/IActivityController;
    move-object v3, v0

    move-object/from16 v35, v4

    .end local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v35, "parent":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, p2

    move v7, v8

    move v8, v9

    move v9, v14

    move/from16 v36, v11

    move-object/from16 v11, v29

    move/from16 v29, v12

    move/from16 v12, v30

    move/from16 v37, p4

    move-object v0, v13

    move-object/from16 v30, v16

    .end local v16    # "task":Lcom/android/server/wm/Task;
    .end local p4    # "parentLaunchMode":I
    .local v30, "task":Lcom/android/server/wm/Task;
    .local v37, "parentLaunchMode":I
    move/from16 v13, v31

    move/from16 p4, v14

    const/16 v26, 0x0

    .end local v14    # "callingUid":I
    .local p4, "callingUid":I
    move-object v14, v0

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    :try_start_185
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_189
    .catch Ljava/lang/SecurityException; {:try_start_185 .. :try_end_189} :catch_18c

    xor-int/lit8 v0, v0, 0x1

    .line 6420
    .local v0, "abort":Z
    goto :goto_1b3

    .line 6418
    .end local v0    # "abort":Z
    :catch_18c
    move-exception v0

    goto :goto_1b1

    .end local v30    # "task":Lcom/android/server/wm/Task;
    .end local v34    # "controller":Landroid/app/IActivityController;
    .end local v35    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v37    # "parentLaunchMode":I
    .restart local v3    # "controller":Landroid/app/IActivityController;
    .restart local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v14    # "callingUid":I
    .restart local v16    # "task":Lcom/android/server/wm/Task;
    .local p4, "parentLaunchMode":I
    :catch_18e
    move-exception v0

    move/from16 v37, p4

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v11

    move/from16 v29, v12

    move/from16 p4, v14

    move-object/from16 v30, v16

    const/16 v26, 0x0

    .end local v3    # "controller":Landroid/app/IActivityController;
    .end local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v14    # "callingUid":I
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "task":Lcom/android/server/wm/Task;
    .restart local v34    # "controller":Landroid/app/IActivityController;
    .restart local v35    # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v37    # "parentLaunchMode":I
    .local p4, "callingUid":I
    goto :goto_1b1

    .end local v30    # "task":Lcom/android/server/wm/Task;
    .end local v34    # "controller":Landroid/app/IActivityController;
    .end local v35    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v37    # "parentLaunchMode":I
    .end local p4    # "callingUid":I
    .restart local v3    # "controller":Landroid/app/IActivityController;
    .restart local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "parentLaunchMode":I
    .restart local v14    # "callingUid":I
    .restart local v16    # "task":Lcom/android/server/wm/Task;
    :catch_1a0
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v11

    move/from16 v29, v12

    move/from16 v37, v13

    move/from16 p4, v14

    move-object/from16 v30, v16

    const/16 v26, 0x0

    .line 6419
    .end local v3    # "controller":Landroid/app/IActivityController;
    .end local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "parentLaunchMode":I
    .end local v14    # "callingUid":I
    .end local v16    # "task":Lcom/android/server/wm/Task;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v30    # "task":Lcom/android/server/wm/Task;
    .restart local v34    # "controller":Landroid/app/IActivityController;
    .restart local v35    # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v37    # "parentLaunchMode":I
    .restart local p4    # "callingUid":I
    :goto_1b1
    const/4 v3, 0x1

    move v0, v3

    .line 6421
    .local v0, "abort":Z
    :goto_1b3
    if-eqz v0, :cond_1d8

    .line 6422
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "238605611"

    aput-object v5, v4, v26

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v36

    const-string v5, ""

    aput-object v5, v4, v29

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6423
    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v17, v3

    move-object/from16 v7, v35

    .end local v17    # "foundParentInTask":Z
    .local v3, "foundParentInTask":Z
    goto :goto_1e5

    .line 6425
    .end local v3    # "foundParentInTask":Z
    .restart local v17    # "foundParentInTask":Z
    :cond_1d8
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, v35

    .end local v35    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local p4    # "callingUid":I
    .restart local v6    # "callingUid":I
    .local v7, "parent":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7, v6, v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 6428
    .end local v0    # "abort":Z
    :goto_1e5
    goto :goto_1f8

    .line 6403
    .end local v6    # "callingUid":I
    .end local v22    # "destIntentFlags":I
    .end local v23    # "dest":Landroid/content/ComponentName;
    .end local v24    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v25    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v27    # "resultDataHolder":[Landroid/content/Intent;
    .end local v28    # "resultCodeHolder":[I
    .end local v30    # "task":Lcom/android/server/wm/Task;
    .end local v34    # "controller":Landroid/app/IActivityController;
    .end local v37    # "parentLaunchMode":I
    .local v3, "controller":Landroid/app/IActivityController;
    .restart local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v7, "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v9    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v10    # "resultCodeHolder":[I
    .restart local v12    # "dest":Landroid/content/ComponentName;
    .local v13, "task":Lcom/android/server/wm/Task;
    :cond_1e6
    move-object/from16 v5, p3

    move-object/from16 v34, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object/from16 v30, v13

    move-object v7, v4

    move-object v4, v15

    .line 6455
    .end local v3    # "controller":Landroid/app/IActivityController;
    .end local v4    # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v9    # "resultDataHolder":[Landroid/content/Intent;
    .end local v10    # "resultCodeHolder":[I
    .end local v12    # "dest":Landroid/content/ComponentName;
    .end local v13    # "task":Lcom/android/server/wm/Task;
    .local v7, "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v23    # "dest":Landroid/content/ComponentName;
    .restart local v24    # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v27    # "resultDataHolder":[Landroid/content/Intent;
    .restart local v28    # "resultCodeHolder":[I
    .restart local v30    # "task":Lcom/android/server/wm/Task;
    .restart local v34    # "controller":Landroid/app/IActivityController;
    :goto_1f8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6456
    return v17
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5770
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5771
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5772
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5775
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5776
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5777
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5778
    iget-object v1, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5780
    if-eqz v0, :cond_43

    .line 5781
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 5782
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5784
    :try_start_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42

    .line 5787
    goto :goto_43

    .line 5786
    :catch_42
    move-exception v1

    .line 5791
    .end local v0    # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_43
    :goto_43
    return-void
.end method

.method public onARStopTriggered(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 7129
    sget-object v0, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 7130
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7131
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    invoke-static {v0, v3, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 7133
    :cond_1d
    return-void
.end method

.method onAppFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 5203
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 5204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5205
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 7020
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isSplitScreenRootTask()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 7022
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 7023
    return-void

    .line 7025
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 7027
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 7030
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p1, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 7031
    .local v0, "isTop":Z
    :goto_24
    if-eqz v0, :cond_2d

    .line 7032
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7033
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 7035
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 24
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2279
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 2280
    invoke-virtual {v0, v7}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2286
    return-void

    .line 2291
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2294
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-interface {v0, v8, v7}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->onConfigurationChangedForTask(Landroid/content/res/Configuration;Lcom/android/server/wm/Task;)V

    .line 2296
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2297
    return-void

    .line 2301
    :cond_24
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastRotationChanged()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastModeStackId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 2302
    return-void

    .line 2304
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v9

    .line 2305
    .local v9, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v10

    .line 2306
    .local v10, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v11

    .line 2308
    .local v11, "prevRotation":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2309
    .local v6, "preBounds":Landroid/graphics/Rect;
    iget-object v12, v7, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 2312
    .local v12, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v7, v12}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2314
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    .line 2317
    .local v13, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v13, :cond_63

    .line 2318
    return-void

    .line 2321
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v9, v0, :cond_6c

    .line 2322
    invoke-virtual {v13, v7}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    .line 2326
    :cond_6c
    const/4 v0, 0x5

    const-string v1, "ActivityTaskManager"

    const/4 v14, 0x1

    if-ne v9, v0, :cond_7f

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, v14, :cond_7f

    .line 2328
    const-string v2, "FDST freefrom to full..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iput-boolean v14, v7, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 2332
    :cond_7f
    iget-boolean v2, v7, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    const/4 v15, 0x0

    if-eqz v2, :cond_99

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-eq v9, v2, :cond_99

    if-ne v9, v0, :cond_92

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v14, :cond_99

    .line 2334
    :cond_92
    const-string v0, "FDST clear freefrom to full..."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iput-boolean v15, v7, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 2341
    :cond_99
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    invoke-interface {v0, v9, v2}, Lcom/android/server/wm/TaskStub;->onTaskConfigurationChanged(II)V

    .line 2345
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v5

    .line 2348
    .local v5, "overrideWindowingMode":I
    const/4 v0, 0x0

    .line 2349
    .local v0, "isEnterFreeformMode":Z
    const/4 v2, 0x0

    .line 2350
    .local v2, "isOutFreeformMode":Z
    const/4 v3, 0x0

    .line 2351
    .local v3, "isEnterAppCirculate":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2353
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v14, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v14, :cond_ee

    .line 2354
    iget-object v14, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    .line 2354
    invoke-interface {v14, v7, v9, v15}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->stackOnConfigurationChanged(Lcom/android/server/wm/Task;II)[Z

    move-result-object v14

    .line 2356
    .local v14, "isFreeformModeChanged":[Z
    if-eqz v14, :cond_ee

    .line 2357
    const/4 v15, 0x0

    aget-boolean v0, v14, v15

    .line 2358
    const/4 v15, 0x1

    aget-boolean v2, v14, v15

    .line 2359
    if-eqz v2, :cond_e5

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 2362
    .local v15, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_d4

    .line 2363
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->overrideOrientationForWindowMode()V

    .line 2366
    :cond_d4
    move/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "isEnterFreeformMode":Z
    .local v16, "isEnterFreeformMode":Z
    iput-boolean v0, v7, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    .line 2367
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>()V

    move/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "isOutFreeformMode":Z
    .local v17, "isOutFreeformMode":Z
    invoke-virtual {v7, v0, v2}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_e9

    .line 2359
    .end local v15    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "isEnterFreeformMode":Z
    .end local v17    # "isOutFreeformMode":Z
    .restart local v0    # "isEnterFreeformMode":Z
    .restart local v2    # "isOutFreeformMode":Z
    :cond_e5
    move/from16 v16, v0

    move/from16 v17, v2

    .line 2377
    .end local v0    # "isEnterFreeformMode":Z
    .end local v2    # "isOutFreeformMode":Z
    .end local v14    # "isFreeformModeChanged":[Z
    .restart local v16    # "isEnterFreeformMode":Z
    .restart local v17    # "isOutFreeformMode":Z
    :goto_e9
    move/from16 v14, v16

    move/from16 v15, v17

    goto :goto_f0

    .end local v16    # "isEnterFreeformMode":Z
    .end local v17    # "isOutFreeformMode":Z
    .restart local v0    # "isEnterFreeformMode":Z
    .restart local v2    # "isOutFreeformMode":Z
    :cond_ee
    move v14, v0

    move v15, v2

    .end local v0    # "isEnterFreeformMode":Z
    .end local v2    # "isOutFreeformMode":Z
    .local v14, "isEnterFreeformMode":Z
    .local v15, "isOutFreeformMode":Z
    :goto_f0
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/server/wm/ActivityRecordStub;->isWorldCirculate(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_106

    iget v0, v7, Lcom/android/server/wm/Task;->mLastDisplayId:I

    if-lez v0, :cond_103

    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mIsCirculatedToVirtual:Z

    if-eqz v0, :cond_103

    goto :goto_106

    .line 2382
    :cond_103
    move/from16 v16, v3

    goto :goto_109

    .line 2379
    :cond_106
    :goto_106
    const/4 v3, 0x1

    move/from16 v16, v3

    .line 2382
    .end local v3    # "isEnterAppCirculate":Z
    .local v16, "isEnterAppCirculate":Z
    :goto_109
    if-eqz v16, :cond_113

    .line 2383
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2388
    :cond_113
    if-eqz v14, :cond_11d

    .line 2389
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2394
    :cond_11d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged overrideWindowingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " prevWindowingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEnterFreeformMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isOutFreeformMode = + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "alreadySetFreeformBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v7, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " taskid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, v7, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-interface {v0, v7, v9, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackConfigurationChanged(Lcom/android/server/wm/Task;II)V

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_189

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_189

    iget-object v0, v7, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_19c

    :cond_189
    if-eqz v14, :cond_226

    iget-boolean v0, v7, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_19c

    .line 2404
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-nez v0, :cond_196

    goto :goto_19c

    :cond_196
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_22a

    .line 2407
    :cond_19c
    :goto_19c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 2408
    .local v3, "newRotation":I
    if-eq v11, v3, :cond_1a8

    const/4 v0, 0x1

    goto :goto_1a9

    :cond_1a8
    const/4 v0, 0x0

    :goto_1a9
    move/from16 v17, v0

    .line 2409
    .local v17, "rotationChanged":Z
    if-nez v17, :cond_1b6

    if-eqz v14, :cond_1b0

    goto :goto_1b6

    :cond_1b0
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_22a

    .line 2412
    :cond_1b6
    :goto_1b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 2413
    iget-object v0, v7, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v11, v3, v12}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    move v1, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_222

    .line 2414
    :cond_1c8
    if-nez v14, :cond_1e9

    if-eqz v17, :cond_1e3

    iget-object v0, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_1e3

    iget-object v0, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2415
    invoke-interface {v0, v7}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isSwitchingApp(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_1dd

    goto :goto_1e9

    :cond_1dd
    move v1, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    goto :goto_222

    .line 2414
    :cond_1e3
    move v1, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    goto :goto_222

    .line 2416
    :cond_1e9
    :goto_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    .line 2417
    .local v18, "topActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_20e

    iget-object v0, v7, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2418
    move-object/from16 v1, p0

    move v2, v14

    move/from16 v19, v3

    .end local v3    # "newRotation":I
    .local v19, "newRotation":I
    move v3, v11

    move-object/from16 v20, v4

    .end local v4    # "task":Lcom/android/server/wm/Task;
    .local v20, "task":Lcom/android/server/wm/Task;
    move/from16 v4, v19

    move/from16 v21, v5

    .end local v5    # "overrideWindowingMode":I
    .local v21, "overrideWindowingMode":I
    move-object v5, v12

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->getFreeformStackBounds(Lcom/android/server/wm/Task;ZIILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 2420
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    goto :goto_214

    .line 2417
    .end local v19    # "newRotation":I
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "overrideWindowingMode":I
    .restart local v3    # "newRotation":I
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "overrideWindowingMode":I
    :cond_20e
    move/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 2422
    .end local v3    # "newRotation":I
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "overrideWindowingMode":I
    .restart local v19    # "newRotation":I
    .restart local v20    # "task":Lcom/android/server/wm/Task;
    .restart local v21    # "overrideWindowingMode":I
    :cond_214
    :goto_214
    if-eqz v17, :cond_220

    .line 2423
    iget-object v0, v7, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move/from16 v1, v19

    .end local v19    # "newRotation":I
    .local v1, "newRotation":I
    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->setCameraOrientation(I)V

    goto :goto_222

    .line 2422
    .end local v1    # "newRotation":I
    .restart local v19    # "newRotation":I
    :cond_220
    move/from16 v1, v19

    .line 2427
    .end local v18    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "newRotation":I
    .restart local v1    # "newRotation":I
    :goto_222
    invoke-virtual {v7, v12}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_22a

    .line 2403
    .end local v1    # "newRotation":I
    .end local v17    # "rotationChanged":Z
    .end local v20    # "task":Lcom/android/server/wm/Task;
    .end local v21    # "overrideWindowingMode":I
    .restart local v4    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "overrideWindowingMode":I
    :cond_226
    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 2431
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "overrideWindowingMode":I
    .restart local v20    # "task":Lcom/android/server/wm/Task;
    .restart local v21    # "overrideWindowingMode":I
    :goto_22a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eq v10, v0, :cond_237

    .line 2435
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v7, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2437
    :cond_237
    return-void
.end method

.method onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "hadActivity"    # Z
    .param p2, "activityType"    # I
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1610
    const-string/jumbo v0, "onDescendantActivityAdded"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 1613
    if-nez p1, :cond_3e

    .line 1614
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1619
    invoke-virtual {p3, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1621
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1622
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1623
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1624
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1625
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1627
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1628
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 1627
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_47

    .line 1633
    :cond_3e
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    if-nez v0, :cond_47

    .line 1634
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1639
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, p3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->hideCallingTaskIfAddSpecificChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1640
    if-nez p1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1641
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackFirstActivityRecordAdded(I)V

    .line 1644
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1645
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 3200
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3201
    return v1

    .line 3206
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3208
    return v1

    .line 3210
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3241
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 3242
    .local v0, "isRootTask":Z
    if-nez v0, :cond_d

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_d

    .line 3243
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3245
    :cond_d
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2c

    .line 3247
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 3248
    .local v1, "displayId":I
    :goto_1f
    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3251
    .end local v1    # "displayId":I
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3253
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3254
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    :cond_3e
    move v1, v2

    .line 3255
    .local v1, "newDisplayId":I
    iget v2, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    if-eq v1, v2, :cond_4c

    .line 3256
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onDisplayChanged(II)V

    .line 3260
    .end local v1    # "newDisplayId":I
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 3262
    :cond_4f
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 11
    .param p1, "rawNewParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "rawOldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1269
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1270
    .local v0, "newParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1271
    .local v1, "oldParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_f

    :cond_e
    move-object v3, v2

    .line 1272
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    :goto_f
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v2

    .line 1274
    .local v4, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_17
    if-eqz v4, :cond_1c

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1d

    :cond_1c
    const/4 v5, -0x1

    :goto_1d
    iput v5, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1276
    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    .line 1277
    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V

    .line 1280
    :cond_26
    if-eqz v3, :cond_39

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1291
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 1290
    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1294
    :cond_39
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    invoke-interface {v5, v3, v6}, Lcom/android/server/wm/PreloadStateManagerStub;->stackOnParentChanged(Lcom/android/server/wm/DisplayContent;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    .line 1296
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v5

    invoke-interface {v5, p0, v0}, Lcom/android/server/wm/TaskStub;->onHoverModeTaskParentChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)V

    .line 1297
    invoke-super {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-nez v5, :cond_65

    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_65

    .line 1310
    iput-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1311
    iget-object v5, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1314
    :cond_65
    if-eqz v1, :cond_95

    .line 1315
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1316
    .local v5, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_82

    .line 1317
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>()V

    const-class v7, Lcom/android/server/wm/ActivityRecord;

    .line 1319
    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    .line 1317
    invoke-static {v6, v5, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 1320
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1321
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1324
    .end local v6    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_82
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_95

    if-eqz v0, :cond_90

    .line 1325
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-nez v6, :cond_95

    .line 1328
    :cond_90
    iget-object v6, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 1332
    .end local v5    # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_95
    if-eqz v0, :cond_b7

    .line 1335
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_aa

    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1341
    :cond_aa
    iget-object v2, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_b7

    .line 1343
    :try_start_ae
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b5} :catch_b6

    .line 1345
    goto :goto_b7

    .line 1344
    :catch_b6
    move-exception v2

    .line 1350
    :cond_b7
    :goto_b7
    if-nez v1, :cond_be

    if-eqz v0, :cond_be

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1358
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1361
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/server/wm/TaskStub;->onSplitScreenParentChanged(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 1363
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1366
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1367
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .registers 2

    .line 5208
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5211
    :cond_a
    return-void
.end method

.method onShouldDockBigOverlaysChanged()V
    .registers 2

    .line 5214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5215
    return-void
.end method

.method onSizeCompatActivityChanged()V
    .registers 2

    .line 5220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5221
    return-void
.end method

.method onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 3683
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    .line 3684
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 3686
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "includeFinishing"    # Z

    .line 1732
    const/4 v0, 0x0

    .line 1733
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_28

    .line 1734
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1735
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_15

    .line 1737
    return v3

    .line 1739
    :cond_15
    if-nez p1, :cond_1c

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    .line 1740
    goto :goto_25

    .line 1742
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1743
    return v3

    .line 1745
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 1733
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1747
    .end local v1    # "i":I
    :cond_28
    if-lez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2
.end method

.method performClearTaskForReuse(Z)V
    .registers 5
    .param p1, "excludingTaskOverlay"    # Z

    .line 1800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1803
    const/4 v0, 0x0

    :try_start_9
    const-string v1, "clear-task-all"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 1805
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1806
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1807
    nop

    .line 1808
    return-void

    .line 1805
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1806
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1807
    throw v1
.end method

.method performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "finishCount"    # [I

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1814
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1817
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 1819
    .local v1, "result":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1820
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1821
    nop

    .line 1822
    return-object v1

    .line 1819
    .end local v1    # "result":Lcom/android/server/wm/ActivityRecord;
    :catchall_16
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1820
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1821
    throw v1
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    move v0, v1

    .line 3096
    .local v0, "toTop":Z
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 3097
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3100
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionChildAt: child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_45
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3104
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4e

    .line 3105
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    .line 3107
    :cond_4e
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 6999
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 7000
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6999
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7001
    .local v0, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 7002
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/Task;
    .param p2, "includingParents"    # Z

    .line 7006
    if-nez p1, :cond_3

    .line 7008
    return-void

    .line 7011
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 7012
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 7013
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/Task;

    .line 6977
    if-nez p1, :cond_3

    .line 6979
    return-void

    .line 6982
    :cond_3
    if-ne p1, p0, :cond_c

    .line 6984
    const-string/jumbo v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 6985
    return-void

    .line 6988
    :cond_c
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6990
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6991
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6992
    return-void
.end method

.method prepareSurfaces()V
    .registers 6

    .line 3917
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3921
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportMiuiShadow()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 3922
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 3923
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3926
    :cond_3d
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->prepareSurfaces()V

    .line 3927
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3930
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3931
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3932
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_6b

    .line 3935
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3938
    :goto_6b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 3939
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 3941
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportMiuiShadow()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 3942
    invoke-static {p0}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSkipUpdateFreeFormShadow(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 3943
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateMiuiFreeformShadow(Lcom/android/server/wm/Task;)V

    .line 3944
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3948
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 3949
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v2}, Lcom/android/server/wm/Dimmer;->dontAnimateEnter()V

    .line 3953
    :cond_a3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 3954
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 3963
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 3964
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    .local v0, "show":Z
    goto :goto_c9

    .line 3966
    .end local v0    # "show":Z
    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-nez v2, :cond_c8

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    :cond_c8
    const/4 v0, 0x1

    .line 3968
    .restart local v0    # "show":Z
    :cond_c9
    :goto_c9
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 3969
    .local v2, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_f2

    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v3

    if-nez v3, :cond_f2

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->hadHideStackFormFullScreen()Z

    move-result v3

    if-nez v3, :cond_f2

    .line 3971
    :cond_e9
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    if-eq v0, v3, :cond_f2

    .line 3972
    iget-object v3, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 3975
    :cond_f2
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 3978
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/server/wm/TaskStub;->onHoverModeTaskPrepareSurfaces(Lcom/android/server/wm/Task;)V

    .line 3979
    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 3

    .line 3290
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method removeActivities(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "excludingTaskOverlay"    # Z

    .line 1767
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 1769
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1770
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_1a

    .line 1779
    :cond_12
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1794
    :goto_1a
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1649
    const-string/jumbo v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1650
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showHiddenTaskIfRemoveSpecificChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1657
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1660
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void

    .line 1665
    :cond_47
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_6e

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_6e
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1677
    :cond_7e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1680
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1686
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 1694
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0, v0, v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_ea

    .line 1697
    :cond_9d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_ea

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1702
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v0, :cond_ba

    .line 1703
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1706
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_ba
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 1708
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1712
    :cond_ea
    :goto_ea
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_ff

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityRecordStub;->shouldUseCompatMode(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 1713
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->updateMultiWindowState(Lcom/android/server/wm/WindowContainer;)Z

    .line 1720
    :cond_ff
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    .line 1721
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 1720
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->updateImeBoundsInTaskChanged(ZIZLcom/android/server/wm/DisplayContent;)V

    .line 1724
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 853
    const-string/jumbo v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method removeIfPossible(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 859
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deferring removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_38
    return-void

    .line 864
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_46

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->onTaskVanished(Lcom/android/server/wm/Task;)V

    .line 868
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 873
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_65

    .line 874
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    .line 877
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_65
    return-void
.end method

.method removeImmediately()V
    .registers 2

    .line 3111
    const-string/jumbo v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 3112
    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 3116
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_2e

    .line 3118
    return-void

    .line 3120
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 3122
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 3123
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 3125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 3127
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 3128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 3129
    return-void
.end method

.method removeLaunchTickMessages()V
    .registers 2

    .line 6460
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6461
    return-void
.end method

.method public removeStopPreloadActivityMsg()V
    .registers 3

    .line 7255
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7256
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1451
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1454
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1457
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1461
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .registers 8
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3133
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from rootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3134
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3133
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 3138
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/ActivityRecordStub;->shouldUseCompatMode(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 3139
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 3140
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->updateMultiWindowState(Lcom/android/server/wm/WindowContainer;)Z

    .line 3144
    :cond_62
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3147
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_78

    .line 3148
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3153
    :cond_78
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3154
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 6
    .param p1, "newParent"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "onTop"    # Z

    .line 7038
    if-eqz p1, :cond_6b

    .line 7042
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Task="

    if-eq v0, p1, :cond_4a

    .line 7046
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7047
    if-eqz p2, :cond_1a

    const v0, 0x7fffffff

    goto :goto_1c

    :cond_1a
    const/high16 v0, -0x80000000

    :goto_1c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 7048
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 7049
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    goto :goto_49

    .line 7052
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t reparent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7054
    :cond_49
    :goto_49
    return-void

    .line 7043
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7039
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task can\'t reparent to null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z
    .registers 28
    .param p1, "preferredRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "moveRootTaskMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 984
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    iget-object v7, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 985
    .local v7, "supervisor":Lcom/android/server/wm/ActivityTaskSupervisor;
    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 986
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 987
    .local v9, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 988
    .local v10, "sourceRootTask":Lcom/android/server/wm/Task;
    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ne v3, v12, :cond_20

    const/4 v12, 0x1

    goto :goto_21

    :cond_20
    move v12, v11

    :goto_21
    invoke-virtual {v7, v1, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v12

    .line 990
    .local v12, "toRootTask":Lcom/android/server/wm/Task;
    if-ne v12, v10, :cond_28

    .line 991
    return v11

    .line 993
    :cond_28
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v13

    if-nez v13, :cond_33

    .line 994
    return v11

    .line 997
    :cond_33
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    .line 998
    .local v13, "toRootTaskWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 1000
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_49

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-static {v15, v13}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v15

    if-eqz v15, :cond_49

    const/4 v15, 0x1

    goto :goto_4a

    :cond_49
    move v15, v11

    .line 1002
    .local v15, "mightReplaceWindow":Z
    :goto_4a
    if-eqz v15, :cond_51

    .line 1011
    iget-object v11, v14, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v9, v11, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 1014
    :cond_51
    iget-object v11, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1015
    const/4 v11, 0x1

    .line 1017
    .local v11, "kept":Z
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1018
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v0, v17

    .end local v17    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_74

    invoke-virtual {v8, v10}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v17
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_11e

    if-eqz v17, :cond_74

    .line 1019
    move/from16 v17, v13

    .end local v13    # "toRootTaskWindowingMode":I
    .local v17, "toRootTaskWindowingMode":I
    :try_start_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_71

    if-ne v13, v0, :cond_76

    const/4 v13, 0x1

    goto :goto_77

    .line 1054
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_71
    move-exception v0

    goto/16 :goto_121

    .line 1018
    .end local v17    # "toRootTaskWindowingMode":I
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "toRootTaskWindowingMode":I
    :cond_74
    move/from16 v17, v13

    .line 1019
    .end local v13    # "toRootTaskWindowingMode":I
    .restart local v17    # "toRootTaskWindowingMode":I
    :cond_76
    const/4 v13, 0x0

    .line 1024
    .local v13, "wasFocused":Z
    :goto_77
    if-eqz v0, :cond_8c

    :try_start_79
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 1025
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_87

    if-ne v2, v0, :cond_8c

    const/4 v2, 0x1

    goto :goto_8d

    .line 1054
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "wasFocused":Z
    :catchall_87
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_121

    .line 1025
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "wasFocused":Z
    :cond_8c
    const/4 v2, 0x0

    .line 1027
    .local v2, "wasFront":Z
    :goto_8d
    if-eqz v4, :cond_9c

    move-object/from16 v18, v8

    const/4 v8, 0x1

    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v18, "root":Lcom/android/server/wm/RootWindowContainer;
    if-ne v4, v8, :cond_99

    if-nez v13, :cond_9f

    if-eqz v2, :cond_99

    goto :goto_9f

    :cond_99
    const/16 v16, 0x0

    goto :goto_a1

    .end local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_9c
    move-object/from16 v18, v8

    const/4 v8, 0x1

    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_9f
    :goto_9f
    move/from16 v16, v8

    :goto_a1
    move/from16 v19, v16

    .line 1031
    .local v19, "moveRootTaskToFront":Z
    move/from16 v8, v19

    .end local v19    # "moveRootTaskToFront":Z
    .local v8, "moveRootTaskToFront":Z
    :try_start_a5
    invoke-virtual {v1, v12, v3, v8, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_118

    .line 1033
    if-eqz p6, :cond_b5

    .line 1035
    :try_start_aa
    invoke-virtual {v7, v1, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_b5

    .line 1054
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "wasFront":Z
    .end local v8    # "moveRootTaskToFront":Z
    .end local v13    # "wasFocused":Z
    :catchall_ae
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v18

    goto/16 :goto_121

    .line 1040
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "wasFront":Z
    .restart local v8    # "moveRootTaskToFront":Z
    .restart local v13    # "wasFocused":Z
    :cond_b5
    :goto_b5
    if-eqz v0, :cond_d4

    if-eqz v8, :cond_d4

    .line 1042
    invoke-virtual {v12, v6}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1046
    move/from16 v19, v2

    .end local v2    # "wasFront":Z
    .local v19, "wasFront":Z
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v0, v2, :cond_d6

    .line 1047
    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_d6

    .line 1040
    .end local v19    # "wasFront":Z
    .restart local v2    # "wasFront":Z
    :cond_d4
    move/from16 v19, v2

    .line 1050
    .end local v2    # "wasFront":Z
    .restart local v19    # "wasFront":Z
    :cond_d6
    :goto_d6
    if-nez v5, :cond_df

    .line 1051
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_aa .. :try_end_df} :catchall_ae

    .line 1054
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "moveRootTaskToFront":Z
    .end local v13    # "wasFocused":Z
    .end local v19    # "wasFront":Z
    :cond_df
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1055
    nop

    .line 1057
    if-eqz v15, :cond_ee

    .line 1061
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    xor-int/lit8 v2, v11, 0x1

    invoke-virtual {v9, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 1064
    :cond_ee
    if-nez p5, :cond_100

    .line 1067
    const/4 v0, 0x0

    if-nez v15, :cond_f5

    const/4 v2, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v2, 0x0

    :goto_f6
    move-object/from16 v8, v18

    const/4 v13, 0x0

    .end local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    invoke-virtual {v8, v0, v13, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1068
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_103

    .line 1064
    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_100
    move-object/from16 v8, v18

    const/4 v13, 0x0

    .line 1072
    .end local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1073
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1072
    invoke-virtual {v7, v1, v0, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 1075
    move-object/from16 v2, p1

    if-ne v2, v12, :cond_116

    const/4 v0, 0x1

    goto :goto_117

    :cond_116
    move v0, v13

    :goto_117
    return v0

    .line 1054
    .end local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_118
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v18

    .end local v18    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8    # "root":Lcom/android/server/wm/RootWindowContainer;
    goto :goto_121

    .end local v17    # "toRootTaskWindowingMode":I
    .local v13, "toRootTaskWindowingMode":I
    :catchall_11e
    move-exception v0

    move/from16 v17, v13

    .end local v13    # "toRootTaskWindowingMode":I
    .restart local v17    # "toRootTaskWindowingMode":I
    :goto_121
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1055
    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "moveRootTaskMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 958
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 4972
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4973
    return-void

    .line 4975
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4976
    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "taskTop"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 6163
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 6165
    .local v0, "forceReset":Z
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 6172
    .local v3, "task":Lcom/android/server/wm/Task;
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 6174
    :try_start_13
    sget-object v1, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_31

    .line 6176
    .local v1, "topOptions":Landroid/app/ActivityOptions;
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 6177
    nop

    .line 6179
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6180
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 6181
    .local v2, "newTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_2b

    .line 6182
    move-object p1, v2

    .line 6186
    .end local v2    # "newTop":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    if-eqz v1, :cond_30

    .line 6189
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 6192
    :cond_30
    return-object p1

    .line 6176
    .end local v1    # "topOptions":Landroid/app/ActivityOptions;
    :catchall_31
    move-exception v1

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 6177
    throw v1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .registers 8
    .param p1, "displayedBounds"    # Landroid/graphics/Rect;
    .param p2, "preserveWindows"    # Z
    .param p3, "deferResume"    # Z

    .line 6681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6682
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 6686
    :try_start_22
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 6687
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 6686
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6689
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 6690
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6692
    if-nez p3, :cond_41

    .line 6693
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_4b

    .line 6696
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6697
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6698
    nop

    .line 6699
    return-void

    .line 6696
    :catchall_4b
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6697
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6698
    throw v0
.end method

.method resize(ZZ)V
    .registers 4
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 3234
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 3235
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3237
    :cond_13
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .registers 12
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 893
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 895
    .local v0, "forced":Z
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 899
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 900
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 902
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_c1

    .line 904
    :cond_23
    nop

    .line 950
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 904
    return v1

    .line 907
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 918
    const/4 v3, 0x0

    .line 919
    .local v3, "updatedConfig":Z
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_67

    .line 921
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 926
    :cond_67
    const/4 v1, 0x1

    .line 927
    .local v1, "kept":Z
    if-eqz v3, :cond_81

    .line 928
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 929
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_81

    .line 930
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    .line 938
    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 939
    if-nez v1, :cond_81

    .line 940
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 944
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_81
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 946
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 947
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8a
    .catchall {:try_start_2a .. :try_end_8a} :catchall_c1

    .line 948
    nop

    .line 950
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 948
    return v1

    .line 908
    .end local v1    # "kept":Z
    .end local v3    # "updatedConfig":Z
    :cond_91
    :try_start_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/Task;
    .end local p1    # "bounds":Landroid/graphics/Rect;
    .end local p2    # "resizeMode":I
    .end local p3    # "preserveWindow":Z
    throw v1
    :try_end_c1
    .catchall {:try_start_91 .. :try_end_c1} :catchall_c1

    .line 950
    .end local v0    # "forced":Z
    .restart local p0    # "this":Lcom/android/server/wm/Task;
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    .restart local p2    # "resizeMode":I
    .restart local p3    # "preserveWindow":Z
    :catchall_c1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 951
    throw v0
.end method

.method resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 2440
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2441
    return-void

    .line 2444
    :cond_7
    nop

    .line 2445
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2446
    .local v0, "windowingMode":I
    if-nez v0, :cond_1a

    .line 2447
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2451
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2456
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isMiuiSplitScreenWindowingMode(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    .line 2457
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2458
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setSplitScreenState(I)V

    goto :goto_48

    .line 2460
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    .line 2461
    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->setSplitScreenState(I)V

    .line 2465
    :goto_48
    if-ne v0, v3, :cond_54

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-nez v2, :cond_53

    .line 2468
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2472
    :cond_53
    return-void

    .line 2475
    :cond_54
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2482
    return-void
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6788
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6792
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 6793
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 6792
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 6794
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6795
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6797
    return-object v0
.end method

.method resumeNextFocusAfterReparent()V
    .registers 4

    .line 5505
    const-string/jumbo v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 5507
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5510
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5512
    return-void
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 4
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 5884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "deferPause"    # Z

    .line 5812
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5814
    return v1

    .line 5817
    :cond_6
    const/4 v0, 0x0

    .line 5820
    .local v0, "someActivityResumed":Z
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5822
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 5823
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 5824
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    move v0, v3

    goto :goto_61

    .line 5827
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 5828
    .local v3, "idx":I
    :goto_23
    if-ltz v3, :cond_61

    .line 5831
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5832
    .local v3, "child":Lcom/android/server/wm/Task;
    if-nez v3, :cond_32

    .line 5833
    goto :goto_47

    .line 5836
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_39

    .line 5837
    goto :goto_47

    .line 5839
    :cond_39
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_49

    .line 5841
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_61

    .line 5843
    nop

    .line 5828
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :goto_47
    move v3, v4

    goto :goto_23

    .line 5849
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    :cond_49
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 5854
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-lt v4, v5, :cond_5f

    .line 5855
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v3, v5

    .end local v4    # "idx":I
    .local v5, "idx":I
    goto :goto_60

    .line 5854
    .end local v5    # "idx":I
    .restart local v4    # "idx":I
    :cond_5f
    move v3, v4

    .line 5857
    .end local v4    # "idx":I
    .local v3, "idx":I
    :goto_60
    goto :goto_23

    .line 5867
    .end local v3    # "idx":I
    :cond_61
    :goto_61
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5870
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 5871
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/wm/ActivityRecordStub;->shouldNotBeResume(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 5872
    :cond_77
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V
    :try_end_7a
    .catchall {:try_start_8 .. :try_end_7a} :catchall_7e

    .line 5875
    .end local v2    # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_7a
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5876
    nop

    .line 5878
    return v0

    .line 5875
    :catchall_7e
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5876
    throw v2
.end method

.method returnsToHomeRootTask()Z
    .registers 8

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_55

    .line 1245
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 1246
    const v0, 0x10004000

    .line 1247
    .local v0, "returnHomeFlags":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 1248
    .local v3, "task":Lcom/android/server/wm/Task;
    :goto_26
    if-eqz v3, :cond_36

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1249
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_36

    move v4, v2

    goto :goto_37

    :cond_36
    move v4, v1

    .line 1250
    .local v4, "isLockTaskModeViolation":Z
    :goto_37
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, 0x10004000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_46

    if-nez v4, :cond_46

    move v1, v2

    :cond_46
    return v1

    .line 1253
    .end local v0    # "returnHomeFlags":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "isLockTaskModeViolation":Z
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1254
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v3

    if-eqz v3, :cond_54

    move v1, v2

    :cond_54
    return v1

    .line 1244
    .end local v0    # "bottomTask":Lcom/android/server/wm/Task;
    :cond_55
    :goto_55
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 9
    .param p1, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 793
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 794
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 795
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 796
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 805
    return-object p0
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 26
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "toTop"    # Z
    .param p6, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "options"    # Landroid/app/ActivityOptions;

    .line 6822
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6825
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object v14, v0

    .local v0, "task":Lcom/android/server/wm/Task;
    goto :goto_6e

    .line 6828
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_28
    if-eqz v8, :cond_33

    .line 6829
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_39

    .line 6830
    :cond_33
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    :goto_39
    nop

    .line 6831
    .local v0, "taskId":I
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 6832
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6833
    invoke-virtual {v1, v7}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6834
    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6835
    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6836
    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6837
    move-object/from16 v12, p4

    invoke-static {v1, v12}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6838
    move/from16 v13, p5

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6839
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6840
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v14, v1

    .line 6843
    .end local v0    # "taskId":I
    .local v14, "task":Lcom/android/server/wm/Task;
    :goto_6e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    .line 6844
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_76

    const/4 v0, 0x0

    :cond_76
    move v15, v0

    .line 6845
    .end local v0    # "displayId":I
    .local v15, "displayId":I
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 6846
    invoke-virtual {v0, v15}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v16

    .line 6847
    .local v16, "isLockscreenShown":Z
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 6848
    move-object v1, v14

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 6849
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d1

    .line 6850
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_d1

    if-nez v16, :cond_d1

    .line 6852
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_ca

    if-eqz v9, :cond_ca

    invoke-virtual/range {p8 .. p8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_ca

    invoke-virtual/range {p8 .. p8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eq v0, v1, :cond_ca

    .line 6853
    invoke-virtual/range {p8 .. p8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_d1

    .line 6856
    :cond_ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 6860
    :cond_d1
    :goto_d1
    return-object v14
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "toTop"    # Z

    .line 6811
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4511
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4514
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_33

    .line 4515
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4517
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const-string/jumbo v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4518
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_49

    .line 4519
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4525
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string/jumbo v3, "root_affinity"

    if-eqz v0, :cond_6a

    .line 4526
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4527
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 4528
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    move-object v2, v0

    :cond_66
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_74

    .line 4530
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 4531
    if-eqz v0, :cond_71

    move-object v2, v0

    :cond_71
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4533
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 4534
    const-string/jumbo v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4536
    :cond_7e
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const-string/jumbo v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4537
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4538
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4539
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string/jumbo v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4540
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    const-string/jumbo v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4541
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4542
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    const-string v0, "last_time_moved"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4543
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    const-string/jumbo v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4544
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c7

    .line 4545
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4547
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 4548
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4550
    :cond_d4
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const-string/jumbo v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4551
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string/jumbo v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4552
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const-string/jumbo v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4553
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4554
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_fa

    move-object v0, v2

    :cond_fa
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4555
    nop

    .line 4556
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_105

    goto :goto_106

    :cond_105
    move-object v2, v0

    .line 4555
    :goto_106
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4557
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4558
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    const-string/jumbo v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4559
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_12a

    .line 4560
    nop

    .line 4561
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4560
    const-string/jumbo v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4563
    :cond_12a
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const-string/jumbo v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4564
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    const-string/jumbo v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4565
    const-string/jumbo v0, "persist_task_version"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4567
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_154

    .line 4568
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4569
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4568
    const-string v2, "last_snapshot_task_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4571
    :cond_154
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_167

    .line 4572
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4573
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4572
    const-string v2, "last_snapshot_content_insets"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4575
    :cond_167
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    if-eqz v0, :cond_17a

    .line 4576
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4577
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4576
    const-string v2, "last_snapshot_buffer_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4580
    :cond_17a
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18b

    .line 4581
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4582
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4583
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4586
    :cond_18b
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19c

    .line 4587
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4588
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4589
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4593
    :cond_19c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    if-eqz v0, :cond_215

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_215

    .line 4594
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4595
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_215

    .line 4596
    invoke-static {}, Lcom/android/server/wm/AppResurrectionServiceStub;->getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/wm/AppResurrectionServiceStub;->isRebootResurrectionEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 4597
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 4598
    .local v2, "size":I
    const-string/jumbo v3, "reborn_children_size"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4599
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d2
    if-ge v3, v2, :cond_1ea

    .line 4600
    invoke-static {}, Lcom/android/server/wm/AppResurrectionServiceStub;->getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-interface {v4, v5, p1, v3}, Lcom/android/server/wm/AppResurrectionServiceStub;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;I)V

    .line 4599
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d2

    .line 4602
    .end local v3    # "i":I
    :cond_1ea
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appRebootResurrectionFor_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4604
    return-void

    .line 4610
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "size":I
    :cond_215
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4611
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4612
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4611
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 4613
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 4614
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4615
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_235

    .line 4618
    return-void

    .line 4616
    :cond_235
    throw v1
.end method

.method sendTaskAppeared()V
    .registers 3

    .line 5027
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_d

    .line 5028
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5030
    :cond_d
    return-void
.end method

.method setActivityWindowingMode(I)V
    .registers 5
    .param p1, "windowingMode"    # I

    .line 5256
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5257
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5256
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 5258
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5259
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 5260
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 5
    .param p1, "alwaysOnTop"    # Z

    .line 6898
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 6899
    return-void

    .line 6901
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setAlwaysOnTop(Z)V

    .line 6903
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 6910
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_22

    .line 6911
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6913
    :cond_22
    return-void
.end method

.method public setAlwaysOnTopBySuper(Z)V
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 6917
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setAlwaysOnTop(Z)V

    .line 6918
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3170
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3171
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3174
    :cond_f
    const/4 v0, 0x0

    .line 3175
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 3177
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_20
    if-eqz v1, :cond_28

    .line 3178
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 3181
    :cond_28
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 3182
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3183
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 3184
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 3157
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3159
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    .line 3160
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 3161
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 3164
    :cond_11
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 3825
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 3826
    return-void
.end method

.method public setCastMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 7222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_16

    .line 7224
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    .line 7227
    new-instance v0, Landroid/view/SurfaceControl$MiuiTransaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$MiuiTransaction;-><init>()V

    .line 7228
    .local v0, "t":Landroid/view/SurfaceControl$MiuiTransaction;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$MiuiTransaction;->setMiuiCastMode(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;

    .line 7229
    invoke-virtual {v0}, Landroid/view/SurfaceControl$MiuiTransaction;->apply()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    .line 7233
    .end local v0    # "t":Landroid/view/SurfaceControl$MiuiTransaction;
    :cond_16
    goto :goto_30

    .line 7231
    :catch_17
    move-exception v0

    .line 7232
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setCastMode in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7234
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_30
    return-void
.end method

.method setDeferTaskAppear(Z)V
    .registers 2
    .param p1, "deferTaskAppear"    # Z

    .line 4993
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 4994
    if-nez p1, :cond_7

    .line 4995
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4997
    :cond_7
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 3427
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3f

    .line 3429
    if-eqz p1, :cond_38

    .line 3430
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_38

    .line 3431
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for root task id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3432
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3434
    :cond_38
    :goto_38
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3435
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3438
    :cond_3f
    return-void
.end method

.method setForceHidden(IZ)Z
    .registers 10
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .line 5267
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5268
    .local v0, "newFlags":I
    if-eqz p2, :cond_6

    .line 5269
    or-int/2addr v0, p1

    goto :goto_8

    .line 5271
    :cond_6
    not-int v1, p1

    and-int/2addr v0, v1

    .line 5273
    :goto_8
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_e

    .line 5274
    const/4 v1, 0x0

    return v1

    .line 5277
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 5278
    .local v1, "wasHidden":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    .line 5279
    .local v2, "wasVisible":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5280
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    .line 5281
    .local v3, "nowHidden":Z
    if-eq v1, v3, :cond_36

    .line 5282
    const-string/jumbo v4, "setForceHidden"

    .line 5283
    .local v4, "reason":Ljava/lang/String;
    const-string/jumbo v5, "setForceHidden"

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    .line 5285
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_36

    .line 5286
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 5288
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5291
    .end local v4    # "reason":Ljava/lang/String;
    :cond_36
    :goto_36
    const/4 v4, 0x1

    return v4
.end method

.method setForceShowForAllUsers(Z)V
    .registers 2
    .param p1, "forceShowForAllUsers"    # Z

    .line 3520
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 3521
    return-void
.end method

.method setHasBeenVisible(Z)V
    .registers 4
    .param p1, "hasBeenVisible"    # Z

    .line 4979
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4980
    if-eqz p1, :cond_19

    .line 4981
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4982
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_19

    .line 4983
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 4986
    :cond_19
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 3599
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3600
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3601
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1099
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1100
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1110
    const/4 v0, 0x0

    .line 1111
    .local v0, "updateIdentity":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_7

    .line 1112
    const/4 v0, 0x1

    goto :goto_26

    .line 1113
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v1, :cond_26

    .line 1114
    if-eqz p3, :cond_f

    move-object v1, p3

    goto :goto_11

    :cond_f
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1115
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_11
    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v3, :cond_24

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    :goto_25
    move v0, v2

    .line 1118
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_26
    :goto_26
    if-eqz v0, :cond_43

    .line 1119
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1120
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1121
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1122
    if-eqz p2, :cond_38

    move-object v1, p2

    goto :goto_3a

    :cond_38
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_3a
    if-eqz p3, :cond_3e

    move-object v2, p3

    goto :goto_40

    :cond_3e
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_40
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1124
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1125
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2178
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 2179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 2181
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2183
    :goto_f
    return-void
.end method

.method setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p2, "overlay"    # Landroid/view/SurfaceControl;

    .line 7058
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 7059
    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 7060
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1895
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5229
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 5230
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5231
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1220
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 1221
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1222
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_18

    .line 1224
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1225
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1227
    :goto_18
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/Task;

    .line 1263
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1264
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1265
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/Task;

    .line 1258
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1259
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1260
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"    # I

    .line 880
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 881
    return-void

    .line 883
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 886
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 887
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2845
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    .line 2846
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 2847
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2848
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 2850
    :cond_15
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 5109
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 5112
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5114
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5115
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5116
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateCornerRadius(Lcom/android/server/wm/Task;)V

    .line 5119
    :cond_19
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 3679
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3680
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5040
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v0

    return v0
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .registers 7
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "skipTaskAppeared"    # Z

    .line 5045
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 5046
    return v1

    .line 5049
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5052
    .local v0, "prevOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5054
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 5056
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_17

    .line 5057
    if-nez p2, :cond_2e

    .line 5058
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_2e

    .line 5062
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 5063
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_20

    .line 5064
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    .line 5066
    :cond_20
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 5067
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2e

    .line 5068
    const-string/jumbo v1, "setTaskOrganizer"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 5072
    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 1464
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1465
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1467
    :goto_7
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 1468
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1469
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_50

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_4c

    .line 1473
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1475
    :cond_4c
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1476
    goto :goto_52

    .line 1478
    :cond_50
    move-object p1, v0

    .line 1479
    .end local v0    # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_7

    .line 1480
    :cond_52
    :goto_52
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1481
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1482
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1483
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 5320
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5321
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 5322
    return-void

    .line 5325
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 5326
    return-void
.end method

.method setWindowingMode(IZ)V
    .registers 5
    .param p1, "preferredWindowingMode"    # I
    .param p2, "creating"    # Z

    .line 5337
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/Task;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 5339
    return-void
.end method

.method setWindowingModeSuper(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 5500
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 5501
    return-void
.end method

.method shouldAnimate()Z
    .registers 4

    .line 3583
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3584
    return v1

    .line 3589
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3590
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3591
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3592
    return v1

    .line 3594
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method shouldIgnoreInput()Z
    .registers 2

    .line 7103
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7104
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-nez v0, :cond_14

    .line 7106
    const/4 v0, 0x1

    return v0

    .line 7108
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeRootTaskWithLaunchBounds()Z
    .registers 2

    .line 5740
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .registers 5

    .line 7142
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7143
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_d

    .line 7144
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    goto :goto_17

    .line 7145
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    :goto_17
    nop

    .line 7149
    .local v1, "isKeyguardGoingAway":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_26

    .line 7154
    return v2

    .line 7159
    :cond_26
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v3

    if-nez v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    :cond_3c
    :goto_3c
    return v2
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "srec"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 6301
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 6303
    .local v0, "affinity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_70

    .line 6304
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_70

    .line 6311
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6312
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6f

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 6313
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 6315
    invoke-direct {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v3

    if-nez v3, :cond_44

    .line 6317
    return v1

    .line 6320
    :cond_44
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 6321
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_64

    .line 6322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6323
    return v4

    .line 6325
    :cond_64
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 6327
    return v1

    .line 6330
    .end local v3    # "prevTask":Lcom/android/server/wm/Task;
    :cond_6f
    return v4

    .line 6305
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_70
    :goto_70
    return v1
.end method

.method showForAllUsers()Z
    .registers 4

    .line 3508
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3509
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3510
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_15

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public showShadow()V
    .registers 8

    .line 3885
    const/4 v0, 0x0

    .line 3886
    .local v0, "isBackStack":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3887
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 3889
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    if-nez v1, :cond_a2

    if-nez v0, :cond_a2

    .line 3890
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 3891
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_29

    .line 3892
    :cond_28
    const/4 v1, 0x0

    :goto_29
    nop

    .line 3893
    .local v1, "rootPinnedStask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_36

    move v4, v3

    goto :goto_37

    :cond_36
    move v4, v2

    .line 3894
    .local v4, "isPipshow":Z
    :goto_37
    const-string v5, "ActivityTaskManager"

    if-nez v4, :cond_51

    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-nez v6, :cond_51

    .line 3895
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 3896
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowFreeformSettings()V

    .line 3897
    const-string/jumbo v2, "setGlobalShadowFreeformSettings"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 3898
    :cond_51
    if-eqz v4, :cond_68

    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-eqz v6, :cond_68

    .line 3899
    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 3900
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowSettings()V

    .line 3901
    const-string/jumbo v2, "setGlobalShadowSettings"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :cond_68
    :goto_68
    if-eqz v4, :cond_79

    .line 3904
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    goto :goto_7d

    .line 3905
    :cond_79
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getShadowRadius()F

    move-result v2

    :goto_7d
    nop

    .line 3906
    .local v2, "freeformShadowRadius":F
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 3907
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 3908
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3910
    :cond_a0
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 3912
    .end local v1    # "rootPinnedStask":Lcom/android/server/wm/Task;
    .end local v2    # "freeformShadowRadius":F
    .end local v4    # "isPipshow":Z
    :cond_a2
    return-void
.end method

.method showSurfaceOnCreation()Z
    .registers 4

    .line 4951
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 4954
    return v1

    .line 4957
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 4958
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isLaunchingSmallFreeForm()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4959
    const/4 v1, 0x0

    return v1

    .line 4963
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method showToCurrentUser()Z
    .registers 3

    .line 3515
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3516
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 3515
    :goto_1c
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topTask"    # Lcom/android/server/wm/Task;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 5949
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;II)V

    .line 5950
    return-void
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;II)V
    .registers 29
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topTask"    # Lcom/android/server/wm/Task;
    .param p3, "newTask"    # Z
    .param p4, "isTaskSwitch"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p7, "prevTopTaskWindowMode"    # I
    .param p8, "startedTaskWindowMode"    # I

    .line 5956
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 5957
    .local v9, "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 5958
    .local v10, "rTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_1b

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    move v3, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v1

    :goto_1c
    move v11, v3

    .line 5959
    .local v11, "allowMoveToFront":Z
    if-eq v10, v0, :cond_28

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    move v3, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v3, v1

    :goto_29
    move v12, v3

    .line 5961
    .local v12, "isOrhasTask":Z
    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_37

    if-eqz v11, :cond_37

    if-eqz v12, :cond_34

    if-eqz p3, :cond_37

    .line 5965
    :cond_34
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 5967
    :cond_37
    const/4 v3, 0x0

    .line 5968
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez p3, :cond_46

    if-eqz v12, :cond_46

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v4

    if-nez v4, :cond_46

    .line 5969
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5970
    return-void

    .line 5977
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 5978
    .local v13, "activityTask":Lcom/android/server/wm/Task;
    const-string v4, "ActivityTaskManager"

    if-ne v3, v13, :cond_69

    iget-object v5, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    if-eq v5, v6, :cond_69

    .line 5979
    iget-object v5, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 5980
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v5, :cond_69

    const-string/jumbo v5, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    :cond_69
    move-object v14, v13

    .line 5987
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .local v14, "task":Lcom/android/server/wm/Task;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_9f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v5, "here"

    invoke-direct {v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v17, 0x1

    aput-object v6, v1, v17

    const/16 v19, 0x2

    aput-object v5, v1, v19

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    const v3, -0x6544f687

    const/4 v5, 0x0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .local v18, "protoLogParam2":Ljava/lang/String;
    .local v19, "protoLogParam0":Ljava/lang/String;
    invoke-static {v15, v3, v2, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5990
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    .end local v18    # "protoLogParam2":Ljava/lang/String;
    .end local v19    # "protoLogParam0":Ljava/lang/String;
    :cond_9f
    sget-object v1, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v1, :cond_b4

    .line 5991
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5992
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b0

    const/4 v3, 0x1

    goto :goto_b1

    :cond_b0
    move v3, v2

    :goto_b1
    invoke-static {v1, v3}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 6003
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v1

    if-eqz v1, :cond_1d9

    :cond_c0
    if-eqz v11, :cond_1d9

    .line 6004
    iget-object v15, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6005
    .local v15, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v1, :cond_de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare open transition: starting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    :cond_de
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f4

    .line 6009
    invoke-virtual {v15, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6010
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_123

    .line 6012
    :cond_f4
    const/4 v1, 0x6

    .line 6013
    .local v1, "transit":I
    if-eqz p3, :cond_105

    .line 6014
    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_fe

    .line 6015
    const/16 v1, 0x10

    goto :goto_118

    .line 6021
    :cond_fe
    const/4 v3, 0x0

    invoke-static {v9, v3, v7, v8}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 6023
    const/16 v1, 0x8

    goto :goto_118

    .line 6027
    :cond_105
    iget v3, v7, Lcom/android/server/wm/ActivityRecord;->realCallingUid:I

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getHomeUid()I

    move-result v4

    if-ne v3, v4, :cond_118

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 6028
    const/16 v1, 0x8

    .line 6029
    const/4 v3, -0x2

    iput v3, v7, Lcom/android/server/wm/ActivityRecord;->realCallingUid:I

    .line 6032
    :cond_118
    :goto_118
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6033
    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6035
    .end local v1    # "transit":I
    :goto_123
    const/4 v1, 0x1

    .line 6036
    .local v1, "doShow":Z
    const/4 v3, 0x5

    if-eqz p3, :cond_143

    .line 6042
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_14f

    .line 6043
    invoke-virtual {v0, v7, v7}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 6044
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v5, v7, :cond_13e

    const/4 v4, 0x1

    goto :goto_13f

    :cond_13e
    move v4, v2

    :goto_13f
    move v1, v4

    move/from16 v18, v1

    goto :goto_151

    .line 6046
    :cond_143
    if-eqz v8, :cond_14f

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v4

    if-ne v4, v3, :cond_14f

    .line 6048
    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_151

    .line 6050
    :cond_14f
    move/from16 v18, v1

    .end local v1    # "doShow":Z
    .local v18, "doShow":Z
    :goto_151
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_164

    .line 6054
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6055
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6058
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto/16 :goto_1d8

    .line 6059
    :cond_164
    if-eqz v18, :cond_1d8

    .line 6064
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6065
    .local v1, "baseTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 6070
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v6, v1

    goto :goto_17f

    .line 6065
    :cond_17e
    move-object v6, v1

    .line 6073
    .end local v1    # "baseTask":Lcom/android/server/wm/Task;
    .local v6, "baseTask":Lcom/android/server/wm/Task;
    :goto_17f
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;-><init>()V

    invoke-virtual {v6, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v16

    .line 6076
    .local v16, "prev":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_197

    .line 6077
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSplittable(Z)V

    goto :goto_1a8

    .line 6078
    :cond_197
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 6079
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSplittable(Z)V

    .line 6085
    :cond_1a8
    :goto_1a8
    if-eqz p4, :cond_1c1

    move/from16 v5, p7

    if-ne v5, v3, :cond_1c3

    move/from16 v4, p8

    if-eq v4, v3, :cond_1c5

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1c5

    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 6087
    invoke-interface {v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->isInVideoOrGameScene()Z

    move-result v1

    if-nez v1, :cond_1d8

    goto :goto_1c5

    .line 6085
    :cond_1c1
    move/from16 v5, p7

    :cond_1c3
    move/from16 v4, p8

    .line 6088
    :cond_1c5
    :goto_1c5
    iget-object v1, v0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6    # "baseTask":Lcom/android/server/wm/Task;
    .local v17, "baseTask":Lcom/android/server/wm/Task;
    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    .line 6093
    .end local v15    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "baseTask":Lcom/android/server/wm/Task;
    .end local v18    # "doShow":Z
    :cond_1d8
    :goto_1d8
    goto :goto_1dc

    .line 6096
    :cond_1d9
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6098
    :goto_1dc
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_e

    .line 1936
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayAreaForFreeForm(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1933
    :goto_f
    return v0
.end method

.method supportsMultiWindowInDisplayAreaForFreeForm(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 11
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1963
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMIUIProduct()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0

    .line 1964
    :cond_b
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 1965
    return v1

    .line 1968
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 1969
    return v2

    .line 1971
    :cond_1b
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_46

    .line 1972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " attached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1972
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    return v2

    .line 1977
    :cond_46
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1978
    return v1

    .line 1981
    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    const-string/jumbo v4, "unknown"

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    .line 1982
    :cond_59
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_62

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    .line 1983
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_70

    :cond_6f
    move-object v3, v4

    :goto_70
    nop

    .line 1985
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportsMultiWindowInDisplayAreaForFreeForm: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName: unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_94
    invoke-static {v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->inFreeformWhiteList(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "supportsMultiWindowInDisplayAreaForFreeForm: package="

    if-nez v4, :cond_122

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_b2

    .line 1991
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_122

    .line 2000
    :cond_b2
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c6

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2001
    invoke-static {v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_dd

    :cond_c6
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2003
    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v6

    .line 2004
    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v7

    .line 2005
    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v8

    .line 2002
    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 2006
    return v1

    .line 2009
    :cond_dd
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformBlackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 2010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is in freeform blackList"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    return v2

    .line 2014
    :cond_102
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_10f

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 2016
    return v2

    .line 2018
    :cond_10f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2019
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 2020
    if-eqz v0, :cond_11c

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_11d

    :cond_11c
    const/4 v4, 0x0

    .line 2019
    :goto_11d
    invoke-virtual {p1, v1, v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1

    .line 1992
    .end local v0    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_122
    :goto_122
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1993
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 1992
    const-string v6, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_137

    .line 1994
    return v2

    .line 1996
    :cond_137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is in freeform whiteList"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return v1
.end method

.method supportsMultiWindowInDisplayAreaForSplit(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 6
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1941
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMIUIProduct()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0

    .line 1943
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1944
    return v1

    .line 1946
    :cond_13
    if-nez p1, :cond_3e

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1948
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    return v1

    .line 1952
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5f

    .line 1953
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1954
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1955
    :cond_5e
    return v1

    .line 1957
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1958
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1959
    if-eqz v0, :cond_6c

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    .line 1958
    :goto_6d
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 4
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1909
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1910
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_12

    .line 1911
    invoke-direct {v0, p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1910
    :goto_19
    return v1
.end method

.method switchUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 5615
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 5616
    return-void

    .line 5618
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 5620
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->switchUser(I)V

    .line 5621
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5622
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5624
    :cond_21
    return-void
.end method

.method taskAppearedReady()Z
    .registers 4

    .line 5009
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5010
    return v1

    .line 5013
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    .line 5014
    return v1

    .line 5017
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 5018
    return v2

    .line 5021
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 4427
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4428
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 4429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4431
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4432
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4433
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eq v1, p0, :cond_28

    .line 4434
    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4437
    :cond_28
    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4439
    const-string v3, " visibleRequested="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4441
    const-string v3, " mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4442
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4443
    const-string v3, " translucent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4445
    const-string v2, " sz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4447
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4450
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :cond_73
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4452
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4453
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_ba

    .line 4456
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4457
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4458
    :cond_ba
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 4459
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4461
    :cond_d7
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 4462
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4463
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4465
    :cond_f4
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4467
    :goto_f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4468
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1528
    const/4 v0, 0x0

    return-object v0

    .line 1530
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivitiesLocked()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 7690
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 7691
    const/4 v0, 0x0

    return-object v0

    .line 7693
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivities(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 3635
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3636
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3635
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3637
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3638
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3639
    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1510
    const/4 v0, 0x0

    return-object v0

    .line 1512
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 3614
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3615
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3614
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3616
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3617
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3618
    return-object v1
.end method

.method touchActiveTime()V
    .registers 3

    .line 1090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 1091
    return-void
.end method

.method unhandledBackLocked()V
    .registers 4

    .line 6721
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6722
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6724
    :cond_20
    if-eqz v0, :cond_29

    .line 6725
    const/4 v1, 0x1

    const-string/jumbo v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6727
    :cond_29
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 2

    .line 2169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2170
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d

    .line 2171
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2175
    :cond_d
    return-void
.end method

.method updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "originalChange"    # Lcom/android/server/wm/WindowState;

    .line 7677
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 7678
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_a

    .line 7679
    return-void

    .line 7681
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_1f

    .line 7682
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 7683
    .local v0, "s":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 7684
    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    .line 7686
    .end local v0    # "s":Landroid/view/InsetsState;
    :cond_1f
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 2815
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2816
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2817
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2818
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2823
    :cond_24
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 15
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2678
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_115

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_115

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_115

    .line 2683
    :cond_14
    const/4 v0, 0x0

    .line 2684
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2685
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2687
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2688
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2690
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v3

    .line 2691
    .local v3, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v3, :cond_fd

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_fd

    .line 2692
    iget-object v4, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2693
    .local v4, "imeWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_62

    :cond_61
    const/4 v5, 0x0

    .line 2695
    .local v5, "inputTarget":Lcom/android/server/wm/WindowState;
    :goto_62
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_71

    if-eqz v5, :cond_87

    .line 2696
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_87

    :cond_71
    if-eqz v4, :cond_87

    .line 2697
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 2698
    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isChangingFromFreeformToFullscreen()Z

    move-result v6

    if-nez v6, :cond_87

    const/4 v6, 0x1

    goto :goto_88

    :cond_87
    move v6, v7

    .line 2699
    .local v6, "isNeedAdjust":Z
    :goto_88
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2700
    .local v8, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v9, v9, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v9}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v9, v9, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2702
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v11

    or-int/2addr v10, v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v11

    or-int/2addr v10, v11

    .line 2701
    invoke-virtual {v9, v8, v10, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2703
    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v9, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v9

    .line 2704
    .local v7, "topadjustMost":I
    if-gez v7, :cond_c1

    const/4 v7, 0x0

    .line 2705
    :cond_c1
    int-to-float v9, v0

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 2706
    int-to-float v9, v1

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 2707
    const/4 v9, 0x0

    .line 2708
    .local v9, "adjust":I
    if-eqz v6, :cond_e1

    .line 2710
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 2711
    .local v10, "heightMax":I
    if-le v1, v10, :cond_e1

    .line 2712
    sub-int v9, v1, v10

    .line 2713
    if-le v9, v7, :cond_de

    move v9, v7

    .line 2715
    :cond_de
    if-lez v10, :cond_e1

    move v1, v10

    .line 2718
    .end local v10    # "heightMax":I
    :cond_e1
    if-gtz v9, :cond_e5

    if-nez v6, :cond_fd

    .line 2719
    :cond_e5
    new-instance v10, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>()V

    .line 2720
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2719
    invoke-static {v10, p0, v11, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2721
    .local v10, "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2726
    .end local v2    # "taskBounds":Landroid/graphics/Rect;
    .end local v3    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    .end local v4    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v5    # "inputTarget":Lcom/android/server/wm/WindowState;
    .end local v6    # "isNeedAdjust":Z
    .end local v7    # "topadjustMost":I
    .end local v8    # "visibleFrame":Landroid/graphics/Rect;
    .end local v9    # "adjust":I
    .end local v10    # "msg":Landroid/os/Message;
    :cond_fd
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_10a

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_10a

    .line 2727
    return-void

    .line 2729
    :cond_10a
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2730
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2731
    return-void

    .line 2679
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_115
    :goto_115
    return-void
.end method

.method updateTaskDescription()V
    .registers 6

    .line 2101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2102
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    return-void

    .line 2104
    :cond_8
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2105
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2107
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2105
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    .line 2108
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2109
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2110
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2111
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2112
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2113
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2114
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 2114
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2118
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_50

    .line 2119
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2120
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_50

    .line 2121
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2125
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_50
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2126
    return-void
.end method

.method updateTaskMovement(ZI)V
    .registers 6
    .param p1, "toTop"    # Z
    .param p2, "position"    # I

    .line 1428
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1430
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1431
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    .line 1433
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1e

    .line 1434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1436
    :cond_1e
    return-void
.end method

.method updateTaskOrganizerState()Z
    .registers 2

    .line 5076
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v0

    return v0
.end method

.method updateTaskOrganizerState(Z)Z
    .registers 6
    .param p1, "skipTaskAppeared"    # Z

    .line 5087
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5090
    return v1

    .line 5092
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5093
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v0

    return v0

    .line 5096
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5097
    .local v0, "controller":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 5100
    .local v2, "organizer":Landroid/window/ITaskOrganizer;
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2b

    if-eq v3, v2, :cond_2b

    .line 5102
    return v1

    .line 5104
    :cond_2b
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v1

    return v1
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6708
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6709
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6710
    return v1

    .line 6713
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 6715
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6717
    :cond_2c
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2763
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2764
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2765
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2766
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2767
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2f
    const-string v2, "Task"

    .line 2766
    :goto_31
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2768
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2769
    return-void
.end method
