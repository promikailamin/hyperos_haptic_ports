.class public Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;,
        Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;,
        Lcom/android/server/wm/RootWindowContainer$SleepToken;,
        Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;,
        Lcom/android/server/wm/RootWindowContainer$MyHandler;,
        Lcom/android/server/wm/RootWindowContainer$FindTaskResult;,
        Lcom/android/server/wm/RootWindowContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# static fields
.field private static final DISPLAY_OFF_SLEEP_TOKEN_TAG:Ljava/lang/String; = "Display-off"

.field static final MATCH_ATTACHED_TASK_ONLY:I = 0x0

.field static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "WindowManager"

.field static final TAG_STATES:Ljava/lang/String; = "WindowManager"

.field static final TAG_TASKS:Ljava/lang/String; = "WindowManager"

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field mCurrentUser:I

.field private mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field mDefaultMinSizeOfResizeableTaskDp:I

.field private mDestroyAllActivitiesReason:Ljava/lang/String;

.field private final mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field public mPerfBoost:Landroid/util/BoostFramework;

.field private final mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

.field private mScreenBrightnessOverride:F

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mSleepTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mTaskLayersChanged:Z

.field mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private mTmpTaskLayerRank:I

.field final mTopFocusedAppByProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFocusedDisplayId:I

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mUserRootTaskInFront:Landroid/util/SparseIntArray;

.field public mUxPerf:Landroid/util/BoostFramework;

.field mWallpaperActionPending:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$2k3zC_nv2SZ_nI8-ixMORvQU-jI(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4gCTEucWBVcwoFBz8ZTyncHFYkw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FLmzhr01j2GERvqrf-mKQKpEFpE(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLZAlJ3sCipIy27vYwSdw4Ep3R4(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p59QcVpCDJNtvMsRJBNKaYgnBHw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTaskLayersChanged(Lcom/android/server/wm/RootWindowContainer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyActivity(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->destroyActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmakeSleepTokenKey(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 256
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/RootWindowContainer;->mPerfSendTapHint:Z

    .line 257
    sput-boolean v0, Lcom/android/server/wm/RootWindowContainer;->mIsPerfBoostAcquired:Z

    .line 258
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    .line 537
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 186
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 187
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 188
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 194
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 197
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 206
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 215
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 218
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 259
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    .line 260
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUxPerf:Landroid/util/BoostFramework;

    .line 264
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 269
    new-instance v3, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    .line 276
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 280
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 283
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 285
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    .line 287
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    .line 290
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 528
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 3335
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    .line 546
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 547
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 548
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 549
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 550
    iput-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 551
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Display-off"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    .line 552
    return-void
.end method

.method private applySurfaceChangesTransaction()V
    .registers 8

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1095
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1098
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1099
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1100
    .local v1, "defaultInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1101
    .local v2, "defaultDw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1102
    .local v3, "defaultDh":I
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_22

    .line 1103
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1106
    :cond_22
    invoke-static {}, Lcom/android/server/wm/MIUIWatermarkStub;->get()Lcom/android/server/wm/MIUIWatermarkStub;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/MIUIWatermarkStub;->positionSurface(II)V

    .line 1107
    invoke-static {}, Lcom/android/server/wm/TalkbackWatermarkStub;->get()Lcom/android/server/wm/TalkbackWatermarkStub;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/TalkbackWatermarkStub;->positionSurface(II)V

    .line 1108
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/WindowManagerServiceStub;->positionContrastSurface(II)V

    .line 1110
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_46

    .line 1111
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    .line 1113
    :cond_46
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_5b

    .line 1114
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1115
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1114
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    .line 1118
    :cond_5b
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1119
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_62
    if-ge v5, v4, :cond_72

    .line 1120
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 1121
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    .line 1119
    .end local v6    # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 1126
    .end local v5    # "j":I
    :cond_72
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1127
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1128
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3216
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3217
    return v0

    .line 3219
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 3220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allow to launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    const/4 v0, 0x0

    return v0

    .line 3223
    :cond_2e
    return v0
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 3201
    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-nez p2, :cond_1c

    .line 3202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canLaunchOnDisplay(), invalid task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    return v0

    .line 3206
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canLaunchOnDisplay(), Task is not attached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    return v0

    .line 3211
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 6
    .param p1, "surfacePlacer"    # Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_49

    .line 1064
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1068
    .local v1, "curDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1070
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 1071
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2a

    .line 1072
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1077
    :cond_2a
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppTransitioning()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1084
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 1085
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_46

    .line 1086
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1063
    .end local v1    # "curDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1091
    .end local v0    # "i":I
    :cond_49
    return-void
.end method

.method private static clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2977
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p1, :cond_7

    .line 2978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2980
    :cond_7
    return-void
.end method

.method private destroyActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2988
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_6b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6b

    .line 2990
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_65

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2992
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2993
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2991
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 2998
    return-void

    .line 2988
    :cond_6b
    :goto_6b
    return-void
.end method

.method private getRootTask(III)Lcom/android/server/wm/Task;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2660
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2661
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    .line 2662
    const/4 v1, 0x0

    return-object v1

    .line 2664
    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1
.end method

.method private getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2668
    new-instance v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>()V

    .line 2669
    .local v0, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2671
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2672
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_14

    .line 2674
    iput v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    goto :goto_28

    .line 2677
    :cond_14
    new-array v5, v3, [I

    .line 2678
    .local v5, "taskIndex":[I
    new-array v6, v3, [Z

    .line 2679
    .local v6, "hasFound":[Z
    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    invoke-direct {v7, p1, v6, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/wm/Task;[Z[I)V

    invoke-virtual {v1, v7, v4}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    .line 2687
    aget-boolean v7, v6, v4

    if-eqz v7, :cond_26

    aget v2, v5, v4

    :cond_26
    iput v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    .line 2689
    .end local v5    # "taskIndex":[I
    .end local v6    # "hasFound":[Z
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    iput-boolean v5, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 2690
    iget-object v5, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2692
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDescendantTaskCount()I

    move-result v5

    .line 2693
    .local v5, "numTasks":I
    new-array v6, v5, [I

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 2694
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 2695
    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 2696
    new-array v6, v5, [I

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 2697
    new-array v3, v3, [I

    aput v4, v3, v4

    .line 2699
    .local v3, "currentIndex":[I
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;

    invoke-direct {v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;-><init>()V

    const-class v7, Lcom/android/server/wm/Task;

    .line 2700
    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    .line 2699
    invoke-static {v6, v7, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 2702
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v6, v4}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2703
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2705
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2706
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_6d

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :cond_6d
    iput-object v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2707
    return-object v0
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "objectId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 669
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 678
    return-void
.end method

.method private static handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3023
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_5

    return-void

    .line 3024
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3025
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3024
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 3027
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    .line 3029
    const-string v0, "handleAppCrashed"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 3030
    return-void
.end method

.method private handleResizingWindows()V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_30

    .line 1135
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1136
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_23

    .line 1139
    goto :goto_2d

    .line 1141
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 1142
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1134
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1144
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method static synthetic lambda$addStartingWindowsForVisibleActivities$25(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "addedTasks"    # Ljava/util/ArrayList;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2922
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2923
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_19

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_19

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2924
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 2925
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2927
    :cond_19
    return-void
.end method

.method static synthetic lambda$allPausedActivitiesComplete$33([ZLcom/android/server/wm/Task;)Z
    .registers 11
    .param p0, "pausing"    # [Z
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 3519
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3520
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_42

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 3521
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x355b0786

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3523
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_36
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3524
    aput-boolean v1, p0, v1

    goto :goto_42

    .line 3526
    :cond_41
    return v3

    .line 3529
    :cond_42
    :goto_42
    return v1
.end method

.method static synthetic lambda$allResumedActivitiesVisible$32([ZLcom/android/server/wm/Task;)Z
    .registers 6
    .param p0, "foundResumed"    # [Z
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 3501
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3502
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 3503
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 3504
    return v3

    .line 3506
    :cond_d
    aput-boolean v3, p0, v1

    .line 3508
    :cond_f
    return v1
.end method

.method static synthetic lambda$applySleepTokens$19(Lcom/android/server/wm/TaskFragment;)V
    .registers 1
    .param p0, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->awakeFromSleeping()V

    return-void
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 758
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$dumpActivities$40([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V
    .registers 17
    .param p0, "needSep"    # [Z
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "printed"    # [Z
    .param p7, "rootTask"    # Lcom/android/server/wm/Task;

    .line 3795
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_8

    .line 3796
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3798
    :cond_8
    const/4 v8, 0x0

    move-object/from16 v2, p7

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v0

    .line 3799
    aget-boolean v1, p6, v0

    aget-boolean v2, p0, v0

    or-int/2addr v1, v2

    aput-boolean v1, p6, v0

    .line 3800
    return-void
.end method

.method static synthetic lambda$dumpActivities$41(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3804
    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$42([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 13
    .param p0, "printed"    # [Z
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # [Z
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 3802
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    aget-boolean v5, p3, v0

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;

    invoke-direct {v7, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "    Resumed: "

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 3806
    return-void
.end method

.method static synthetic lambda$dumpActivities$43(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3812
    const-string v0, "  Activities waiting to finish:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$44(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3816
    const-string v0, "  Activities waiting to stop:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpWindowsNoHeader$9(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "index"    # [I
    .param p3, "dumpAll"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1328
    if-eqz p0, :cond_8

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1329
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    const/4 v0, 0x1

    if-nez p3, :cond_39

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    move v2, v1

    goto :goto_3a

    :cond_39
    :goto_39
    move v2, v0

    :goto_3a
    const-string v3, "    "

    invoke-virtual {p4, p1, v3, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1331
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 1333
    :cond_44
    return-void
.end method

.method static synthetic lambda$finishTopCrashedActivities$17(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 8
    .param p0, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "focusedRootTask"    # Lcom/android/server/wm/Task;
    .param p3, "finishedTask"    # [Lcom/android/server/wm/Task;
    .param p4, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2506
    invoke-virtual {p4, p0, p1}, Lcom/android/server/wm/Task;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2507
    .local v0, "t":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eq p4, p2, :cond_b

    aget-object v2, p3, v1

    if-nez v2, :cond_d

    .line 2508
    :cond_b
    aput-object v0, p3, v1

    .line 2510
    :cond_d
    return-void
.end method

.method static synthetic lambda$finishVoiceTask$31(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V
    .registers 2
    .param p0, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 3439
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3440
    return-void
.end method

.method static synthetic lambda$getDisplayContextsWithNonToastVisibleWindows$10(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "pid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1415
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$getDumpActivities$39(IZLjava/util/ArrayList;Ljava/lang/String;ILcom/android/server/wm/Task;)Z
    .registers 9
    .param p0, "recentsComponentUid"    # I
    .param p1, "dumpVisibleRootTasksOnly"    # Z
    .param p2, "activities"    # Ljava/util/ArrayList;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "task"    # Lcom/android/server/wm/Task;

    .line 3741
    iget v0, p5, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 3742
    .local v0, "isRecents":Z
    :goto_8
    if-eqz p1, :cond_13

    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v0, :cond_1a

    .line 3743
    :cond_13
    invoke-virtual {p5, p3, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3745
    :cond_1a
    return v1
.end method

.method static synthetic lambda$getRootTaskInfo$21(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Z
    .registers 7
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "hasFound"    # [Z
    .param p2, "taskIndex"    # [I
    .param p3, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2680
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_7

    .line 2681
    aput-boolean v0, p1, v1

    .line 2682
    return v0

    .line 2684
    :cond_7
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 2685
    return v1
.end method

.method static synthetic lambda$getTaskToShowPermissionDialogOn$37(Lcom/android/server/policy/PermissionPolicyInternal;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "pPi"    # Lcom/android/server/policy/PermissionPolicyInternal;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3705
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3706
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyInternal;->isIntentToPermissionDialog(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 3705
    :goto_17
    return v0
.end method

.method static synthetic lambda$getTaskToShowPermissionDialogOn$38(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[ILcom/android/server/wm/TaskFragment;)Z
    .registers 14
    .param p0, "pPi"    # Lcom/android/server/policy/PermissionPolicyInternal;
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "validTaskId"    # [I
    .param p4, "fragment"    # Lcom/android/server/wm/TaskFragment;

    .line 3703
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;)V

    invoke-virtual {p4, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3708
    .local v0, "record":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3709
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3710
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3711
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3710
    move-object v3, p0

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/PermissionPolicyInternal;->shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3712
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    aput v2, p3, v1

    .line 3713
    const/4 v1, 0x1

    return v1

    .line 3715
    :cond_3c
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivities$13(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p0, "topFocusedRootTask"    # Lcom/android/server/wm/Task;
    .param p1, "topVisibleActivities"    # Ljava/util/ArrayList;
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1923
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1924
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_26

    .line 1925
    new-instance v1, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 1926
    .local v1, "visibleActivity":Lcom/android/server/wm/ActivityAssistInfo;
    if-ne p2, p0, :cond_19

    .line 1927
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26

    .line 1930
    :cond_19
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/wm/ActivityRecordStub;->shouldNotBeResume(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1931
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "visibleActivity":Lcom/android/server/wm/ActivityAssistInfo;
    :cond_26
    :goto_26
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/util/ArrayList;
    .param p2, "objectId"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 670
    if-eqz p0, :cond_16

    .line 671
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 672
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 674
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1f

    .line 675
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic lambda$hasVisibleWindowAboveButDoesNotOwnNotificationShade$30(I[ZLcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p0, "uid"    # I
    .param p1, "visibleWindowFound"    # [Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 3315
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3316
    aput-boolean v1, p1, v2

    .line 3318
    :cond_e
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f8

    if-ne v0, v3, :cond_21

    .line 3319
    aget-boolean v0, p1, v2

    if-eqz v0, :cond_1f

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v0, p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1

    .line 3321
    :cond_21
    return v2
.end method

.method static synthetic lambda$lockAllProfileTasks$34(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3554
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_a

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$moveActivityToPinnedRootTask$15(Lcom/android/server/wm/TaskFragment;)V
    .registers 2
    .param p0, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 2241
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2242
    return-void

    .line 2244
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 2245
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2249
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2251
    :cond_15
    return-void
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$8(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 1050
    return-void
.end method

.method static synthetic lambda$putTasksToSleep$28(Z[ZZLcom/android/server/wm/Task;)V
    .registers 7
    .param p0, "allowDelay"    # Z
    .param p1, "result"    # [Z
    .param p2, "shuttingDown"    # Z
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 3005
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 3006
    aget-boolean v1, p1, v0

    invoke-virtual {p3, p2}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v2

    and-int/2addr v1, v2

    aput-boolean v1, p1, v0

    goto :goto_11

    .line 3008
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3011
    :goto_11
    return-void
.end method

.method static synthetic lambda$refreshSecureSurfaceState$3(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 737
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 740
    :cond_d
    return-void
.end method

.method static synthetic lambda$resumeFocusedTasksTopActivities$18(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/DisplayContent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 11
    .param p0, "targetRootTask"    # Lcom/android/server/wm/Task;
    .param p1, "resumedOnDisplay"    # [Z
    .param p2, "curResult"    # Z
    .param p3, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "targetOptions"    # Landroid/app/ActivityOptions;
    .param p5, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2543
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2544
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-nez v0, :cond_d

    goto :goto_2e

    .line 2547
    :cond_d
    const/4 v1, 0x0

    if-ne p6, p0, :cond_16

    .line 2552
    aget-boolean v2, p1, v1

    or-int/2addr v2, p2

    aput-boolean v2, p1, v1

    .line 2553
    return-void

    .line 2558
    :cond_16
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    .line 2559
    invoke-interface {v2, p6, v0, p3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->shouldExecuteAppTransitionWhenResumeFocused(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2564
    invoke-virtual {p6, p4}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_2d

    .line 2566
    :cond_24
    aget-boolean v2, p1, v1

    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p1, v1

    .line 2568
    :goto_2d
    return-void

    .line 2545
    :cond_2e
    :goto_2e
    return-void
.end method

.method static synthetic lambda$startPowerModeLaunchIfNeeded$36([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 10
    .param p0, "noResumedActivities"    # [Z
    .param p1, "allFocusedProcessesDiffer"    # [Z
    .param p2, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 3655
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3657
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3659
    .local v1, "resumedActivityProcess":Lcom/android/server/wm/WindowProcessController;
    :goto_a
    const/4 v2, 0x0

    aget-boolean v3, p0, v2

    const/4 v4, 0x1

    if-nez v1, :cond_12

    move v5, v4

    goto :goto_13

    :cond_12
    move v5, v2

    :goto_13
    and-int/2addr v3, v5

    aput-boolean v3, p0, v2

    .line 3660
    if-eqz v1, :cond_24

    .line 3661
    aget-boolean v3, p1, v2

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3662
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    and-int/2addr v3, v4

    aput-boolean v3, p1, v2

    .line 3664
    :cond_24
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 539
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_7

    .line 540
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 542
    :cond_7
    return-void
.end method

.method static synthetic lambda$switchUser$14(ILcom/android/server/wm/Task;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2024
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->switchUser(I)V

    .line 2025
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 753
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 754
    return-void
.end method

.method static synthetic lambda$updateDisplayImePolicyCache$24(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p0, "displayImePolicyMap"    # Landroid/util/ArrayMap;
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 2826
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "packages"    # Landroid/util/ArraySet;
    .param p1, "suspended"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 745
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 746
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 748
    :cond_d
    return-void
.end method

.method private static makeSleepTokenKey(Ljava/lang/String;I)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "displayId"    # I

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3823
    .local v0, "tokenKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private static matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .registers 8
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I
    .param p2, "compareIntentFilters"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "cls"    # Landroid/content/ComponentName;

    .line 3049
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_c

    goto :goto_22

    .line 3051
    :cond_c
    const/4 v0, 0x1

    if-eqz p2, :cond_18

    .line 3052
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3053
    return v0

    .line 3058
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3059
    return v0

    .line 3062
    :cond_21
    return v1

    .line 3049
    :cond_22
    :goto_22
    return v1
.end method

.method private static processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .registers 8
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "info"    # Landroid/app/ActivityTaskManager$RootTaskInfo;
    .param p2, "currentIndex"    # [I

    .line 2712
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2713
    .local v1, "i":I
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    .line 2714
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 2715
    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 2716
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 2717
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_31

    :cond_2e
    const-string/jumbo v3, "unknown"

    :goto_31
    aput-object v3, v2, v1

    .line 2718
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2719
    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    aput v3, v2, v1

    .line 2720
    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 2721
    return-void
.end method

.method private shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3326
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3327
    :cond_8
    const-string v0, "assist"

    if-ne p2, v0, :cond_d

    return v1

    .line 3332
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    return v0
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 2781
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    .line 2782
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 2783
    return-void
.end method

.method private static updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3432
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3433
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 3435
    :cond_f
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 33
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v2, :cond_f

    .line 2317
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2319
    :cond_f
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_1ea

    .line 2320
    const/16 v3, 0x1601

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v2

    .line 2322
    .local v2, "pkgType":I
    const/4 v3, -0x1

    .line 2323
    .local v3, "wpcPid":I
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v4, :cond_46

    if-eqz v1, :cond_46

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_46

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_46

    .line 2324
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2325
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 2326
    .local v4, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2329
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    .line 2332
    .end local v4    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_46
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v4}, Landroid/util/BoostFramework;->getPerfHalVersion()D

    move-result-wide v4

    const-wide v6, 0x4002666660000000L    # 2.299999952316284

    cmpl-double v4, v4, v6

    const-string v13, ", packageName: "

    const-string v14, ", gameType: "

    const-string v15, "WindowManager"

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-ltz v4, :cond_13b

    .line 2333
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v17, -0x1

    const/16 v18, 0x1081

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v20, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x2

    new-array v6, v10, [I

    aput v2, v6, v12

    aput v3, v6, v9

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v6

    invoke-virtual/range {v16 .. v23}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    .line 2335
    sput-boolean v9, Lcom/android/server/wm/RootWindowContainer;->mPerfSendTapHint:Z

    .line 2336
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v24, -0x1

    const/16 v25, 0x1081

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v27, -0x1

    const/16 v28, 0x2

    const/16 v29, 0x2

    new-array v6, v10, [I

    aput v2, v6, v12

    aput v3, v6, v9

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v30, v6

    invoke-virtual/range {v23 .. v30}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    .line 2338
    if-eq v3, v11, :cond_bb

    .line 2339
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, -0x1

    const/16 v7, 0x1081

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v4, 0x67

    const/16 v16, 0x2

    new-array v11, v10, [I

    aput v2, v11, v12

    aput v3, v11, v9

    move v9, v3

    move v10, v4

    move-object v4, v11

    move/from16 v11, v16

    move/from16 v16, v3

    move v3, v12

    .end local v3    # "wpcPid":I
    .local v16, "wpcPid":I
    move-object v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    goto :goto_be

    .line 2338
    .end local v16    # "wpcPid":I
    .restart local v3    # "wpcPid":I
    :cond_bb
    move/from16 v16, v3

    move v3, v12

    .line 2344
    .end local v3    # "wpcPid":I
    .restart local v16    # "wpcPid":I
    :goto_be
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "When perf version exceed 2.3, MiGTStub result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2345
    invoke-static {}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->getInstance()Lcom/android/server/wm/MiGameTypeIdentificationStub;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2346
    invoke-interface {v5, v6}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->checkIfGameBeSupported(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2344
    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-static {}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->getInstance()Lcom/android/server/wm/MiGameTypeIdentificationStub;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->checkIfGameBeSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_101

    const/4 v13, 0x1

    goto :goto_120

    .line 2355
    :cond_101
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, -0x1

    const/16 v7, 0x1081

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v12, v4, [I

    aput v2, v12, v3

    const/4 v13, 0x1

    aput v16, v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v4

    sput v4, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    move v5, v13

    move/from16 v6, v16

    const/4 v9, -0x1

    goto/16 :goto_1ab

    .line 2348
    :cond_11e
    const/4 v4, 0x2

    const/4 v13, 0x1

    .line 2351
    :goto_120
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, -0x1

    const/16 v7, 0x1081

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    new-array v12, v4, [I

    aput v2, v12, v3

    aput v16, v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v4

    sput v4, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    move v5, v13

    move/from16 v6, v16

    const/4 v9, -0x1

    goto :goto_1ab

    .line 2360
    .end local v16    # "wpcPid":I
    .restart local v3    # "wpcPid":I
    :cond_13b
    move/from16 v16, v3

    move v5, v9

    move v4, v10

    move v3, v12

    .end local v3    # "wpcPid":I
    .restart local v16    # "wpcPid":I
    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v8, 0x1081

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v7, v9, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2362
    sput-boolean v5, Lcom/android/server/wm/RootWindowContainer;->mPerfSendTapHint:Z

    .line 2363
    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7, v9, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2365
    move/from16 v6, v16

    .end local v16    # "wpcPid":I
    .local v6, "wpcPid":I
    if-eq v6, v9, :cond_160

    .line 2366
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v11, 0x67

    invoke-virtual {v7, v8, v10, v6, v11}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2371
    :cond_160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "When perf version lower than 2.3, MiGTStub result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2372
    invoke-static {}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->getInstance()Lcom/android/server/wm/MiGameTypeIdentificationStub;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2373
    invoke-interface {v10, v11}, Lcom/android/server/wm/MiGameTypeIdentificationStub;->checkIfGameBeSupported(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2371
    invoke-static {v15, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    if-ne v2, v4, :cond_1a0

    .line 2377
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    sput v4, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    goto :goto_1ab

    .line 2381
    :cond_1a0
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    sput v4, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    .line 2386
    :goto_1ab
    sget v4, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    if-lez v4, :cond_1b1

    .line 2387
    sput-boolean v5, Lcom/android/server/wm/RootWindowContainer;->mIsPerfBoostAcquired:Z

    .line 2389
    :cond_1b1
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1ea

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v4, :cond_1ea

    .line 2391
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_1ea

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v4, v5, :cond_1ea

    .line 2393
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v10, 0x2f

    .line 2395
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 2394
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2393
    invoke-virtual {v4, v9, v5, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 2399
    .end local v2    # "pkgType":I
    .end local v6    # "wpcPid":I
    :cond_1ea
    return-void
.end method

.method addStartingWindowsForVisibleActivities()V
    .registers 3

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2921
    .local v0, "addedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2928
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 4

    .line 3517
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v0, v1

    .line 3518
    .local v0, "pausing":[Z
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 3531
    .local v1, "hasActivityNotCompleted":Z
    if-eqz v1, :cond_13

    .line 3532
    return v2

    .line 3534
    :cond_13
    aget-boolean v2, v0, v2

    return v2
.end method

.method allResumedActivitiesIdle()Z
    .registers 15

    .line 3470
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_6
    if-ltz v0, :cond_58

    .line 3472
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3475
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 3477
    goto :goto_55

    .line 3482
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3483
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3484
    goto :goto_55

    .line 3486
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3487
    .local v4, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_32

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_55

    .line 3488
    :cond_32
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_54

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    int-to-long v7, v5

    .local v7, "protoLogParam0":J
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x37ece3cd

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v6

    aput-object v5, v12, v1

    invoke-static {v9, v10, v1, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3490
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    .end local v7    # "protoLogParam0":J
    :cond_54
    return v6

    .line 3470
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "rootTask":Lcom/android/server/wm/Task;
    .end local v4    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3494
    .end local v0    # "displayNdx":I
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 3495
    return v1
.end method

.method allResumedActivitiesVisible()Z
    .registers 4

    .line 3499
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 3500
    .local v0, "foundResumed":[Z
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;-><init>([Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 3510
    .local v2, "foundInvisibleResumedActivity":Z
    if-eqz v2, :cond_12

    .line 3511
    return v1

    .line 3513
    :cond_12
    aget-boolean v1, v0, v1

    return v1
.end method

.method anyTaskForId(I)Lcom/android/server/wm/Task;
    .registers 3
    .param p1, "id"    # I

    .line 3563
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 3567
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .registers 16
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    .line 3581
    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    if-nez p3, :cond_6

    goto :goto_e

    .line 3582
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3586
    :cond_e
    :goto_e
    new-instance v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 3587
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3586
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3588
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3589
    .local v9, "task":Lcom/android/server/wm/Task;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3591
    const/4 v2, 0x0

    if-eqz v9, :cond_4b

    .line 3592
    if-eqz p3, :cond_4a

    .line 3595
    nop

    .line 3596
    invoke-virtual {p0, v2, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v10

    .line 3597
    .local v10, "targetRootTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_4a

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v2, v10, :cond_4a

    .line 3598
    if-eqz p4, :cond_3e

    .line 3599
    const/4 v0, 0x0

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    move v5, v0

    .line 3600
    .local v5, "reparentMode":I
    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "anyTaskForId"

    move-object v2, v9

    move-object v3, v10

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 3604
    .end local v5    # "reparentMode":I
    .end local v10    # "targetRootTask":Lcom/android/server/wm/Task;
    :cond_4a
    return-object v9

    .line 3608
    :cond_4b
    if-nez p2, :cond_4e

    .line 3609
    return-object v2

    .line 3614
    :cond_4e
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v3, " in recents"

    const-string v4, "WindowManager"

    if-eqz v0, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for task id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3617
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_99

    .line 3618
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_98

    .line 3619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tDidn\'t find task id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_98
    return-object v2

    .line 3625
    :cond_99
    const/4 v3, 0x1

    if-ne p2, v3, :cond_9d

    .line 3626
    return-object v0

    .line 3630
    :cond_9d
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v0, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 3631
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_c5

    .line 3632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore task id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found in recents"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    :cond_c5
    return-object v2

    .line 3637
    :cond_c6
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_e6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from in recents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :cond_e6
    return-object v0
.end method

.method applySleepTokens(Z)V
    .registers 6
    .param p1, "applyToRootTasks"    # Z

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_6
    if-ltz v0, :cond_31

    .line 2591
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2592
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v2

    .line 2593
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_19

    .line 2594
    goto :goto_2e

    .line 2596
    :cond_19
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    .line 2599
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2600
    goto :goto_2e

    .line 2604
    :cond_23
    if-nez p1, :cond_26

    .line 2605
    goto :goto_2e

    .line 2609
    :cond_26
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2589
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayShouldSleep":Z
    :goto_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2635
    .end local v0    # "displayNdx":I
    :cond_31
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->process(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 1973
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->reset()V

    .line 1971
    return v0

    .line 1973
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mAttachApplicationHelper:Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->reset()V

    .line 1974
    throw v0
.end method

.method canShowStrictModeViolation(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 758
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 759
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 10
    .param p1, "homeInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "allowInstrumenting"    # Z

    .line 1815
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 1819
    return v2

    .line 1822
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1823
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1824
    .local v0, "app":Lcom/android/server/wm/WindowProcessController;
    if-nez p3, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1826
    return v2

    .line 1829
    :cond_26
    const/4 v3, -0x1

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    goto :goto_2f

    .line 1830
    :cond_2e
    move v4, v3

    :goto_2f
    nop

    .line 1831
    .local v4, "displayId":I
    if-eqz v4, :cond_53

    if-eq v4, v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne v4, v3, :cond_3b

    goto :goto_53

    .line 1837
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1838
    return v2

    .line 1841
    :cond_42
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4e

    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4e

    move v3, v1

    goto :goto_4f

    :cond_4e
    move v3, v2

    .line 1843
    .local v3, "supportMultipleInstance":Z
    :goto_4f
    if-nez v3, :cond_52

    .line 1845
    return v2

    .line 1848
    :cond_52
    return v1

    .line 1834
    .end local v3    # "supportMultipleInstance":Z
    :cond_53
    :goto_53
    return v1
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 4
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2969
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2971
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2969
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2972
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2973
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2974
    return-void
.end method

.method closeSystemDialogActivities(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3293
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3299
    return-void
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 763
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 765
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method copyAnimToLayoutParams()Z
    .registers 5

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1251
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 1252
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1253
    const/4 v0, 0x1

    .line 1255
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_22

    .line 1256
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1257
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_22

    .line 1258
    const/4 v0, 0x1

    .line 1262
    :cond_22
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_28

    .line 1263
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 1266
    :cond_28
    return v0
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;
    .registers 20
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 2852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2853
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_aa

    .line 2857
    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result v4

    .line 2858
    .local v4, "tokenKey":I
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 2859
    .local v5, "token":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    if-nez v5, :cond_91

    .line 2860
    new-instance v6, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    invoke-direct {v6, v1, v2}, Lcom/android/server/wm/RootWindowContainer$SleepToken;-><init>(Ljava/lang/String;I)V

    move-object v5, v6

    .line 2861
    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2862
    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4a

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    int-to-long v9, v2

    .local v9, "protoLogParam1":J
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x12f0a7ca

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v6, v15, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2868
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":J
    :cond_4a
    invoke-static {v2, v8, v1}, Lcom/android/server/wm/EventLogTags;->writeWmSleepToken(IILjava/lang/String;)V

    .line 2870
    if-nez v2, :cond_90

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ne v6, v8, :cond_90

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDeviceSupportsAodWallpaper:Z

    if-eqz v6, :cond_90

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSupportsAmbientMode:Z

    if-eqz v6, :cond_90

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2872
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->isGoingToSleep()Z

    move-result v6

    if-nez v6, :cond_77

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v6

    if-nez v6, :cond_90

    .line 2873
    :cond_77
    const-string v6, "WindowManager"

    const-string v9, "Updating orientation for sleep start"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v8, v9, Lcom/android/server/wm/WindowManagerService;->mUpdatingOrientationForSleep:Z

    .line 2875
    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 2876
    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v8, Lcom/android/server/wm/WindowManagerService;->mUpdatingOrientationForSleep:Z

    .line 2877
    const-string v7, "Updating orientation for sleep end"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_90
    return-object v5

    .line 2865
    :cond_91
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the same sleep token twice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2854
    .end local v4    # "tokenKey":I
    .end local v5    # "token":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    :cond_aa
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .registers 3

    .line 175
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    return-void
.end method

.method dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "child"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 727
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_8

    .line 729
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    goto :goto_b

    .line 731
    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 733
    :goto_b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3753
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3754
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topDisplayFocusedRootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_27
    if-ltz v0, :cond_35

    .line 3757
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3758
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3756
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 3760
    .end local v0    # "i":I
    :cond_35
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3761
    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .line 3784
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v14, 0x0

    aput-boolean v14, v2, v14

    move-object v15, v2

    .line 3785
    .local v15, "printed":[Z
    new-array v2, v1, [Z

    aput-boolean v14, v2, v14

    move-object v12, v2

    .line 3786
    .local v12, "needSep":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    move v9, v2

    .local v9, "displayNdx":I
    :goto_16
    if-ltz v9, :cond_57

    .line 3787
    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 3788
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    aget-boolean v1, v15, v14

    if-eqz v1, :cond_26

    .line 3789
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3791
    :cond_26
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3792
    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3793
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3801
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;

    move-object/from16 v11, p5

    invoke-direct {v1, v15, v13, v11, v12}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;-><init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V

    invoke-virtual {v10, v1}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3786
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    :cond_57
    move-object/from16 v11, p5

    .line 3809
    .end local v9    # "displayNdx":I
    aget-boolean v16, v15, v14

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;

    invoke-direct {v9, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;-><init>(Ljava/io/PrintWriter;)V

    const/16 v17, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v18, v9

    move-object/from16 v9, p5

    move-object/from16 v11, v18

    move-object/from16 v18, v12

    .end local v12    # "needSep":[Z
    .local v18, "needSep":[Z
    move-object/from16 v12, v17

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int v1, v16, v1

    aput-boolean v1, v15, v14

    .line 3813
    aget-boolean v16, v15, v14

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    invoke-direct {v11, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int v1, v16, v1

    aput-boolean v1, v15, v14

    .line 3818
    aget-boolean v1, v15, v14

    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1346
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1347
    return-void

    .line 1350
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1351
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1353
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1354
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 1355
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 1354
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1356
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1357
    return-void
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3770
    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    .line 3772
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_31

    .line 3773
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3774
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3775
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3776
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3777
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3772
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 3780
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1293
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1296
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_25

    .line 1297
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1298
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1296
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1300
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    goto :goto_2b

    .line 1301
    :cond_26
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    :goto_2b
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1312
    return-void

    .line 1314
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1316
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1317
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1318
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1319
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1316
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1322
    .end local v1    # "displayNdx":I
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1323
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1337
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 1339
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1338
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1341
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1306
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1326
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1327
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1334
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 1983
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1984
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1991
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1992
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_38

    .line 1998
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 2000
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_1c
    if-ltz v0, :cond_2a

    .line 2001
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2002
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_31

    .line 2000
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 2006
    .end local v0    # "displayNdx":I
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2007
    nop

    .line 2008
    return-void

    .line 2006
    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2007
    throw v0

    .line 1994
    :cond_38
    :goto_38
    return-void
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .registers 11
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1869
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1872
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_a

    .line 1874
    return v2

    .line 1879
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1880
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    .line 1883
    .local v4, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1884
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    move-result-object v4

    .line 1889
    :cond_1b
    if-eqz p1, :cond_20

    .line 1890
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    .line 1892
    :cond_20
    if-eqz p1, :cond_28

    if-eqz p3, :cond_28

    if-eqz v4, :cond_28

    .line 1893
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1897
    :cond_28
    if-eqz p1, :cond_45

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getCastRotationMode()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFinishCastActivity:Z

    if-eqz v5, :cond_45

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFinishCastActivity:Z

    .line 1899
    return v2

    .line 1903
    :cond_45
    if-eqz v3, :cond_4c

    .line 1905
    invoke-virtual {v3, v4, p1, p4, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0

    .line 1908
    :cond_4c
    return v2
.end method

.method executeAppTransitionForAllDisplay()V
    .registers 4

    .line 2308
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_6
    if-ltz v0, :cond_16

    .line 2309
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2310
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2308
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2312
    .end local v0    # "displayNdx":I
    :cond_16
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 3033
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3034
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3035
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3037
    :cond_12
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3039
    .local v7, "userId":I
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 3040
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 3041
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3039
    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 3042
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3043
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3044
    return-object v2
.end method

.method findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 15
    .param p1, "activityType"    # I
    .param p2, "taskAffinity"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p6, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2419
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 29
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "activityType"    # I
    .param p3, "taskAffinity"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "info"    # Landroid/content/pm/ActivityInfo;
    .param p6, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p7, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2428
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_39

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam2":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam3":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam4":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x5cf64ed6

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v6

    const/4 v14, 0x1

    aput-object v7, v13, v14

    aput-object v8, v13, v4

    const/4 v14, 0x3

    aput-object v9, v13, v14

    const/4 v14, 0x4

    aput-object v10, v13, v14

    invoke-static {v11, v12, v6, v5, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2433
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":Ljava/lang/String;
    .end local v8    # "protoLogParam2":Ljava/lang/String;
    .end local v9    # "protoLogParam3":Ljava/lang/String;
    .end local v10    # "protoLogParam4":Ljava/lang/String;
    :cond_39
    iget-object v15, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    move-object/from16 v16, p1

    move/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->init(Lcom/android/server/wm/ActivityRecord;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2436
    const/4 v3, 0x0

    .line 2437
    .local v3, "candidateActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_ab

    .line 2438
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2439
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_a1

    .line 2440
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v5, v7, :cond_65

    .line 2442
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 2445
    :cond_65
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v5, v7, :cond_9c

    .line 2447
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mUxPerf:Landroid/util/BoostFramework;

    .line 2448
    nop

    .line 2449
    iget v5, v5, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v7, 0x21

    if-ge v5, v7, :cond_8e

    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mUxPerf:Landroid/util/BoostFramework;

    iget v5, v5, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v5, v7, :cond_8e

    .line 2451
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v5, 0x6

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_9c

    .line 2453
    :cond_8e
    iget-object v5, v0, Lcom/android/server/wm/RootWindowContainer;->mUxPerf:Landroid/util/BoostFramework;

    const/16 v6, 0x10a1

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    new-array v8, v4, [I

    fill-array-data v8, :array_fc

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    .line 2457
    :cond_9c
    :goto_9c
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v4

    .line 2458
    :cond_a1
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_ab

    .line 2459
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2464
    :cond_ab
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_bd

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2465
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v4

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v4, v7, :cond_d4

    .line 2466
    :cond_bd
    if-eqz v2, :cond_cb

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 2467
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_d4

    .line 2468
    :cond_cb
    if-nez v2, :cond_d4

    .line 2469
    const-string v4, "WindowManager"

    const-string v7, "Should not happen! Didn\'t apply launch boost"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_d4
    :goto_d4
    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;

    invoke-direct {v4, v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2484
    .local v4, "idealMatchActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_e2

    .line 2485
    return-object v4

    .line 2488
    :cond_e2
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v7}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_fb

    if-nez v3, :cond_fb

    .line 2489
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v7, :cond_fb

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x5204a23e

    move-object v9, v5

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2491
    :cond_fb
    return-object v3

    :array_fc
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2410
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2403
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v0, p0

    move-object v5, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer;->findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .param p6, "onlyRemoveNoProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZIZ)Z"
        }
    .end annotation

    .line 3416
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->process(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result v0

    return v0
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .registers 7
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2504
    .local v0, "focusedRootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/Task;

    .line 2505
    .local v1, "finishedTask":[Lcom/android/server/wm/Task;
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 2511
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_19

    aget-object v2, v1, v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1a

    :cond_19
    const/4 v2, -0x1

    :goto_1a
    return v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3438
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3441
    return-void
.end method

.method forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayPolicy;",
            ">;)V"
        }
    .end annotation

    .line 1390
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayPolicy;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1391
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1390
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1393
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method forAllDisplays(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;)V"
        }
    .end annotation

    .line 1384
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1385
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1384
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1387
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 687
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 688
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 689
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_19

    .line 690
    return-object v2

    .line 686
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 693
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getAllRootTaskInfos(I)Ljava/util/ArrayList;
    .registers 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2744
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_11

    .line 2745
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2748
    return-object v0

    .line 2750
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2751
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_18

    .line 2752
    return-object v0

    .line 2754
    :cond_18
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2757
    return-object v0
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 1400
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1401
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1402
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_19

    .line 1403
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    .line 1400
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1406
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 1452
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "userId"    # I

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1, "displayId"    # I

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1487
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1488
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_13

    .line 1489
    return-object v1

    .line 1486
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1492
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_26

    .line 1474
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1475
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    .line 1476
    .local v2, "isValid":Z
    if-eqz v2, :cond_23

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1477
    return-object v1

    .line 1473
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "isValid":Z
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1481
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1, "displayId"    # I

    .line 1502
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1503
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_7

    .line 1504
    return-object v0

    .line 1506
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 1508
    return-object v2

    .line 1510
    :cond_d
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1511
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_14

    .line 1513
    return-object v2

    .line 1516
    :cond_14
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    move-object v0, v2

    .line 1517
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1518
    return-object v0
.end method

.method getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V
    .registers 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1410
    .local p2, "outContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p2, :cond_3

    .line 1411
    return-void

    .line 1413
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_2a

    .line 1414
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1415
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1417
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1420
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method getDisplayUiContext(I)Landroid/content/Context;
    .registers 3
    .param p1, "displayId"    # I

    .line 1424
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 1424
    :goto_10
    return-object v0
.end method

.method getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleRootTasksOnly"    # Z
    .param p3, "dumpFocusedRootTaskOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 3727
    if-eqz p3, :cond_13

    .line 3728
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3729
    .local v0, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    .line 3730
    invoke-virtual {v0, p1, p4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3732
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 3735
    .end local v0    # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    .line 3736
    .local v0, "recentTasks":Lcom/android/server/wm/RecentTasks;
    if-eqz v0, :cond_23

    .line 3737
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v1

    move v3, v1

    goto :goto_25

    .line 3738
    :cond_23
    const/4 v1, -0x1

    move v3, v1

    :goto_25
    nop

    .line 3739
    .local v3, "recentsComponentUid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3740
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    new-instance v8, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    move-object v2, v8

    move v4, p2

    move-object v5, v1

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V

    invoke-virtual {p0, v8}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 3747
    return-object v1
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMiuiConfigFlag()I
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiConfigFlag()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMiuiProjection()Z
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiProjection()Z

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1361
    const-string v0, "ROOT"

    return-object v0
.end method

.method getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 9
    .param p1, "currentFocus"    # Lcom/android/server/wm/Task;
    .param p2, "ignoreCurrent"    # Z

    .line 3256
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3257
    .local v0, "preferredDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v0, :cond_10

    .line 3260
    iget v1, p1, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3261
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3263
    :cond_10
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3265
    .local v1, "preferredFocusableRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_17

    .line 3266
    return-object v1

    .line 3268
    :cond_17
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 3272
    return-object v3

    .line 3276
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_42

    .line 3277
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 3278
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, v5, :cond_34

    .line 3280
    goto :goto_3f

    .line 3282
    :cond_34
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 3283
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3284
    .local v5, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_3f

    .line 3285
    return-object v5

    .line 3276
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "nextFocusableRootTask":Lcom/android/server/wm/Task;
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 3289
    .end local v2    # "i":I
    :cond_42
    return-object v3
.end method

.method getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;
    .registers 27
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "sourceTask"    # Lcom/android/server/wm/Task;
    .param p5, "onTop"    # Z
    .param p6, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p7, "launchFlags"    # I

    .line 3099
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    if-eqz v11, :cond_1d

    .line 3100
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3101
    .local v1, "candidateRoot":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1d

    invoke-direct {v0, v10, v1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3102
    return-object v1

    .line 3107
    .end local v1    # "candidateRoot":Lcom/android/server/wm/Task;
    :cond_1d
    const/4 v1, -0x1

    if-eqz v11, :cond_41

    .line 3108
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    .line 3109
    .local v2, "candidateTaskId":I
    if-eq v2, v1, :cond_3e

    .line 3111
    invoke-virtual {v11, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 3112
    const/4 v3, 0x2

    move/from16 v14, p5

    invoke-virtual {v0, v2, v3, v11, v14}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3114
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 3115
    invoke-direct {v0, v10, v3}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3116
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 3109
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_3e
    move/from16 v14, p5

    goto :goto_43

    .line 3107
    .end local v2    # "candidateTaskId":I
    :cond_41
    move/from16 v14, p5

    .line 3123
    :cond_43
    :goto_43
    const/4 v2, 0x0

    .line 3124
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v13, :cond_4e

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v3, :cond_4e

    .line 3125
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move-object v15, v2

    goto :goto_7a

    .line 3126
    :cond_4e
    if-eqz v11, :cond_79

    .line 3127
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 3128
    .local v3, "daToken":Landroid/window/WindowContainerToken;
    if-eqz v3, :cond_61

    .line 3129
    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_62

    :cond_61
    const/4 v4, 0x0

    :goto_62
    move-object v2, v4

    .line 3130
    if-nez v2, :cond_77

    .line 3131
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    .line 3132
    .local v4, "launchDisplayId":I
    if-eq v4, v1, :cond_77

    .line 3133
    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3134
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_77

    .line 3135
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v15, v2

    goto :goto_7a

    .line 3141
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "daToken":Landroid/window/WindowContainerToken;
    .end local v4    # "launchDisplayId":I
    :cond_77
    move-object v15, v2

    goto :goto_7a

    .line 3126
    :cond_79
    move-object v15, v2

    .line 3141
    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v15, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_7a
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v9

    .line 3142
    .local v9, "activityType":I
    if-eqz v15, :cond_a3

    .line 3143
    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 3144
    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, v9

    move v14, v9

    .end local v9    # "activityType":I
    .local v14, "activityType":I
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 3147
    .end local v14    # "activityType":I
    .restart local v9    # "activityType":I
    :cond_a0
    move v14, v9

    .end local v9    # "activityType":I
    .restart local v14    # "activityType":I
    const/4 v15, 0x0

    goto :goto_a4

    .line 3142
    .end local v14    # "activityType":I
    .restart local v9    # "activityType":I
    :cond_a3
    move v14, v9

    .line 3153
    .end local v9    # "activityType":I
    .restart local v14    # "activityType":I
    :goto_a4
    const/4 v1, 0x0

    .line 3154
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x5

    if-eqz v12, :cond_bd

    .line 3155
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3158
    if-eqz v11, :cond_bd

    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 3159
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_bd

    .line 3160
    const/4 v1, 0x0

    .line 3164
    :cond_bd
    if-nez v1, :cond_c7

    if-eqz v10, :cond_c7

    .line 3165
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v9, v1

    goto :goto_c8

    .line 3167
    :cond_c7
    move-object v9, v1

    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    .local v9, "rootTask":Lcom/android/server/wm/Task;
    :goto_c8
    if-eqz v13, :cond_cd

    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_ce

    .line 3168
    :cond_cd
    const/4 v1, 0x0

    :goto_ce
    nop

    .line 3169
    .local v1, "windowingMode":I
    if-eqz v9, :cond_100

    .line 3170
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    .line 3171
    if-eqz v15, :cond_f9

    iget-object v3, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 3172
    invoke-direct {v0, v10, v3}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 3173
    if-nez v1, :cond_e7

    .line 3174
    invoke-virtual {v15, v10, v11, v12}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v1

    .line 3179
    :cond_e7
    invoke-virtual {v9, v1, v14}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v3

    if-nez v3, :cond_f8

    iget-boolean v3, v9, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_f2

    goto :goto_f8

    :cond_f2
    move-object/from16 v18, v15

    move v15, v1

    move-object/from16 v1, v18

    goto :goto_105

    .line 3181
    :cond_f8
    :goto_f8
    return-object v9

    .line 3184
    :cond_f9
    const/4 v15, 0x0

    move-object/from16 v18, v15

    move v15, v1

    move-object/from16 v1, v18

    goto :goto_105

    .line 3169
    :cond_100
    move-object/from16 v18, v15

    move v15, v1

    move-object/from16 v1, v18

    .line 3192
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v15, "windowingMode":I
    :goto_105
    if-eqz v1, :cond_11f

    if-eqz v11, :cond_11c

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_11c

    if-eqz v12, :cond_11c

    .line 3193
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eq v2, v3, :cond_11c

    goto :goto_11f

    .line 3196
    :cond_11c
    move-object/from16 v16, v1

    goto :goto_125

    .line 3194
    :cond_11f
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object/from16 v16, v1

    .line 3196
    .end local v1    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v16, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_125
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, v14

    move-object/from16 v17, v9

    .end local v9    # "rootTask":Lcom/android/server/wm/Task;
    .local v17, "rootTask":Lcom/android/server/wm/Task;
    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1
.end method

.method getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "onTop"    # Z

    .line 3077
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected getRootTask(I)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "rooTaskId"    # I

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 2639
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2640
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_15

    .line 2641
    return-object v1

    .line 2638
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2644
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootTask(II)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 2650
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2651
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_15

    .line 2652
    return-object v1

    .line 2649
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2655
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 4
    .param p1, "taskId"    # I

    .line 2724
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2725
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_b

    .line 2726
    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    return-object v1

    .line 2728
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2732
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2733
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayId"    # I

    .line 2737
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(III)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2738
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V
    .registers 14
    .param p1, "maxNum"    # I
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3644
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local p5, "profileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;)V

    .line 3646
    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3696
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v0

    .line 3697
    .local v0, "pPi":Lcom/android/server/policy/PermissionPolicyInternal;
    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 3698
    return v1

    .line 3701
    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    move-object v1, v2

    .line 3702
    .local v1, "validTaskId":[I
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/policy/PermissionPolicyInternal;ILjava/lang/String;[I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 3718
    aget v2, v1, v3

    return v2
.end method

.method public getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 1942
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1943
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_15

    .line 1944
    return-object v1

    .line 1941
    .end local v1    # "focusedRootTask":Lcom/android/server/wm/Task;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1947
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 596
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 597
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_f
    return-object v1
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1953
    .local v0, "focusedRootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    .line 1954
    const/4 v1, 0x0

    return-object v1

    .line 1956
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1957
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_13

    .line 1958
    return-object v1

    .line 1962
    :cond_13
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    return-object v2
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation

    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    .local v0, "topVisibleActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityAssistInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1920
    .local v1, "topFocusedRootTask":Lcom/android/server/wm/Task;
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1936
    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 699
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 700
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 701
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_19

    .line 702
    return-object v2

    .line 698
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 705
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 710
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 711
    return-object v0

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 715
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 716
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 717
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1f

    .line 718
    return-object v2

    .line 714
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "current":Lcom/android/server/wm/WindowToken;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 722
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 657
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 660
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_3
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_a

    move v0, v1

    .line 661
    const/4 p2, 0x0

    .line 663
    goto :goto_b

    .line 662
    :catch_a
    move-exception v1

    .line 665
    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 666
    return-void
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 3016
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3017
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3016
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 3018
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3019
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3020
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 27
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"    # Z
    .param p3, "syswin"    # Z

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1155
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1156
    .local v3, "attrFlags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    .line 1157
    .local v4, "onScreen":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v5

    .line 1158
    .local v5, "canBeSeen":Z
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1159
    .local v6, "privateflags":I
    const/4 v7, 0x0

    .line 1161
    .local v7, "displayHasContent":Z
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v8, :cond_5f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    iget-boolean v13, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .local v13, "protoLogParam1":Z
    move v14, v4

    .local v14, "protoLogParam2":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v15

    .local v15, "protoLogParam3":Z
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v9, v10, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .local v9, "protoLogParam4":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v11, v18

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v17, 0x1

    aput-object v20, v11, v17

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v16, 0x2

    aput-object v20, v11, v16

    const/16 v20, 0x3

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v11, v20

    move/from16 v20, v7

    move-object/from16 v19, v8

    move-wide/from16 v21, v9

    const v7, -0x1cb99646

    const/16 v8, 0x1fc

    const/4 v9, 0x0

    .end local v7    # "displayHasContent":Z
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam4":J
    .local v19, "protoLogParam0":Ljava/lang/String;
    .local v20, "displayHasContent":Z
    .local v21, "protoLogParam4":J
    invoke-static {v12, v7, v8, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    .end local v13    # "protoLogParam1":Z
    .end local v14    # "protoLogParam2":Z
    .end local v15    # "protoLogParam3":Z
    .end local v19    # "protoLogParam0":Ljava/lang/String;
    .end local v20    # "displayHasContent":Z
    .end local v21    # "protoLogParam4":J
    .restart local v7    # "displayHasContent":Z
    :cond_5f
    move/from16 v20, v7

    .line 1165
    .end local v7    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :goto_61
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_98

    if-eqz v4, :cond_98

    .line 1166
    if-nez p3, :cond_98

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_98

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_98

    .line 1167
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 1168
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_98

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .local v7, "protoLogParam0":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0xd346f16

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    .end local v7    # "protoLogParam0":J
    :cond_98
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_178

    if-eqz v5, :cond_178

    .line 1173
    and-int/lit16 v7, v3, 0x80

    if-eqz v7, :cond_c7

    .line 1177
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsDimWindow:Z

    if-eqz v7, :cond_c0

    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mDimAssist:Z

    if-eqz v7, :cond_c0

    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isCameraOpen()Z

    move-result v7

    if-nez v7, :cond_c0

    .line 1178
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->wakeUpScreenByCloudDimWin()V

    .line 1179
    const-string v7, "WindowManager"

    const-string/jumbo v8, "this win is dim, assistResson is true and camera is close, just like vchat voice"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 1181
    :cond_c0
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1182
    iput-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_f1

    .line 1185
    :cond_c7
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v7, :cond_f1

    .line 1186
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_f1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x7c7d62da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v13, 0x1

    aput-object v8, v11, v13

    const/4 v13, 0x0

    invoke-static {v9, v10, v12, v13, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_f1
    :goto_f1
    if-nez p3, :cond_126

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_126

    iget v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1195
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_126

    .line 1196
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/android/server/wm/WindowManagerServiceStub;->shouldApplyOverrideBrightness(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    if-eqz v7, :cond_126

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_120

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1198
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v7

    if-nez v7, :cond_126

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v7, :cond_126

    .line 1201
    :cond_120
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 1204
    :cond_126
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1207
    .local v7, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1208
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_147

    iget-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_147

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v9

    if-nez v9, :cond_142

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_145

    .line 1213
    :cond_142
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1215
    :cond_145
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .local v9, "displayHasContent":Z
    goto :goto_157

    .line 1216
    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_147
    if-eqz v8, :cond_155

    iget-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_153

    if-eqz p2, :cond_155

    const/16 v9, 0x7d9

    if-ne v7, v9, :cond_155

    .line 1220
    :cond_153
    const/4 v9, 0x1

    .end local v20    # "displayHasContent":Z
    .restart local v9    # "displayHasContent":Z
    goto :goto_157

    .line 1222
    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_155
    move/from16 v9, v20

    .end local v20    # "displayHasContent":Z
    .restart local v9    # "displayHasContent":Z
    :goto_157
    const/high16 v10, 0x40000

    and-int/2addr v10, v6

    if-eqz v10, :cond_15f

    .line 1223
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 1227
    :cond_15f
    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_176

    iget-object v10, v8, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7d4

    if-eq v10, v11, :cond_176

    .line 1229
    iget-object v10, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v11, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v10, v11}, Landroid/os/PowerManagerInternal;->addVisibleWindowUids(I)V

    .line 1234
    .end local v7    # "type":I
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_176
    move v7, v9

    goto :goto_17a

    .end local v9    # "displayHasContent":Z
    .restart local v20    # "displayHasContent":Z
    :cond_178
    move/from16 v7, v20

    .end local v20    # "displayHasContent":Z
    .local v7, "displayHasContent":Z
    :goto_17a
    return v7
.end method

.method hasAwakeDisplay()Z
    .registers 5

    .line 3066
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_6
    if-ltz v0, :cond_18

    .line 3067
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 3068
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3069
    return v1

    .line 3066
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3072
    .end local v0    # "displayNdx":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 7
    .param p1, "animator"    # Lcom/android/server/wm/WindowAnimator;

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 782
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_24

    .line 783
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 784
    .local v3, "pendingChanges":I
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1e

    .line 785
    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 787
    :cond_1e
    if-eqz v3, :cond_21

    .line 788
    const/4 v0, 0x1

    .line 782
    .end local v3    # "pendingChanges":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 792
    .end local v2    # "i":I
    :cond_24
    return v0
.end method

.method hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 3310
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 3314
    .local v1, "visibleWindowFound":[Z
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;-><init>(I[Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method invalidateTaskLayers()V
    .registers 3

    .line 2931
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_10

    .line 2932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2933
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2935
    :cond_10
    return-void
.end method

.method isAttached()Z
    .registers 2

    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method isLayoutNeeded()Z
    .registers 5

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 647
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 648
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 649
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 650
    const/4 v3, 0x1

    return v3

    .line 647
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 653
    .end local v1    # "displayNdx":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method isOnTop()Z
    .registers 2

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1966
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic lambda$applySleepTokens$20$com-android-server-wm-RootWindowContainer(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "displayShouldSleep"    # Z
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2610
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2611
    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    goto :goto_2b

    .line 2613
    :cond_7
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2616
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2617
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2618
    invoke-virtual {v1, v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2624
    invoke-virtual {p3, v2, v2}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2630
    :cond_28
    invoke-virtual {p3, v2, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2633
    :goto_2b
    return-void
.end method

.method synthetic lambda$closeSystemDialogActivities$29$com-android-server-wm-RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3294
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_e

    .line 3295
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3296
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 3298
    :cond_12
    return-void
.end method

.method synthetic lambda$findTask$16$com-android-server-wm-RootWindowContainer(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2474
    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    .line 2475
    return-object v0

    .line 2478
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 2479
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_14

    .line 2480
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    .line 2482
    :cond_14
    return-object v0
.end method

.method synthetic lambda$getAllRootTaskInfos$22$com-android-server-wm-RootWindowContainer(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2746
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    return-void
.end method

.method synthetic lambda$getAllRootTaskInfos$23$com-android-server-wm-RootWindowContainer(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2755
    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    return-void
.end method

.method synthetic lambda$lockAllProfileTasks$35$com-android-server-wm-RootWindowContainer(ILcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 3545
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3546
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3547
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3549
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3548
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3551
    return-void

    .line 3554
    :cond_2b
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 3556
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 3557
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 3556
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3559
    :cond_43
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-wm-RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 529
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 531
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 533
    goto :goto_d

    .line 532
    :catch_c
    move-exception v0

    .line 535
    :cond_d
    :goto_d
    return-void
.end method

.method synthetic lambda$rankTaskLayers$26$com-android-server-wm-RootWindowContainer(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2955
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2956
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 2959
    :cond_e
    return-void
.end method

.method synthetic lambda$rankTaskLayers$27$com-android-server-wm-RootWindowContainer(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2946
    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2947
    .local v0, "oldRank":I
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2948
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_15

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_15

    .line 2949
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    goto :goto_18

    .line 2951
    :cond_15
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 2953
    :goto_18
    iget v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    if-eq v2, v0, :cond_24

    .line 2954
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2961
    :cond_24
    return-void
.end method

.method synthetic lambda$reclaimSomeSurfaceMemory$7$com-android-server-wm-RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "pidCandidates"    # Landroid/util/SparseIntArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 819
    return-void

    .line 821
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 822
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1c

    .line 823
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 825
    :cond_1c
    return-void
.end method

.method synthetic lambda$startHomeOnDisplay$12$com-android-server-wm-RootWindowContainer(ILjava/lang/String;ZZLcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "allowInstrumenting"    # Z
    .param p4, "fromHomeKey"    # Z
    .param p5, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p6, "result"    # Ljava/lang/Boolean;

    .line 1558
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startHomeOnEmptyDisplays$11$com-android-server-wm-RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1536
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1537
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 1540
    :cond_10
    return-void
.end method

.method lockAllProfileTasks(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3544
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3560
    return-void
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 20
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchIntoPipHostActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .line 2118
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 2120
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2123
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2127
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v4, v0, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2128
    .local v4, "transitionController":Lcom/android/server/wm/TransitionController;
    const/4 v5, 0x0

    .line 2129
    .local v5, "newTransition":Lcom/android/server/wm/Transition;
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1f

    .line 2130
    invoke-virtual {v4, v0, v7}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_2c

    .line 2131
    :cond_1f
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v6

    if-eqz v6, :cond_2c

    .line 2132
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v6

    move-object v5, v6

    .line 2137
    :cond_2c
    :goto_2c
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 2138
    .local v6, "rootPinnedTask":Lcom/android/server/wm/Task;
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_3e

    .line 2139
    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2143
    new-array v10, v9, [I

    aput v8, v10, v7

    invoke-virtual {v1, v10}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2148
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 2150
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    .line 2151
    .local v10, "organizedTf":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getNonFinishingActivityCount()I

    move-result v11

    if-ne v11, v9, :cond_51

    move v11, v9

    goto :goto_52

    :cond_51
    move v11, v7

    .line 2153
    .local v11, "singleActivity":Z
    :goto_52
    if-eqz v11, :cond_5c

    .line 2154
    move-object v12, v0

    .line 2157
    .local v12, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    move-object/from16 v14, p3

    goto/16 :goto_e9

    .line 2162
    .end local v12    # "rootTask":Lcom/android/server/wm/Task;
    :cond_5c
    new-instance v12, Lcom/android/server/wm/Task$Builder;

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v12, v13}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    .line 2164
    invoke-virtual {v12, v9}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2165
    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    .line 2166
    invoke-virtual {v12, v3}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2167
    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    .line 2168
    invoke-virtual {v12, v9}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    .line 2169
    invoke-virtual {v12, v9}, Lcom/android/server/wm/Task$Builder;->setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v12

    .line 2170
    invoke-virtual {v12}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v12

    .line 2172
    .restart local v12    # "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setLastParentBeforePip(Lcom/android/server/wm/ActivityRecord;)V

    .line 2176
    iget-object v13, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2177
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2180
    iget-object v13, v0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v13, :cond_a8

    .line 2181
    iget-object v13, v0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/wm/Task;->setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 2184
    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    .line 2190
    :cond_a8
    if-eqz v10, :cond_b8

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v13

    if-ne v13, v9, :cond_b8

    .line 2191
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-ne v13, v2, :cond_b8

    .line 2192
    iput-boolean v9, v10, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z
    :try_end_b8
    .catchall {:try_start_d .. :try_end_b8} :catchall_162

    .line 2199
    :cond_b8
    const v13, 0x7fffffff

    move-object/from16 v14, p3

    :try_start_bd
    invoke-virtual {v2, v12, v13, v14}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 2202
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    .line 2210
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 2211
    .local v13, "oldTopActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_e9

    sget-object v15, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v13, v15}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v15

    if-eqz v15, :cond_e9

    .line 2212
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v7, 0x4

    invoke-virtual {v15, v7}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 2214
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2215
    iput-boolean v9, v13, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    .line 2221
    .end local v13    # "oldTopActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_e9
    :goto_e9
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    .line 2222
    .local v7, "intermediateWindowingMode":I
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    if-eq v13, v3, :cond_f6

    .line 2225
    invoke-virtual {v12, v3, v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2229
    :cond_f6
    const/4 v13, 0x0

    if-eqz v5, :cond_fc

    .line 2230
    invoke-virtual {v4, v5, v12, v13, v13}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 2233
    :cond_fc
    invoke-virtual {v4, v12}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2238
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setWindowingMode(I)V

    .line 2239
    iput-boolean v9, v2, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 2240
    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v9}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v12, v9}, Lcom/android/server/wm/Task;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 2252
    invoke-virtual {v12, v8}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2254
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v8

    if-eqz v8, :cond_132

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v8

    if-eqz v8, :cond_132

    .line 2258
    iget-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 2260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2262
    :cond_132
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 2266
    iput-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 2268
    if-eqz v10, :cond_14b

    iget-boolean v8, v10, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v8, :cond_14b

    .line 2269
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 2272
    iget-object v8, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    :try_end_14b
    .catchall {:try_start_bd .. :try_end_14b} :catchall_160

    .line 2276
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "transitionController":Lcom/android/server/wm/TransitionController;
    .end local v5    # "newTransition":Lcom/android/server/wm/Transition;
    .end local v6    # "rootPinnedTask":Lcom/android/server/wm/Task;
    .end local v7    # "intermediateWindowingMode":I
    .end local v10    # "organizedTf":Lcom/android/server/wm/TaskFragment;
    .end local v11    # "singleActivity":Z
    .end local v12    # "rootTask":Lcom/android/server/wm/Task;
    :cond_14b
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2277
    nop

    .line 2279
    const/4 v0, 0x0

    invoke-virtual {v1, v13, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2282
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 2283
    return-void

    .line 2276
    :catchall_160
    move-exception v0

    goto :goto_165

    :catchall_162
    move-exception v0

    move-object/from16 v14, p3

    :goto_165
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2277
    throw v0
.end method

.method moveRootTaskToDisplay(IIZ)V
    .registers 8
    .param p1, "rootTaskId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 2106
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2107
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_e

    .line 2112
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2114
    return-void

    .line 2108
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveRootTaskToDisplay: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 9
    .param p1, "rootTaskId"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "onTop"    # Z

    .line 2069
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2070
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_74

    .line 2075
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2076
    .local v1, "currentTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_54

    .line 2081
    if-eqz p2, :cond_3a

    .line 2086
    if-eq v1, p2, :cond_17

    .line 2090
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 2093
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 2096
    return-void

    .line 2087
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move rootTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to its current taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2082
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveRootTaskToTaskDisplayArea: Unknown taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2077
    :cond_54
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveRootTaskToTaskDisplayArea: rootTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached to any task display area."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2071
    .end local v1    # "currentTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveRootTaskToTaskDisplayArea: Unknown rootTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2293
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 2294
    .local v0, "inPip":Z
    :goto_5
    if-eqz v0, :cond_11

    .line 2295
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1a

    .line 2297
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 2299
    :goto_1a
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 2300
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 2301
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 2302
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2304
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/server/wm/TaskStub;->notifyActivityPipModeChangedForHoverMode(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2305
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v1, "onChildPositionChanged"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2762
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2764
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2765
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_2f

    .line 2766
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2771
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2772
    :cond_3f
    invoke-direct {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    .line 2776
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2777
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2778
    return-void

    .line 2777
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 2804
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2806
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2807
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_44

    .line 2808
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged()V

    .line 2810
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/wm/DisplayContentStub;->isSubDisplayOff(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2812
    .local v2, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const v3, 0x7fffffff

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2819
    .end local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 2821
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2822
    return-void

    .line 2821
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2787
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_1c
    if-eqz p1, :cond_46

    .line 2792
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2793
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2794
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_31

    .line 2795
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2797
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 2798
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    .line 2799
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2800
    return-void

    .line 2799
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2789
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onSettingsRetrieved()V
    .registers 9

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 623
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_39

    .line 624
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 625
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 627
    .local v3, "changed":Z
    if-nez v3, :cond_1c

    .line 628
    goto :goto_36

    .line 631
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 636
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_36

    .line 637
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 638
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 637
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 639
    .local v4, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 623
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "changed":Z
    .end local v4    # "newConfig":Landroid/content/res/Configuration;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 643
    .end local v1    # "displayNdx":I
    :cond_39
    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .registers 1

    .line 175
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    return-void
.end method

.method performSurfacePlacement()V
    .registers 4

    .line 875
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 877
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    .line 879
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 880
    nop

    .line 881
    return-void

    .line 879
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 880
    throw v2
.end method

.method performSurfacePlacementNoTrace()V
    .registers 16

    .line 886
    const-string v0, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    const-string/jumbo v1, "performLayoutAndPlaceSurfaces"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v3, 0x3

    const-string v4, "WindowManager"

    if-eqz v2, :cond_27

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_27
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_37

    .line 894
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 895
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 899
    :cond_37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 900
    const/high16 v6, 0x7fc00000    # Float.NaN

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    .line 901
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 902
    iput-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 903
    iput-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 904
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 906
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->clearVisibleWindowUids()V

    .line 909
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 910
    .local v7, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 912
    .local v8, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v10, :cond_68

    .line 913
    const-string v10, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_68
    const-wide/16 v10, 0x20

    const-string v12, "applySurfaceChanges"

    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 917
    iget-object v12, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 919
    :try_start_74
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_77} :catch_8a
    .catchall {:try_start_74 .. :try_end_77} :catchall_87

    .line 923
    iget-object v12, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 924
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 925
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_9e

    .line 926
    :goto_83
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 923
    :catchall_87
    move-exception v2

    goto/16 :goto_264

    .line 920
    :catch_8a
    move-exception v12

    .line 921
    .local v12, "e":Ljava/lang/RuntimeException;
    :try_start_8b
    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v4, v13, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_87

    .line 923
    nop

    .end local v12    # "e":Ljava/lang/RuntimeException;
    iget-object v12, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 924
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 925
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_9e

    .line 926
    goto :goto_83

    .line 932
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingEvents()V

    .line 934
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 937
    invoke-direct {p0, v8}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 941
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 942
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_ce

    .line 943
    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 946
    :cond_ce
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_cf
    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    if-ge v1, v10, :cond_106

    .line 947
    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 948
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v11, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v11, :cond_103

    .line 949
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v11, :cond_f2

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x1fe509f8

    move-object v13, v2

    check-cast v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v5, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_f2
    iget v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 951
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v11, :cond_103

    .line 952
    iget v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v12, "WallpaperMayChange"

    invoke-virtual {v8, v12, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 946
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_103
    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    .line 958
    .end local v1    # "displayNdx":I
    :cond_106
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v10, 0x2

    if-eqz v1, :cond_116

    .line 959
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 960
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 964
    :cond_116
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 965
    iget v1, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v9

    iput v1, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 966
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_12c

    .line 967
    iget v1, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v11, "mLayoutNeeded"

    invoke-virtual {v8, v11, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 972
    :cond_12c
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 974
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_14b

    .line 975
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_14b

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .local v1, "protoLogParam0":Z
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x27ba2454

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v11, v12, v3, v2, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 979
    .end local v1    # "protoLogParam0":Z
    :cond_14b
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v1, :cond_16d

    .line 980
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v1, :cond_168

    .line 981
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 982
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 983
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 985
    :cond_168
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 989
    :cond_16d
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 990
    .local v1, "i":I
    if-lez v1, :cond_1aa

    .line 992
    :cond_177
    add-int/lit8 v1, v1, -0x1

    .line 993
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 994
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 995
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    .line 996
    .local v11, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v12, v11, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v12, v3, :cond_190

    .line 997
    invoke-virtual {v11, v2}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 999
    :cond_190
    iget-object v12, v11, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12, v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    if-eqz v12, :cond_19e

    .line 1000
    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1002
    :cond_19e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 1003
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-gtz v1, :cond_177

    .line 1004
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1007
    :cond_1aa
    const/4 v3, 0x0

    .local v3, "displayNdx":I
    :goto_1ab
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1c5

    .line 1008
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 1009
    .restart local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v12, :cond_1c2

    .line 1010
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1007
    .end local v11    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ab

    .line 1014
    .end local v3    # "displayNdx":I
    :cond_1c5
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 1015
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_200

    .line 1017
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const/4 v11, 0x0

    cmpg-float v11, v3, v11

    if-ltz v11, :cond_1e2

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_1e0

    goto :goto_1e2

    .line 1018
    :cond_1e0
    move v6, v3

    goto :goto_1e3

    :cond_1e2
    :goto_1e2
    nop

    :goto_1e3
    move v3, v6

    .line 1019
    .local v3, "brightnessOverride":F
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    .line 1022
    .local v6, "brightnessFloatAsIntBits":I
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1023
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1024
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v11, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1027
    .end local v3    # "brightnessOverride":F
    .end local v6    # "brightnessFloatAsIntBits":I
    :cond_200
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v6, :cond_211

    .line 1028
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 1029
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 1034
    :cond_211
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_22a

    .line 1035
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_224

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x41c0358b

    move-object v9, v2

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v3, v6, v5, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :cond_224
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 1039
    :cond_22a
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_242

    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_247

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-nez v2, :cond_247

    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v2, :cond_247

    .line 1042
    :cond_242
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 1045
    :cond_247
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;

    invoke-direct {v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 1054
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1056
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1058
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_263

    const-string/jumbo v2, "performSurfacePlacementInner exit"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_263
    return-void

    .line 923
    .end local v0    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v1    # "i":I
    :goto_264
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 924
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 925
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_273

    .line 926
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_273
    throw v2
.end method

.method prepareForShutdown()V
    .registers 4

    .line 2846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2847
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 2846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2849
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method putTasksToSleep(ZZ)Z
    .registers 6
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 3003
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v0, v1

    .line 3004
    .local v0, "result":[Z
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;-><init>(Z[ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 3012
    aget-boolean v1, v0, v2

    return v1
.end method

.method rankTaskLayers()V
    .registers 4

    .line 2939
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2940
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 2941
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2943
    :cond_10
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 2945
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2963
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2964
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 2966
    :cond_28
    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 20
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "secure"    # Z

    .line 797
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 798
    .local v4, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v5, 0x0

    .line 799
    .local v5, "leakedSurface":Z
    const/4 v6, 0x0

    .line 800
    .local v6, "killedApps":Z
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v8, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 807
    .local v9, "callingIdentity":J
    :try_start_1d
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    .line 809
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_2a
    if-ge v0, v7, :cond_3c

    .line 810
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v5, v11

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 813
    .end local v0    # "displayNdx":I
    :cond_3c
    const/4 v11, 0x0

    if-nez v5, :cond_a2

    .line 814
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_101

    move-object v12, v0

    .line 816
    .local v12, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    .local v6, "displayNdx":I
    .local v13, "killedApps":Z
    :goto_4d
    if-ge v6, v7, :cond_9e

    .line 817
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 827
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_92

    .line 828
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    .line 829
    .local v14, "pids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    array-length v15, v14

    if-ge v0, v15, :cond_79

    .line 830
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_76
    .catchall {:try_start_4f .. :try_end_76} :catchall_98

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 833
    .end local v0    # "i":I
    :cond_79
    :try_start_79
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7f} :catch_8e
    .catchall {:try_start_79 .. :try_end_7f} :catchall_98

    move/from16 v11, p3

    :try_start_81
    invoke-interface {v0, v14, v15, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_85} :catch_8c
    .catchall {:try_start_81 .. :try_end_85} :catchall_8a

    if-eqz v0, :cond_89

    .line 834
    const/4 v0, 0x1

    move v13, v0

    .line 837
    :cond_89
    goto :goto_94

    .line 864
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v14    # "pids":[I
    :catchall_8a
    move-exception v0

    goto :goto_9b

    .line 836
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .restart local v14    # "pids":[I
    :catch_8c
    move-exception v0

    goto :goto_94

    :catch_8e
    move-exception v0

    move/from16 v11, p3

    goto :goto_94

    .line 827
    .end local v14    # "pids":[I
    :cond_92
    move/from16 v11, p3

    .line 816
    :goto_94
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_4d

    .line 864
    .end local v6    # "displayNdx":I
    .end local v7    # "numDisplays":I
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :catchall_98
    move-exception v0

    move/from16 v11, p3

    :goto_9b
    move v6, v13

    goto/16 :goto_104

    .line 816
    .restart local v6    # "displayNdx":I
    .restart local v7    # "numDisplays":I
    .restart local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_9e
    move/from16 v11, p3

    move v6, v13

    goto :goto_a4

    .line 813
    .end local v12    # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v13    # "killedApps":Z
    .local v6, "killedApps":Z
    :cond_a2
    move/from16 v11, p3

    .line 842
    :goto_a4
    const/4 v12, 0x1

    if-nez v5, :cond_ac

    if-eqz v6, :cond_aa

    goto :goto_ac

    :cond_aa
    const/4 v12, 0x0

    goto :goto_f5

    .line 845
    :cond_ac
    :goto_ac
    :try_start_ac
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-eqz v4, :cond_eb

    .line 848
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_cc

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x17d51a79

    const/4 v14, 0x0

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v15, v12

    invoke-static {v3, v13, v12, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cd

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_cc
    const/4 v12, 0x0

    .line 850
    :goto_cd
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 851
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 852
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 853
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_ec

    .line 854
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_ea
    .catchall {:try_start_ac .. :try_end_ea} :catchall_ff

    goto :goto_ec

    .line 847
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_eb
    const/4 v12, 0x0

    .line 859
    :cond_ec
    :goto_ec
    :try_start_ec
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f3} :catch_f4
    .catchall {:try_start_ec .. :try_end_f3} :catchall_ff

    .line 861
    goto :goto_f5

    .line 860
    :catch_f4
    move-exception v0

    .line 864
    .end local v7    # "numDisplays":I
    :goto_f5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    nop

    .line 867
    if-nez v5, :cond_fd

    if-eqz v6, :cond_fe

    :cond_fd
    const/4 v12, 0x1

    :cond_fe
    return v12

    .line 864
    :catchall_ff
    move-exception v0

    goto :goto_104

    :catchall_101
    move-exception v0

    move/from16 v11, p3

    :goto_104
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    throw v0
.end method

.method refreshSecureSurfaceState()V
    .registers 3

    .line 736
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 741
    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1371
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1372
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1373
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1376
    :cond_12
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 175
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .registers 7

    .line 768
    const-string/jumbo v0, "removeReplacedWindows"

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5a4f608f

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 771
    const v1, 0x54da4e01

    :try_start_1c
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_34

    .line 773
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 774
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 776
    :cond_33
    return-void

    .line 773
    :catchall_34
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 774
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :cond_46
    throw v4
.end method

.method varargs removeRootTasksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"    # [I

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 3449
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksInWindowingModes([I)V

    .line 3448
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3451
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method varargs removeRootTasksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"    # [I

    .line 3454
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 3455
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksWithActivityTypes([I)V

    .line 3454
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3457
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .registers 13
    .param p1, "token"    # Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 2884
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, " from "

    const-string v3, "WindowManager"

    if-nez v0, :cond_31

    .line 2885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove non-exist sleep token: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2889
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lcom/android/server/wm/EventLogTags;->writeWmSleepToken(IILjava/lang/String;)V

    .line 2890
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2891
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_71

    .line 2892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove sleep token for non-existing display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2893
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2892
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    return-void

    .line 2897
    :cond_71
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_98

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmDisplayId(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v3

    int-to-long v3, v3

    .local v3, "protoLogParam1":J
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x1a054642

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2899
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    :cond_98
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2900
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 2901
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 2911
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    .line 2912
    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    :cond_c4
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->-$$Nest$fgetmTag(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    .line 2913
    const-string v3, "Display-off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 2914
    :cond_d0
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 2917
    :cond_d2
    return-void
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2043
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2044
    return-void
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1721
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1722
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1723
    .local v3, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v4, 0x400

    move-object v2, p2

    move v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1724
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1728
    .end local v3    # "resolvedType":Ljava/lang/String;
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_24

    .line 1726
    .end local v0    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1d
    move-exception v0

    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1729
    .local v0, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_24
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 3230
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3231
    .local v0, "activityType":I
    :goto_8
    if-nez v0, :cond_10

    if-eqz p3, :cond_10

    .line 3232
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    .line 3234
    :cond_10
    if-eqz v0, :cond_13

    .line 3235
    return v0

    .line 3237
    :cond_13
    if-eqz p2, :cond_19

    .line 3238
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 3240
    :cond_19
    if-eqz v0, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "homeIntent"    # Landroid/content/Intent;

    .line 1629
    const/16 v0, 0x400

    .line 1630
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1631
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1633
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_15

    .line 1635
    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x400

    invoke-interface {v3, v1, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_32

    .line 1637
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1638
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1639
    .local v6, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v7, 0x400

    .line 1640
    move-object v5, p2

    move v9, p1

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1641
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_32

    .line 1642
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_31} :catch_33

    move-object v2, v4

    .line 1647
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolvedType":Ljava/lang/String;
    :cond_32
    :goto_32
    goto :goto_34

    .line 1645
    :catch_33
    move-exception v3

    .line 1649
    :goto_34
    if-nez v2, :cond_55

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "WindowManager"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1651
    const/4 v3, 0x0

    return-object v3

    .line 1654
    :cond_55
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 1655
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1656
    return-object v2
.end method

.method resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_78

    .line 1667
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1668
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1669
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 1670
    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1672
    const/4 v1, 0x0

    goto :goto_5d

    .line 1676
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1677
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1678
    .local v3, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1679
    .local v4, "size":I
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1680
    .local v5, "targetName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1681
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    if-ge v6, v4, :cond_51

    .line 1682
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1685
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 1686
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1687
    goto :goto_51

    .line 1681
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 1690
    .end local v6    # "i":I
    :cond_51
    :goto_51
    if-nez v1, :cond_5d

    if-lez v4, :cond_5d

    .line 1692
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1697
    .end local v3    # "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "size":I
    .end local v5    # "targetName":Ljava/lang/String;
    :cond_5d
    :goto_5d
    if-eqz v1, :cond_66

    .line 1698
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_66

    .line 1700
    const/4 v1, 0x0

    .line 1705
    :cond_66
    if-nez v1, :cond_73

    .line 1706
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1707
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1709
    :cond_73
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1663
    .end local v0    # "homeIntent":Landroid/content/Intent;
    .end local v1    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resolveSecondaryHomeActivity: Should not be default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeFocusedTasksTopActivities()Z
    .registers 2

    .line 2515
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "targetRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 2520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 21
    .param p1, "targetRootTask"    # Lcom/android/server/wm/Task;
    .param p2, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;
    .param p4, "deferPause"    # Z

    .line 2527
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_e

    .line 2528
    return v9

    .line 2531
    :cond_e
    const/4 v1, 0x0

    .line 2532
    .local v1, "result":Z
    if-eqz v8, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, v8, :cond_21

    .line 2534
    :cond_1d
    invoke-virtual/range {p1 .. p4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v1

    .line 2538
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    move v11, v1

    move v12, v2

    .end local v1    # "result":Z
    .local v11, "result":Z
    .local v12, "displayNdx":I
    :goto_29
    if-ltz v12, :cond_7b

    .line 2539
    invoke-virtual {v0, v12}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 2540
    .local v13, "display":Lcom/android/server/wm/DisplayContent;
    move v4, v11

    .line 2541
    .local v4, "curResult":Z
    new-array v14, v10, [Z

    .line 2542
    .local v14, "resumedOnDisplay":[Z
    new-instance v15, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/DisplayContent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v13, v15}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2569
    aget-boolean v1, v14, v9

    or-int/2addr v1, v11

    .line 2570
    .end local v11    # "result":Z
    .restart local v1    # "result":Z
    aget-boolean v2, v14, v9

    if-nez v2, :cond_73

    .line 2575
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2576
    .local v2, "focusedRoot":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5e

    .line 2577
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v6

    or-int/2addr v1, v6

    move v11, v1

    goto :goto_78

    .line 2578
    :cond_5e
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    if-nez v8, :cond_77

    .line 2579
    const/4 v6, 0x0

    .line 2580
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    .line 2579
    const-string/jumbo v11, "no-focusable-task"

    invoke-virtual {v0, v6, v11, v7}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v6

    or-int/2addr v1, v6

    move v11, v1

    goto :goto_78

    .line 2570
    .end local v2    # "focusedRoot":Lcom/android/server/wm/Task;
    :cond_73
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 2538
    .end local v4    # "curResult":Z
    .end local v13    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "resumedOnDisplay":[Z
    :cond_77
    move v11, v1

    .end local v1    # "result":Z
    .restart local v11    # "result":Z
    :goto_78
    add-int/lit8 v12, v12, -0x1

    goto :goto_29

    :cond_7b
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 2585
    .end local v12    # "displayNdx":I
    return v11
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 12
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1736
    const/4 v0, 0x0

    return v0

    .line 1739
    :cond_12
    if-nez p3, :cond_18

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    .line 1743
    :cond_18
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1744
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resumeHomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1749
    .local v7, "myReason":Ljava/lang/String;
    if-eqz v6, :cond_46

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_46

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-nez v0, :cond_46

    .line 1751
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1752
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 1754
    :cond_46
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v7

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v0

    return v0
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1367
    return-void
.end method

.method scheduleDestroyAllActivities(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 2983
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 2984
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2985
    return-void
.end method

.method public bridge synthetic setMiuiProjection(Z)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setMiuiProjection(Z)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 1429
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1431
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1432
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1435
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_28
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 1436
    aget-object v2, v0, v1

    .line 1437
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    .line 1438
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1439
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_3d

    .line 1440
    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1435
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1444
    .end local v1    # "displayNdx":I
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1445
    .local v1, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    .line 1446
    const v2, 0x7fffffff

    iget-object v3, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1448
    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 7
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_53

    .line 1768
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 1769
    return v0

    .line 1772
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1774
    return v0

    .line 1777
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_1e

    .line 1779
    return v0

    .line 1782
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1783
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1782
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    move v1, v0

    .line 1785
    .local v1, "deviceProvisioned":Z
    :goto_32
    if-nez v1, :cond_35

    .line 1787
    return v0

    .line 1790
    :cond_35
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1792
    return v0

    .line 1795
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1796
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_52

    .line 1801
    :cond_51
    return v2

    .line 1798
    :cond_52
    :goto_52
    return v0

    .line 1766
    .end local v1    # "deviceProvisioned":Z
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "homeStarted":Z
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 1528
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1529
    .local v2, "displayId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1527
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1531
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 1544
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .registers 15
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "allowInstrumenting"    # Z
    .param p5, "fromHomeKey"    # Z

    .line 1551
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_11

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1553
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v2

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    move p3, v2

    .line 1556
    .end local v1    # "rootTask":Lcom/android/server/wm/Task;
    :cond_11
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1557
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    new-instance v8, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZ)V

    .line 1560
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1557
    invoke-virtual {v1, v8, v0}, Lcom/android/server/wm/DisplayContent;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1535
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 1541
    return-void
.end method

.method startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "allowInstrumenting"    # Z
    .param p5, "fromHomeKey"    # Z

    .line 1577
    if-nez p3, :cond_12

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1579
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_11

    .line 1580
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_11
    move-object p3, v1

    .line 1583
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_12
    const/4 v0, 0x0

    .line 1584
    .local v0, "homeIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1585
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne p3, v2, :cond_25

    .line 1586
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1587
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_39

    .line 1588
    :cond_25
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1589
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    .line 1590
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 1591
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    .line 1593
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ActivityInfo;Landroid/content/Intent;>;"
    :cond_39
    :goto_39
    const/4 v2, 0x0

    if-eqz v1, :cond_ba

    if-nez v0, :cond_40

    goto/16 :goto_ba

    .line 1597
    :cond_40
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1598
    return v2

    .line 1602
    :cond_47
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1603
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1605
    const/4 v2, 0x1

    if-eqz p5, :cond_78

    .line 1606
    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1607
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 1608
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForHomeStart()V

    .line 1611
    :cond_78
    const-string v3, "android.intent.extra.EXTRA_START_REASON"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1616
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    .local v3, "myReason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1619
    return v2

    .line 1594
    .end local v3    # "myReason":Ljava/lang/String;
    :cond_ba
    :goto_ba
    return v2
.end method

.method startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 3649
    if-nez p1, :cond_24

    if-eqz p2, :cond_24

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    .line 3652
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 3653
    .local v1, "noResumedActivities":[Z
    new-array v3, v0, [Z

    aput-boolean v0, v3, v2

    move-object v0, v3

    .line 3654
    .local v0, "allFocusedProcessesDiffer":[Z
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;

    invoke-direct {v3, v1, v0, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;-><init>([Z[ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3665
    aget-boolean v3, v1, v2

    if-nez v3, :cond_24

    aget-boolean v2, v0, v2

    if-nez v2, :cond_24

    .line 3668
    return-void

    .line 3672
    .end local v0    # "allFocusedProcessesDiffer":[Z
    .end local v1    # "noResumedActivities":[Z
    :cond_24
    const/4 v0, 0x1

    .line 3678
    .local v0, "reason":I
    if-eqz p2, :cond_2c

    .line 3679
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v1

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    .line 3680
    .local v1, "isKeyguardLocked":Z
    :goto_32
    if-eqz v1, :cond_53

    if-eqz p2, :cond_53

    .line 3681
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 3682
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 3683
    .local v3, "opts":Landroid/app/ActivityOptions;
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 3684
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityOptions$SourceInfo;->type:I

    if-eq v4, v2, :cond_53

    .line 3685
    :cond_51
    or-int/lit8 v0, v0, 0x4

    .line 3688
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_53
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    .line 3689
    return-void
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2012
    .local v0, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_b

    .line 2013
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    .line 2017
    .local v1, "focusRootTaskId":I
    :goto_c
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2019
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2020
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 2022
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2027
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2028
    .local v2, "restoreRootTaskId":I
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2029
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_42

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2032
    :cond_42
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    .line 2033
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2034
    const-string/jumbo v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    goto :goto_5e

    .line 2037
    :cond_53
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const-string/jumbo v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 2039
    :goto_5e
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3460
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 3461
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3462
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_15

    .line 3463
    return-object v1

    .line 3460
    .end local v1    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3466
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3421
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3422
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3423
    .local v1, "userId":I
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 3425
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3423
    invoke-static {v2, v3, p1, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3426
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3427
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3428
    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    .line 752
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 755
    return-void
.end method

.method updateDisplayImePolicyCache()V
    .registers 4

    .line 2825
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2826
    .local v0, "displayImePolicyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 2827
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayImePolicyCache:Ljava/util/Map;

    .line 2828
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 14
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 558
    .local v1, "topFocusedDisplayId":I
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    const/4 v4, -0x1

    if-ltz v2, :cond_61

    .line 559
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 560
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v6

    or-int/2addr v0, v6

    .line 561
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 562
    .local v6, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_45

    .line 563
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 564
    .local v7, "pidOfNewFocus":I
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3e

    .line 565
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_3e
    if-ne v1, v4, :cond_44

    .line 568
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 570
    .end local v7    # "pidOfNewFocus":I
    :cond_44
    goto :goto_5e

    :cond_45
    if-ne v1, v4, :cond_44

    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_44

    .line 575
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/android/server/wm/PreloadStateManagerStub;->isPreloadDisplayId(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 576
    goto :goto_5e

    .line 579
    :cond_5a
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 558
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "newFocus":Lcom/android/server/wm/WindowState;
    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 582
    .end local v2    # "i":I
    :cond_61
    if-ne v1, v4, :cond_64

    .line 583
    const/4 v1, 0x0

    .line 585
    :cond_64
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_96

    .line 586
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 588
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 589
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController;->setFocusedDisplay(I)V

    .line 590
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v2, :cond_96

    int-to-long v4, v1

    .local v4, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x12993590

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v6, v3, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 592
    .end local v4    # "protoLogParam0":J
    :cond_96
    return v0
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 744
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 749
    return-void
.end method

.method updateRotationUnchecked()Z
    .registers 4

    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 1240
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1241
    const/4 v0, 0x1

    .line 1239
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1244
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 6

    .line 2832
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_b
    if-ltz v0, :cond_27

    .line 2834
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2836
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2837
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2838
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 2837
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2833
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2842
    .end local v0    # "displayNdx":I
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 2843
    return-void
.end method

.method updateUserRootTask(ILcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2051
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_17

    .line 2052
    if-nez p2, :cond_e

    .line 2053
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 2056
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2058
    :cond_17
    return-void
.end method
