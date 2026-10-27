.class Lcom/android/server/wm/TaskFragment;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;,
        Lcom/android/server/wm/TaskFragment$TaskFragmentVisibility;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field static final EMBEDDING_ALLOWED:I = 0x0

.field static final EMBEDDING_DISALLOWED_MIN_DIMENSION_VIOLATION:I = 0x2

.field static final EMBEDDING_DISALLOWED_NEW_TASK:I = 0x3

.field static final EMBEDDING_DISALLOWED_UNTRUSTED_HOST:I = 0x1

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field static final TASK_FRAGMENT_VISIBILITY_INVISIBLE:I = 0x2

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE:I = 0x0

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field private mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBackScreenshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mClearedForReorderActivityToFront:Z

.field mClearedTaskForReuse:Z

.field mClearedTaskFragmentForPip:Z

.field mCreatedByOrganizer:Z

.field private mDelayLastActivityRemoval:Z

.field private mDelayOrganizedTaskFragmentSurfaceUpdate:Z

.field mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

.field private final mFragmentToken:Landroid/os/IBinder;

.field private final mIsEmbedded:Z

.field private mIsRemovalRequested:Z

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mLastSurfaceSize:Landroid/graphics/Point;

.field mMinHeight:I

.field mMinWidth:I

.field mMoveAdjacentTogether:Z

.field private mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field protected mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mStub:Lcom/android/server/wm/TaskFragmentStub;

.field mTaskFragmentAppearedSent:Z

.field private mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field private mTaskFragmentOrganizerProcessName:Ljava/lang/String;

.field private mTaskFragmentOrganizerUid:I

.field mTaskFragmentVanishedSent:Z

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$q77xa5YS28EmN0qaij-drM-u_C8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "createdByOrganizer"    # Z

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 390
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V
    .registers 7
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "createdByOrganizer"    # Z
    .param p4, "isEmbedded"    # Z

    .line 394
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 222
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 281
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 287
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 332
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 334
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    .line 335
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 336
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 337
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 338
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    .line 348
    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 350
    new-instance v1, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    .line 396
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 397
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 398
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 399
    iput-boolean p3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 400
    iput-boolean p4, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 401
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 403
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 404
    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 407
    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentStub;->newStub(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    .line 408
    return-void
.end method

.method private cleanUp()V
    .registers 2

    .line 2919
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v0, :cond_b

    .line 2920
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 2922
    :cond_b
    return-void
.end method

.method static computeScreenLayoutOverride(III)I
    .registers 6
    .param p0, "sourceScreenLayout"    # I
    .param p1, "screenWidthDp"    # I
    .param p2, "screenHeightDp"    # I

    .line 2502
    and-int/lit8 p0, p0, 0x3f

    .line 2504
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2505
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2506
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private containsStoppingActivity()Z
    .registers 5

    .line 911
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_20

    .line 912
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 913
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 914
    return v1

    .line 911
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 917
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method static fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 413
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    return-object v0
.end method

.method private getTaskId()I
    .registers 2

    .line 2214
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method private static hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 1164
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2481
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_13

    .line 2482
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2483
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2485
    :cond_13
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_26

    .line 2486
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2487
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2489
    :cond_26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_39

    .line 2490
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2491
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2493
    :cond_39
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4c

    .line 2494
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2495
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2497
    :cond_4c
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 2258
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2259
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_b

    .line 2260
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2262
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2263
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2264
    return-void
.end method

.method private static isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "uid"    # I

    .line 712
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 712
    :goto_12
    return v0
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 939
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 942
    return v1

    .line 945
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_d

    if-eq p0, p1, :cond_d

    .line 948
    return v1

    .line 951
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 954
    const/4 v0, 0x1

    return v0

    .line 956
    :cond_15
    return v1
.end method

.method private isTopActivityLaunchedBehind()Z
    .registers 3

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1179
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 1170
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1173
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$calculateMinDimension$10([I[ILcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p0, "maxMinWidth"    # [I
    .param p1, "maxMinHeight"    # [I
    .param p2, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 2718
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 2719
    return-void

    .line 2721
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 2722
    .local v0, "minDimensions":Landroid/graphics/Point;
    if-nez v0, :cond_c

    .line 2723
    return-void

    .line 2725
    :cond_c
    const/4 v1, 0x0

    aget v2, p0, v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p0, v1

    .line 2726
    aget v2, p1, v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v1

    .line 2727
    return-void
.end method

.method static synthetic lambda$clearLastPausedActivity$11(Lcom/android/server/wm/TaskFragment;)V
    .registers 2
    .param p0, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 2789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method static synthetic lambda$getNonFinishingActivityCount$9([ILcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "runningActivityCount"    # [I
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 1025
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_b

    .line 1026
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 1028
    :cond_b
    return-void
.end method

.method static synthetic lambda$getTopNonFinishingActivity$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 980
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopNonFinishingActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 986
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$isFullyTrustedEmbedding$0(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 724
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$topRunningActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private sendTaskFragmentAppeared()V
    .registers 3

    .line 2659
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2660
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2662
    :cond_9
    return-void
.end method

.method private sendTaskFragmentVanished()V
    .registers 3

    .line 2665
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2666
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2668
    :cond_9
    return-void
.end method

.method private switchFocusedTaskIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "current"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topResumed"    # Lcom/android/server/wm/ActivityRecord;

    .line 827
    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_56

    .line 828
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 829
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchFocusedTaskIfNeed setFocusedTask(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_56
    return-void
.end method

.method private updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "forceUpdate"    # Z

    .line 2565
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_5

    .line 2567
    return-void

    .line 2569
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_6a

    .line 2573
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2577
    .local v0, "bounds":Landroid/graphics/Rect;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2578
    .local v1, "scale":F
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2579
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 2580
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 2581
    .local v2, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :goto_3c
    if-eqz v2, :cond_42

    .line 2582
    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v1

    .line 2585
    .end local v2    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 2586
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 2588
    .local v3, "height":I
    if-nez p2, :cond_5f

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_5f

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_5f

    .line 2589
    return-void

    .line 2591
    :cond_5f
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2592
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2593
    return-void

    .line 2570
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "scale":F
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateOrganizedTaskFragmentSurfaceUnchecked()V
    .registers 3

    .line 2557
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2558
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2559
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2560
    return-void
.end method

.method private warnForNonLeafTaskFragment(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 754
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_22

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on non-leaf task fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_22
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2014
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 2015
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 16
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 2019
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2020
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 2021
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 2022
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 2024
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2025
    .local v2, "addingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x1

    if-eqz v2, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v1

    .line 2026
    .local v4, "isAddingActivity":Z
    :goto_15
    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    .line 2029
    .local v5, "task":Lcom/android/server/wm/Task;
    :goto_1d
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_27

    move v6, v3

    goto :goto_28

    :cond_27
    move v6, v1

    .line 2032
    .local v6, "taskHadActivity":Z
    :goto_28
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v7

    goto :goto_30

    :cond_2f
    move v7, v1

    .line 2034
    .local v7, "activityType":I
    :goto_30
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 2036
    if-eqz v4, :cond_88

    if-eqz v5, :cond_88

    .line 2039
    if-eqz v0, :cond_7f

    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2040
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v8, :cond_5b

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x7fe146a

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v1

    const-string v12, "Screenshotting Activity %s"

    invoke-static {v9, v10, v1, v12, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2042
    .end local v8    # "protoLogParam0":Ljava/lang/String;
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 2043
    .local v8, "outBounds":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v10, Landroid/graphics/Rect;

    .line 2045
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-direct {v10, v1, v1, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2043
    invoke-static {v9, v10, v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 2047
    .local v1, "backBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    iget-object v9, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    .end local v1    # "backBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v8    # "outBounds":Landroid/graphics/Rect;
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 2050
    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/wm/Task;->onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V

    .line 2052
    :cond_88
    return-void
.end method

.method asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 601
    return-object p0
.end method

.method awakeFromSleeping()V
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    .line 861
    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleeping: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 864
    :cond_11
    return-void
.end method

.method calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 10
    .param p1, "outNonDecorBounds"    # Landroid/graphics/Rect;
    .param p2, "outStableBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 2450
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2451
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2453
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_44

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_15

    goto :goto_44

    .line 2456
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2458
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 2459
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget-object v3, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2461
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2463
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2464
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2465
    return-void

    .line 2454
    .end local v1    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_44
    :goto_44
    return-void
.end method

.method calculateMinDimension()Landroid/graphics/Point;
    .registers 6

    .line 2714
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2715
    .local v1, "maxMinWidth":[I
    new-array v0, v0, [I

    .line 2717
    .local v0, "maxMinHeight":[I
    new-instance v2, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;-><init>([I[I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2728
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v3, v0, v3

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method canBeAnimationTarget()Z
    .registers 2

    .line 2959
    const/4 v0, 0x1

    return v0
.end method

.method canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1694
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1693
    :goto_f
    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 2089
    const/4 v0, 0x1

    return v0
.end method

.method canCustomizeAppTransition()Z
    .registers 2

    .line 2784
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_9

    .line 770
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 773
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_14

    if-ne v0, p1, :cond_14

    .line 774
    const-string v0, "cleanUpActivityReferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 776
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 777
    return-void
.end method

.method clearLastPausedActivity()V
    .registers 2

    .line 2789
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 2790
    return-void
.end method

.method completePause(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 19
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1882
    .local v1, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x1384aa78

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1884
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    if-eqz v1, :cond_cd

    .line 1885
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1886
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    .line 1887
    .local v2, "wasStopping":Z
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v7, "completePausedLocked"

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1888
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_4b

    .line 1893
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_45

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x129e233e

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-static {v8, v9, v5, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1894
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_45
    invoke-virtual {v1, v5, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto/16 :goto_c6

    .line 1896
    :cond_4b
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 1897
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_78

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    move v8, v2

    .local v8, "protoLogParam1":Z
    iget-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v9, "protoLogParam2":Z
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x46c5ef9f

    const/16 v12, 0x3c

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v6, v13, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1900
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Z
    .end local v9    # "protoLogParam2":Z
    :cond_78
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v6, :cond_96

    .line 1902
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_90

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x3c49af70

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1903
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_90
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_c6

    .line 1904
    :cond_96
    if-eqz v2, :cond_9e

    .line 1908
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_c6

    .line 1909
    :cond_9e
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 1911
    :cond_a8
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1914
    const-string v6, "completePauseLocked"

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_c6

    .line 1918
    :cond_b1
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_c5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1f17322e

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1919
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_c5
    const/4 v1, 0x0

    .line 1924
    :cond_c6
    :goto_c6
    if-eqz v1, :cond_cb

    .line 1925
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1927
    :cond_cb
    iput-object v4, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1930
    .end local v2    # "wasStopping":Z
    :cond_cd
    if-eqz p1, :cond_f5

    .line 1931
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1932
    .local v2, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_e3

    .line 1933
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_f5

    .line 1938
    :cond_e3
    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_e9
    move-object v3, v4

    .line 1939
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_f0

    if-eqz v1, :cond_f5

    if-eq v3, v1, :cond_f5

    .line 1944
    :cond_f0
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1949
    .end local v2    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_f5
    :goto_f5
    if-eqz v1, :cond_fa

    .line 1950
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1953
    :cond_fa
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1958
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_117

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_124

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 1960
    :cond_117
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1961
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1963
    :cond_124
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2228
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 2232
    if-eqz p3, :cond_8

    .line 2234
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2235
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2237
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2239
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 22
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2278
    .local v4, "windowingMode":I
    if-nez v4, :cond_16

    .line 2279
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2282
    :cond_16
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2283
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_21

    .line 2284
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2286
    :cond_21
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2292
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2293
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2294
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_44

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3a

    goto :goto_44

    .line 2298
    :cond_3a
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2299
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_4a

    .line 2295
    .end local v8    # "insideParentBounds":Z
    :cond_44
    :goto_44
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2296
    const/4 v8, 0x1

    .line 2304
    .restart local v8    # "insideParentBounds":Z
    :goto_4a
    if-eqz v3, :cond_4e

    const/4 v11, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v11, 0x0

    .line 2306
    .local v11, "customContainerPolicy":Z
    :goto_4f
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 2307
    .local v12, "outAppBounds":Landroid/graphics/Rect;
    const/4 v13, 0x5

    if-eqz v12, :cond_5e

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_94

    .line 2309
    :cond_5e
    iget-object v14, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2310
    iget-object v14, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 2312
    if-nez v11, :cond_94

    if-eq v4, v13, :cond_94

    .line 2314
    if-eqz v8, :cond_78

    .line 2315
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    .local v14, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_89

    .line 2320
    .end local v14    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    .line 2321
    .local v14, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v14, :cond_87

    .line 2322
    invoke-virtual {v14}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v15

    goto :goto_88

    :cond_87
    const/4 v15, 0x0

    :goto_88
    move-object v14, v15

    .line 2324
    .local v14, "containingAppBounds":Landroid/graphics/Rect;
    :goto_89
    if-eqz v14, :cond_94

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_94

    .line 2325
    invoke-virtual {v12, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2330
    .end local v14    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_94
    iget v14, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v14, :cond_a0

    iget v14, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v14, :cond_9d

    goto :goto_a0

    :cond_9d
    const/4 v9, 0x2

    goto/16 :goto_1ad

    .line 2332
    :cond_a0
    :goto_a0
    if-nez v11, :cond_b7

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 2333
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2334
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_125

    .line 2335
    :cond_b7
    if-nez v11, :cond_d9

    if-nez p3, :cond_c1

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-eqz v9, :cond_d9

    .line 2337
    :cond_c1
    if-eqz p3, :cond_c6

    .line 2338
    move-object/from16 v9, p3

    goto :goto_ce

    .line 2339
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    :goto_ce
    nop

    .line 2345
    .local v9, "di":Landroid/view/DisplayInfo;
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v14, v10, v15, v9}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2346
    .end local v9    # "di":Landroid/view/DisplayInfo;
    goto :goto_125

    .line 2349
    :cond_d9
    iget-object v9, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2350
    .local v9, "rotation":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_e8

    .line 2351
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2353
    :cond_e8
    if-eq v9, v10, :cond_11b

    if-eqz v11, :cond_11b

    .line 2354
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2355
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2356
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v9}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2357
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v14, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2359
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v14, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2361
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_125

    .line 2364
    :cond_11b
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2365
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2369
    .end local v9    # "rotation":I
    :goto_125
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v9, :cond_142

    .line 2370
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2373
    .local v9, "overrideScreenWidthDp":I
    if-eqz v8, :cond_13f

    if-nez v11, :cond_13f

    if-eq v4, v13, :cond_13f

    .line 2374
    iget v10, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_140

    .line 2375
    :cond_13f
    move v10, v9

    :goto_140
    iput v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2377
    .end local v9    # "overrideScreenWidthDp":I
    :cond_142
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v9, :cond_15f

    .line 2378
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2381
    .local v9, "overrideScreenHeightDp":I
    if-eqz v8, :cond_15c

    if-nez v11, :cond_15c

    if-eq v4, v13, :cond_15c

    .line 2382
    iget v10, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_15d

    .line 2383
    :cond_15c
    move v10, v9

    :goto_15d
    iput v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2386
    .end local v9    # "overrideScreenHeightDp":I
    :cond_15f
    iget v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v9, :cond_1ac

    .line 2394
    const/4 v9, 0x2

    if-ne v4, v9, :cond_179

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2395
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_179

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_179

    const/16 v16, 0x1

    goto :goto_17b

    :cond_179
    const/16 v16, 0x0

    :goto_17b
    move/from16 v10, v16

    .line 2396
    .local v10, "inPipTransition":Z
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v13

    if-eqz v13, :cond_19b

    if-nez v10, :cond_19b

    .line 2399
    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2400
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v5

    float-to-int v13, v13

    iput v13, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_1ad

    .line 2401
    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v13

    if-eqz v13, :cond_1ad

    .line 2404
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v14, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2405
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_1ad

    .line 2386
    .end local v10    # "inPipTransition":Z
    :cond_1ac
    const/4 v9, 0x2

    .line 2411
    :cond_1ad
    :goto_1ad
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v10, :cond_1bc

    .line 2412
    iget v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v10, v13, :cond_1b9

    .line 2413
    const/4 v10, 0x1

    goto :goto_1ba

    :cond_1b9
    move v10, v9

    :goto_1ba
    iput v10, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2415
    :cond_1bc
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_1e6

    .line 2419
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2420
    .local v9, "compatScreenWidthDp":I
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    .line 2423
    .local v10, "compatScreenHeightDp":I
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_1d8

    .line 2424
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2426
    :cond_1d8
    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v13, :cond_1de

    .line 2427
    iget v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2430
    :cond_1de
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v10}, Lcom/android/server/wm/TaskFragment;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2435
    .end local v9    # "compatScreenWidthDp":I
    .end local v10    # "compatScreenHeightDp":I
    :cond_1e6
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v9, v10, v1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->computeTfConfig(Lcom/android/server/wm/TaskFragmentStub;Landroid/content/res/Configuration;)V

    .line 2436
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 5
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2244
    if-eqz p3, :cond_5

    .line 2246
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2248
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2250
    return-void
.end method

.method continueOrganizedTaskFragmentSurfaceUpdate()V
    .registers 2

    .line 2531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    .line 2532
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 2533
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 4
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 2078
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v0

    if-nez v0, :cond_b

    .line 2082
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_f

    .line 2083
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_f
    nop

    .line 2084
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method deferOrganizedTaskFragmentSurfaceUpdate()V
    .registers 2

    .line 2527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    .line 2528
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3053
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3056
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_40
    if-ltz v1, :cond_70

    .line 3057
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3058
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_6d

    .line 3062
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3056
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 3065
    .end local v1    # "i":I
    :cond_70
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .registers 33
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpAll"    # Z
    .param p5, "dumpClient"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z
    .param p8, "header"    # Ljava/lang/Runnable;

    .line 3001
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 3002
    .local v10, "printed":Z
    new-instance v11, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/TaskFragment;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V

    .line 3013
    .local v0, "headerPrinter":Ljava/lang/Runnable;
    if-nez p6, :cond_20

    .line 3016
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3017
    const/4 v0, 0x0

    .line 3018
    const/4 v10, 0x1

    .line 3021
    :cond_20
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_9c

    .line 3022
    iget-object v2, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3023
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const-string v4, "  "

    if-eqz v3, :cond_64

    .line 3024
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v3

    or-int/2addr v3, v10

    move v10, v3

    .end local v10    # "printed":Z
    .local v3, "printed":Z
    goto :goto_99

    .line 3026
    .end local v3    # "printed":Z
    .restart local v10    # "printed":Z
    :cond_64
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 3027
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    xor-int/lit8 v18, p4, 0x1

    const/16 v21, 0x0

    .line 3029
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    .line 3027
    const-string v16, "Hist "

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v13, v1

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, v0

    invoke-static/range {v11 .. v23}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 3021
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    :cond_99
    :goto_99
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 3033
    .end local v1    # "i":I
    :cond_9c
    return v10
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 3098
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3099
    return-void

    .line 3102
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3104
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3106
    const-wide v2, 0x10500000002L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3107
    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3108
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3109
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3111
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3112
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 3037
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3038
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3039
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v1, :cond_49

    .line 3043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mIsRemovalRequested=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    :cond_49
    if-eqz p3, :cond_67

    .line 3046
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mLastPausedActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 3049
    :cond_67
    return-void
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4
    .param p1, "start"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 2221
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2222
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 2073
    return-void
.end method

.method fillsParent()Z
    .registers 3

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 1973
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1974
    .local v0, "count":I
    const/4 v1, 0x1

    .line 1975
    .local v1, "isLeafTaskFrag":Z
    if-eqz p2, :cond_23

    .line 1976
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_22

    .line 1977
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1978
    .local v3, "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1f

    .line 1979
    const/4 v1, 0x0

    .line 1980
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1976
    .end local v3    # "child":Lcom/android/server/wm/TaskFragment;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2    # "i":I
    :cond_22
    goto :goto_3b

    .line 1984
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 1985
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1986
    .restart local v3    # "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_38

    .line 1987
    const/4 v1, 0x0

    .line 1988
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1984
    .end local v3    # "child":Lcom/android/server/wm/TaskFragment;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1992
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1993
    :cond_40
    return-void
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    .line 1997
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskFragment;>;"
    const/4 v0, 0x1

    .line 1998
    .local v0, "isLeafTaskFrag":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 1999
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 2000
    .local v3, "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_21

    .line 2001
    const/4 v0, 0x0

    .line 2002
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2003
    return v2

    .line 1998
    .end local v3    # "child":Lcom/android/server/wm/TaskFragment;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2007
    .end local v1    # "i":I
    :cond_24
    if-eqz v0, :cond_2b

    .line 2008
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2010
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 1967
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1968
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1969
    return-void
.end method

.method public getActivityType()I
    .registers 4

    .line 2511
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 2512
    .local v0, "applicationType":I
    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_21

    .line 2515
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2516
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    :goto_20
    return v2

    .line 2513
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    :goto_21
    return v0
.end method

.method getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2928
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 2931
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 2

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 573
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .registers 3

    .line 556
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 557
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    return v1
.end method

.method getFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 2733
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getNonFinishingActivityCount()I
    .registers 3

    .line 1023
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1024
    .local v0, "runningActivityCount":[I
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1029
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 3

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_5

    .line 743
    return-object p0

    .line 746
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    .line 747
    .local v0, "parentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :goto_16
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :cond_1c
    return-object v1
.end method

.method getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 3080
    const-wide v0, 0x10b00000009L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 596
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getRootTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 4

    .line 587
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 588
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_7

    return-object p0

    .line 590
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 591
    .local v1, "parentTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v1, :cond_f

    move-object v2, p0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method getScale()F
    .registers 2

    .line 3091
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0}, Lcom/android/server/wm/TaskFragmentStub;->getScale()F

    move-result v0

    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 562
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 563
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 566
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    .line 567
    .local v0, "parent":Lcom/android/server/wm/TaskFragment;
    :goto_1c
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_22
    return-object v1
.end method

.method getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .registers 16

    .line 2675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    .local v0, "childActivities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 2677
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2678
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2679
    .local v3, "ar":Lcom/android/server/wm/ActivityRecord;
    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    if-eqz v3, :cond_3c

    .line 2682
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    if-ne v4, v5, :cond_3c

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_3c

    .line 2684
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2685
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 2687
    :cond_39
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsInNewProcess:Z

    .line 2676
    .end local v2    # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2692
    .end local v1    # "i":I
    :cond_3f
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v13, v1

    .line 2693
    .local v13, "positionInParent":Landroid/graphics/Point;
    invoke-virtual {p0, v13}, Lcom/android/server/wm/TaskFragment;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2694
    new-instance v14, Landroid/window/TaskFragmentInfo;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 2696
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2698
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v5

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v6

    iget-boolean v9, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    iget-boolean v10, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    iget-boolean v11, p0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 2705
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v12

    move-object v1, v14

    move-object v7, v0

    move-object v8, v13

    invoke-direct/range {v1 .. v12}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Landroid/graphics/Point;ZZZLandroid/graphics/Point;)V

    .line 2694
    return-object v14
.end method

.method getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .registers 2

    .line 2738
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "includeOverlays"    # Z

    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "includeOverlays"    # Z
    .param p2, "includingEmbeddedTask"    # Z

    .line 978
    if-eqz p1, :cond_18

    .line 979
    if-eqz p2, :cond_e

    .line 980
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 982
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 985
    :cond_18
    if-eqz p2, :cond_24

    .line 986
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 988
    :cond_24
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 535
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 536
    .local v0, "taskFragPausingActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2e

    .line 537
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 538
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v3, 0x0

    .line 539
    .local v3, "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    if-ne v2, v0, :cond_1a

    .line 540
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_28

    .line 541
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 542
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 544
    :cond_28
    :goto_28
    if-eqz v3, :cond_2b

    .line 545
    return-object v3

    .line 536
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 548
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 476
    .local v0, "taskFragResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2e

    .line 477
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 478
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v3, 0x0

    .line 479
    .local v3, "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    if-ne v2, v0, :cond_1a

    .line 480
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_28

    .line 481
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 482
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 484
    :cond_28
    :goto_28
    if-eqz v3, :cond_2b

    .line 485
    return-object v3

    .line 476
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3    # "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 488
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method getTopRunningPackage()Ljava/lang/String;
    .registers 3

    .line 2176
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2177
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2178
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object v1

    .line 2180
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 18
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_110

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_110

    .line 1049
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityLaunchedBehind()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    .line 1050
    return v4

    .line 1053
    :cond_1b
    const/4 v2, 0x0

    .line 1054
    .local v2, "gotTranslucentFullscreen":Z
    const/4 v5, 0x0

    .line 1055
    .local v5, "gotTranslucentAdjacent":Z
    const/4 v6, 0x1

    .line 1059
    .local v6, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 1060
    .local v7, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_37

    .line 1061
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    .line 1062
    .local v8, "parentVisibility":I
    if-ne v8, v3, :cond_34

    .line 1064
    return v3

    .line 1065
    :cond_34
    if-ne v8, v9, :cond_37

    .line 1068
    const/4 v2, 0x1

    .line 1072
    .end local v8    # "parentVisibility":I
    :cond_37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v8, "adjacentTaskFragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskFragment;>;"
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v9

    .local v10, "i":I
    :goto_41
    if-ltz v10, :cond_107

    .line 1074
    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 1075
    .local v11, "other":Lcom/android/server/wm/WindowContainer;
    if-nez v11, :cond_4b

    goto/16 :goto_101

    .line 1077
    :cond_4b
    invoke-static {v11}, Lcom/android/server/wm/TaskFragment;->hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    .line 1078
    .local v12, "hasRunningActivities":Z
    if-ne v11, v0, :cond_aa

    .line 1079
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_93

    if-nez v5, :cond_93

    .line 1083
    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1084
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v9

    .local v13, "j":I
    :goto_67
    if-ltz v13, :cond_93

    .line 1085
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskFragment;

    .line 1086
    .local v14, "taskFragment":Lcom/android/server/wm/TaskFragment;
    iget-object v15, v14, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1088
    .local v15, "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-ne v15, v0, :cond_74

    .line 1089
    goto :goto_8d

    .line 1091
    :cond_74
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_92

    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    .line 1092
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8d

    goto :goto_92

    .line 1084
    .end local v14    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v15    # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_8d
    :goto_8d
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_67

    .line 1093
    .restart local v14    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v15    # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_92
    :goto_92
    return v3

    .line 1099
    .end local v13    # "j":I
    .end local v14    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v15    # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_93
    if-nez v12, :cond_a6

    if-eqz v1, :cond_9d

    .line 1100
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 1101
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_a4

    goto :goto_a6

    :cond_a4
    const/4 v4, 0x0

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 v4, 0x1

    :goto_a7
    move v6, v4

    .line 1102
    const/4 v9, 0x1

    goto :goto_107

    .line 1105
    :cond_aa
    if-nez v12, :cond_ae

    .line 1106
    const/4 v9, 0x1

    goto :goto_101

    .line 1109
    :cond_ae
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    .line 1110
    .local v4, "otherWindowingMode":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_be

    .line 1111
    invoke-static {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 1113
    const/4 v2, 0x1

    .line 1114
    goto :goto_101

    .line 1116
    :cond_bd
    return v3

    .line 1117
    :cond_be
    const/4 v13, 0x6

    if-eq v4, v13, :cond_c7

    .line 1119
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v13

    if-eqz v13, :cond_cd

    :cond_c7
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->matchParentBounds()Z

    move-result v13

    if-nez v13, :cond_f9

    :cond_cd
    const/16 v13, 0x65

    if-ne v4, v13, :cond_d2

    goto :goto_f9

    .line 1131
    :cond_d2
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    .line 1132
    .local v13, "otherTaskFrag":Lcom/android/server/wm/TaskFragment;
    if-eqz v13, :cond_101

    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v14, :cond_101

    .line 1133
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f5

    .line 1134
    invoke-virtual {v13, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-nez v14, :cond_f2

    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1135
    invoke-virtual {v14, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_f1

    goto :goto_f2

    .line 1142
    :cond_f1
    return v3

    .line 1137
    :cond_f2
    :goto_f2
    const/4 v2, 0x1

    .line 1138
    const/4 v5, 0x1

    .line 1139
    goto :goto_101

    .line 1144
    :cond_f5
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_101

    .line 1122
    .end local v13    # "otherTaskFrag":Lcom/android/server/wm/TaskFragment;
    :cond_f9
    :goto_f9
    invoke-static {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_106

    .line 1124
    const/4 v2, 0x1

    .line 1125
    nop

    .line 1073
    .end local v4    # "otherWindowingMode":I
    .end local v11    # "other":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "hasRunningActivities":Z
    :cond_101
    :goto_101
    add-int/lit8 v10, v10, -0x1

    const/4 v4, 0x0

    goto/16 :goto_41

    .line 1128
    .restart local v4    # "otherWindowingMode":I
    .restart local v11    # "other":Lcom/android/server/wm/WindowContainer;
    .restart local v12    # "hasRunningActivities":Z
    :cond_106
    return v3

    .line 1150
    .end local v4    # "otherWindowingMode":I
    .end local v10    # "i":I
    .end local v11    # "other":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "hasRunningActivities":Z
    :cond_107
    :goto_107
    if-nez v6, :cond_10a

    .line 1151
    return v3

    .line 1155
    :cond_10a
    if-eqz v2, :cond_10e

    .line 1156
    move v4, v9

    goto :goto_10f

    .line 1157
    :cond_10e
    const/4 v4, 0x0

    .line 1155
    :goto_10f
    return v4

    .line 1046
    .end local v2    # "gotTranslucentFullscreen":Z
    .end local v5    # "gotTranslucentAdjacent":Z
    .end local v6    # "shouldBeVisible":Z
    .end local v7    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v8    # "adjacentTaskFragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskFragment;>;"
    :cond_110
    :goto_110
    return v3
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->handleAppDied(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)Z

    .line 845
    const-string v0, "handleAppDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "isPausingDied":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_35

    .line 848
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5d3c3b70

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 850
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_32
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 851
    const/4 v0, 0x1

    .line 853
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3f

    .line 854
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 856
    :cond_3f
    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .registers 2

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2886
    const/4 v0, 0x1

    return v0

    .line 2888
    :cond_8
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method hasDirectChildActivities()Z
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 761
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 762
    return v1

    .line 760
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 765
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 464
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_18

    .line 465
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 464
    :goto_19
    return v0
.end method

.method isAllowedToBeEmbeddedInTrustedMode()Z
    .registers 2

    .line 733
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 619
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I

    move-result v0

    return v0
.end method

.method isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I
    .registers 4
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "uid"    # I

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 635
    const/4 v0, 0x1

    return v0

    .line 636
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 637
    const/4 v0, 0x2

    return v0

    .line 639
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 675
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 8
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "uid"    # I

    .line 687
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 688
    return v1

    .line 691
    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object v0

    .line 692
    .local v0, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 695
    return v3

    .line 698
    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 699
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 701
    .local v2, "hostPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    return v1
.end method

.method isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 664
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 665
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_21

    .line 670
    :cond_16
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 668
    :cond_21
    :goto_21
    return v1
.end method

.method public isAttached()Z
    .registers 3

    .line 578
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 579
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isDelayLastActivityRemoval()Z
    .registers 2

    .line 2873
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return v0
.end method

.method isEmbedded()Z
    .registers 6

    .line 606
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 607
    return v1

    .line 609
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 610
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 611
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 612
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1

    .line 614
    .end local v3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1c
    return v2
.end method

.method isEmbeddedTaskFragmentInPip()Z
    .registers 2

    .line 2811
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method isFocusableAndVisible()Z
    .registers 2

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected isForceHidden()Z
    .registers 2

    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method isFullyTrustedEmbedding(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 724
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isLeafTaskFragment()Z
    .registers 4

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 788
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 789
    const/4 v1, 0x0

    return v1

    .line 787
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 792
    .end local v0    # "i":I
    :cond_1d
    return v1
.end method

.method isOrganized()Z
    .registers 2

    .line 2743
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final isOrganizedTaskFragment()Z
    .registers 2

    .line 2748
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isReadyToTransit()Z
    .registers 3

    .line 2759
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2760
    return v1

    .line 2764
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_13

    goto :goto_27

    .line 2768
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2769
    return v1

    .line 2773
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2774
    return v1

    .line 2776
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 2765
    :cond_27
    :goto_27
    return v1
.end method

.method isTaskVisibleRequested()Z
    .registers 3

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2754
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isTopActivityFocusable()Z
    .registers 3

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1034
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_1e

    .line 1035
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 1034
    :goto_1e
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 928
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_29

    .line 931
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 932
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 931
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 933
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 934
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 935
    if-nez v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    .line 929
    .end local v0    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2    # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_29
    :goto_29
    return v1
.end method

.method synthetic lambda$dump$12$com-android-server-wm-TaskFragment(ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "needSep"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "header"    # Ljava/lang/Runnable;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 3003
    if-eqz p1, :cond_5

    .line 3004
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3006
    :cond_5
    if-eqz p3, :cond_a

    .line 3007
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 3010
    :cond_a
    invoke-virtual {p0, p4, p2, p5, p6}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 3011
    return-void
.end method

.method synthetic lambda$getTopNonFinishingActivity$3$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 982
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method synthetic lambda$getTopNonFinishingActivity$5$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 989
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method synthetic lambda$isAllowedToBeEmbeddedInTrustedMode$1$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$topRunningActivity$7$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1013
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method synthetic lambda$topRunningActivity$8$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1019
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method moveChildToFront(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5
    .param p1, "newTop"    # Lcom/android/server/wm/WindowContainer;

    .line 2059
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    .line 2060
    .local v0, "origDist":I
    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/TaskFragment;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2061
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    if-eq v1, v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityRecord$State;
    .param p3, "reason"    # Ljava/lang/String;

    .line 805
    const-string/jumbo v0, "onActivityStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_25

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_25

    .line 807
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 810
    :cond_25
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p2, v0, :cond_80

    .line 811
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_50

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set resumed activity to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_75

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->switchFocusedTaskIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 819
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 822
    :cond_80
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/ActivityRecordStub;->onArStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;)V

    .line 823
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 2597
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2600
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_29

    .line 2602
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2604
    .local v0, "syncTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eq p1, v0, :cond_24

    .line 2606
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2608
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 2610
    .end local v0    # "syncTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_29
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2614
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2616
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_b

    .line 2617
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2619
    :cond_b
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 2066
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 2069
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2521
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2522
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 2523
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 2524
    return-void
.end method

.method onTaskFragmentOrganizerRemoved()V
    .registers 2

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 460
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 2936
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2937
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2938
    return-void

    .line 2941
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 2942
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2945
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2948
    .local v0, "dimBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v1}, Lcom/android/server/wm/TaskFragmentStub;->prepareSurfaces()V

    .line 2949
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v1, v0}, Lcom/android/server/wm/TaskFragmentStub;->updateDimBounds(Landroid/graphics/Rect;)V

    .line 2951
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2952
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2953
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->scheduleAnimation()V

    .line 2955
    :cond_33
    return-void
.end method

.method provideOrientationForMiuiEmbeddingDivider()Z
    .registers 5

    .line 2971
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2972
    return v1

    .line 2975
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    .line 2977
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_25

    goto :goto_3d

    .line 2981
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2982
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    .line 2983
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2982
    invoke-interface {v0, v3}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddingDividerEnabledForSelfAdaptApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2984
    return v2

    .line 2987
    :cond_3c
    return v1

    .line 2978
    :cond_3d
    :goto_3d
    return v1
.end method

.method remove(ZLjava/lang/String;)V
    .registers 7
    .param p1, "withTransition"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2846
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2847
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    .line 2848
    return-void

    .line 2850
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 2853
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2854
    .local v1, "removingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2855
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_3d

    .line 2856
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2857
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz p1, :cond_37

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2858
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_3a

    .line 2860
    :cond_37
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2855
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 2863
    .end local v2    # "i":I
    :cond_3d
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 2820
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2821
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "removeSelfIfPossible"    # Z

    .line 2824
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2825
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2828
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2829
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    .line 2830
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    if-eqz p2, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLastChild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    .line 2836
    :cond_3f
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 2899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 2900
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 2901
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->cleanUp()V

    .line 2902
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v1, :cond_15

    .line 2903
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    nop

    .line 2904
    .local v0, "shouldExecuteAppTransition":Z
    :goto_16
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2905
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentVanished()V

    .line 2906
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2d

    .line 2911
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 2913
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2915
    :cond_2d
    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 2893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove task fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 2895
    return-void
.end method

.method resetAdjacentTaskFragment()V
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v3, p0, :cond_21

    .line 432
    iput-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 434
    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 436
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0}, Lcom/android/server/wm/TaskFragmentStub;->isAdjInSpecialVideo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0, v2}, Lcom/android/server/wm/TaskFragmentStub;->setAdjInSpecialVideo(Z)V

    .line 442
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0}, Lcom/android/server/wm/TaskFragmentStub;->isAdjInSpecialVideo()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0, v2}, Lcom/android/server/wm/TaskFragmentStub;->setAdjInSpecialVideo(Z)V

    .line 446
    :cond_2e
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 447
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 448
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 449
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 14
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2100
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/ActivityRecordStub;->resetTaskFragmentWindowModeForHoverMode(Lcom/android/server/wm/TaskFragment;Landroid/content/res/Configuration;)V

    .line 2101
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2102
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2104
    nop

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2106
    .local v0, "windowingMode":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2110
    .local v1, "parentWindowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3d

    if-nez v0, :cond_3d

    .line 2111
    const/4 v0, 0x1

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2122
    :cond_3d
    if-eqz v0, :cond_41

    move v2, v0

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    move v9, v2

    .line 2123
    .local v9, "candidateWindowingMode":I
    const/4 v10, 0x5

    if-ne v9, v10, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->supportsFreeform()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2124
    :cond_5c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsEmbeddedWindow(I)Z

    move-result v2

    if-nez v2, :cond_7c

    if-eq v9, v10, :cond_7c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 2126
    :cond_6a
    invoke-static {v9}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    if-eq v9, v3, :cond_7c

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2135
    :cond_7c
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    .line 2136
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v11, 0x0

    if-eqz v3, :cond_8a

    invoke-interface {v3}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_8b

    :cond_8a
    move-object v3, v11

    :goto_8b
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2137
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v4

    .line 2138
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopRunningPackage()Ljava/lang/String;

    move-result-object v5

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 2135
    move v6, v1

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->adjustTFConfigForEmbeddingResizing(Landroid/os/IBinder;ZLjava/lang/String;IILandroid/content/res/Configuration;)V

    .line 2145
    const/4 v2, 0x6

    if-ne v1, v2, :cond_b8

    if-ne v0, v10, :cond_b8

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v11}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2151
    :cond_b8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2154
    .local v2, "thisTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_c9

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 2155
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/Task;->resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2158
    :cond_c9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2159
    return-void
.end method

.method final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 30
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "deferPause"    # Z

    .line 1195
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": "

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1197
    .local v6, "next":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x0

    if-eqz v6, :cond_719

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-eqz v0, :cond_719

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0}, Lcom/android/server/wm/TaskFragmentStub;->isAdjInSpecialVideo()Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_719

    .line 1202
    :cond_20
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    iget-boolean v8, v1, Lcom/android/server/wm/TaskFragment;->mForceStop:Z

    invoke-interface {v0, v6, v8}, Lcom/android/server/wm/PreloadStateManagerStub;->hidePreloadActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1203
    return v5

    .line 1207
    :cond_2d
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 1211
    .local v8, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v9

    .line 1212
    .local v9, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsLastFrame:Z

    if-nez v0, :cond_48

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getLastFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1213
    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->setLastFrame(Z)V

    .line 1215
    :cond_48
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mResumeActivity:Ljava/lang/String;

    .line 1219
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    if-ne v0, v6, :cond_d0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1220
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1225
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-nez v0, :cond_70

    .line 1226
    invoke-virtual {v8, v10, v7, v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1233
    :cond_70
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1238
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_ae

    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v6, :cond_ae

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v5, :cond_ae

    .line 1248
    :cond_93
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 1249
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 1251
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 1252
    :cond_a9
    iget-object v4, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1256
    .end local v0    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_ae
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_bb

    .line 1257
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0, v6}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->deliverResultForResumeActivityInFreeform(Lcom/android/server/wm/ActivityRecord;)V

    .line 1259
    :cond_bb
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_cf

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x28467144

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v11, v7, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_cf
    return v7

    .line 1265
    :cond_d0
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v11

    .line 1266
    .local v11, "allPausedComplete":Z
    if-nez v11, :cond_e8

    .line 1267
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_e7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x37c159ec

    move-object v5, v10

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    :cond_e7
    return v7

    .line 1274
    :cond_e8
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_105

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1277
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1278
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_104

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x706c4a7b

    move-object v5, v10

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    :cond_104
    return v7

    .line 1286
    :cond_105
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v12, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v12}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v0

    const-string v12, "ActivityTaskManager"

    if-nez v0, :cond_13c

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping resume of top activity "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return v7

    .line 1294
    :cond_13c
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1296
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_15d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_15d
    sget-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_170

    .line 1300
    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v14, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1302
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v10

    .line 1300
    invoke-virtual {v0, v13, v14, v15, v10}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1305
    :cond_170
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    .line 1308
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1312
    .local v10, "app":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 1313
    .local v0, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 1314
    .local v13, "lastFocusedRootTask":Lcom/android/server/wm/Task;
    const/4 v14, -0x1

    if-eqz v13, :cond_1b1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eq v13, v7, :cond_1b1

    .line 1318
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1320
    if-eqz v10, :cond_201

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_201

    .line 1321
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    goto :goto_201

    .line 1327
    :cond_1b1
    if-eqz v10, :cond_201

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_201

    .line 1328
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_1d1

    if-eqz v2, :cond_1d1

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1d1

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1d1

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1329
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ed

    :cond_1d1
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_1f7

    if-eqz v6, :cond_1f7

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1f7

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1f7

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1332
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f7

    .line 1333
    :cond_1ed
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    goto :goto_201

    .line 1335
    :cond_1f7
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    .line 1341
    :cond_201
    :goto_201
    move-object v5, v0

    .end local v0    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v5, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    if-nez p3, :cond_20c

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_20c

    const/4 v0, 0x1

    goto :goto_20d

    :cond_20c
    const/4 v0, 0x0

    .line 1342
    .local v0, "pausing":Z
    :goto_20d
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v14, "resumeTopActivity"

    if-eqz v7, :cond_248

    .line 1343
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_236

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v18, v9

    .end local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .local v18, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    move-object/from16 v20, v10

    const/4 v9, 0x1

    .end local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    .local v20, "app":Lcom/android/server/wm/WindowProcessController;
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v10, v9

    move-object/from16 v17, v7

    move/from16 v19, v11

    const v7, 0x61dd69c

    const/4 v11, 0x0

    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v11    # "allPausedComplete":Z
    .local v17, "protoLogParam0":Ljava/lang/String;
    .local v19, "allPausedComplete":Z
    invoke-static {v15, v7, v9, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23d

    .end local v17    # "protoLogParam0":Ljava/lang/String;
    .end local v18    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19    # "allPausedComplete":Z
    .end local v20    # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v11    # "allPausedComplete":Z
    :cond_236
    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move/from16 v19, v11

    const/4 v9, 0x0

    .line 1344
    .end local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v11    # "allPausedComplete":Z
    .restart local v18    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v19    # "allPausedComplete":Z
    .restart local v20    # "app":Lcom/android/server/wm/WindowProcessController;
    :goto_23d
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v7, v9, v6, v14}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    move v7, v0

    goto :goto_24f

    .line 1342
    .end local v18    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19    # "allPausedComplete":Z
    .end local v20    # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v11    # "allPausedComplete":Z
    :cond_248
    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move/from16 v19, v11

    .end local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v10    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v11    # "allPausedComplete":Z
    .restart local v18    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v19    # "allPausedComplete":Z
    .restart local v20    # "app":Lcom/android/server/wm/WindowProcessController;
    move v7, v0

    .line 1347
    .end local v0    # "pausing":Z
    .local v7, "pausing":Z
    :goto_24f
    if-eqz v7, :cond_298

    .line 1348
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_263

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x14541918

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v4, v10, v9, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_264

    :cond_263
    const/4 v10, 0x0

    .line 1354
    :goto_264
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_271

    .line 1355
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x1

    invoke-virtual {v0, v10, v4, v10, v10}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_28f

    .line 1358
    :cond_271
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_28f

    .line 1362
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_27f

    const/4 v0, 0x1

    goto :goto_280

    :cond_27f
    const/4 v0, 0x0

    .line 1363
    .local v0, "isTop":Z
    :goto_280
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1364
    if-eqz v0, :cond_288

    const-string/jumbo v9, "next-top-activity"

    goto :goto_28b

    .line 1365
    :cond_288
    const-string/jumbo v9, "next-activity"

    .line 1363
    :goto_28b
    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1367
    .end local v0    # "isTop":Z
    :cond_28f
    :goto_28f
    if-eqz v5, :cond_296

    .line 1368
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_297

    .line 1367
    :cond_296
    const/4 v4, 0x1

    .line 1370
    :goto_297
    return v4

    .line 1371
    :cond_298
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_2c7

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 1372
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 1378
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1379
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_2c5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x77d338ae

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v14, 0x0

    invoke-static {v4, v9, v12, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c6

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2c5
    const/4 v10, 0x1

    .line 1381
    :goto_2c6
    return v10

    .line 1387
    :cond_2c7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 1388
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1391
    :cond_2d2
    if-eqz v2, :cond_331

    if-eq v2, v6, :cond_331

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_331

    .line 1402
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v9, ", nowVisible="

    if-eqz v0, :cond_30d

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_30d

    .line 1404
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1405
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_331

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not waiting for visible to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_331

    .line 1410
    :cond_30d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_331

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_331
    :goto_331
    :try_start_331
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1421
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    .line 1422
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v10, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v11, 0x0

    invoke-interface {v0, v9, v11, v10}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_34a
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_34a} :catch_36d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_331 .. :try_end_34a} :catch_34b

    goto :goto_36e

    .line 1425
    :catch_34b
    move-exception v0

    .line 1426
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed trying to unstop package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36f

    .line 1424
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_36d
    move-exception v0

    .line 1428
    :goto_36e
    nop

    .line 1433
    :goto_36f
    const/4 v0, 0x1

    .line 1434
    .local v0, "anim":Z
    iget-object v9, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1438
    .local v9, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_414

    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_414

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v10, :cond_414

    .line 1440
    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_3c8

    .line 1441
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_39a

    .line 1442
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare close transition: prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_39a
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3aa

    .line 1445
    const/4 v0, 0x0

    .line 1446
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_3c1

    .line 1449
    :cond_3aa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eq v10, v11, :cond_3bd

    .line 1450
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/perf/PerfStub;->perfAnimBoost(Ljava/lang/String;)I

    .line 1453
    :cond_3bd
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 1455
    :goto_3c1
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v10, v0

    goto/16 :goto_433

    .line 1457
    :cond_3c8
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_3e2

    .line 1458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare open transition: prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_3e2
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f3

    .line 1461
    const/4 v0, 0x0

    .line 1462
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_433

    .line 1465
    :cond_3f3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eq v10, v11, :cond_406

    .line 1466
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/perf/PerfStub;->perfAnimBoost(Ljava/lang/String;)I

    .line 1469
    :cond_406
    nop

    .line 1470
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_40e

    const/16 v10, 0x20

    goto :goto_40f

    :cond_40e
    const/4 v10, 0x0

    .line 1469
    :goto_40f
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_432

    .line 1474
    :cond_414
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_41d

    const-string v10, "Prepare open transition: no previous"

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_41d
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42e

    .line 1476
    const/4 v0, 0x0

    .line 1477
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_433

    .line 1479
    :cond_42e
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 1483
    :goto_432
    move v10, v0

    .end local v0    # "anim":Z
    .local v10, "anim":Z
    :goto_433
    if-eqz v10, :cond_439

    .line 1484
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_43c

    .line 1486
    :cond_439
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1490
    :goto_43c
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_451

    .line 1491
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-interface {v0, v6, v11}, Lcom/android/server/wm/PreloadStateManagerStub;->resumeTopActivityInjector(Lcom/android/server/wm/ActivityRecord;Landroid/os/Handler;)V

    .line 1494
    :cond_451
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1496
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_6ce

    .line 1497
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_490

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resume running: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " stopped="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " visibleRequested="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4a3

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4a1

    .line 1510
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_4a1

    goto :goto_4a3

    :cond_4a1
    const/4 v0, 0x0

    goto :goto_4a4

    :cond_4a3
    :goto_4a3
    const/4 v0, 0x1

    :goto_4a4
    move v11, v0

    .line 1513
    .local v11, "lastActivityTranslucent":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_4af

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_4af

    if-eqz v11, :cond_4b8

    .line 1514
    :cond_4af
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1515
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1519
    :cond_4b8
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 1522
    if-nez v13, :cond_4bf

    const/4 v0, 0x0

    goto :goto_4c3

    .line 1523
    :cond_4bf
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_4c3
    move-object v15, v0

    .line 1524
    .local v15, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v2

    .line 1526
    .local v2, "lastState":Lcom/android/server/wm/ActivityRecord$State;
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1528
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_4ed

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v21, v5

    .end local v5    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v21, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    move/from16 v23, v7

    const/4 v5, 0x1

    .end local v7    # "pausing":Z
    .local v23, "pausing":Z
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v7, v5

    move-object/from16 v24, v0

    move-object/from16 v22, v8

    const v0, -0x54b744a8

    const/4 v8, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v22, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v24, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3, v0, v5, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4f3

    .end local v21    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "pausing":Z
    .end local v24    # "protoLogParam0":Ljava/lang/String;
    .restart local v5    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "pausing":Z
    .restart local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_4ed
    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v22, v8

    .line 1530
    .end local v5    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "pausing":Z
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v21    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "pausing":Z
    :goto_4f3
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Lcom/android/server/wm/MiuiMiPerfStub;->getInstance()Lcom/android/server/wm/MiuiMiPerfStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/wm/MiuiMiPerfStub;->onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 1538
    const/4 v0, 0x1

    .line 1542
    .local v0, "notUpdated":Z
    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_515

    .line 1551
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v5, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v3

    xor-int/2addr v3, v7

    move v0, v3

    goto :goto_516

    .line 1542
    :cond_515
    move v3, v0

    .line 1555
    .end local v0    # "notUpdated":Z
    .local v3, "notUpdated":Z
    :goto_516
    if-eqz v3, :cond_55a

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1562
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_53e

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x127f5f19

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v12, v14

    const/16 v16, 0x1

    aput-object v5, v12, v16

    move/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "notUpdated":Z
    .local v24, "notUpdated":Z
    invoke-static {v7, v8, v14, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_540

    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    .end local v24    # "notUpdated":Z
    .restart local v3    # "notUpdated":Z
    :cond_53e
    move/from16 v24, v3

    .line 1564
    .end local v3    # "notUpdated":Z
    .restart local v24    # "notUpdated":Z
    :goto_540
    if-eq v0, v6, :cond_547

    .line 1566
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 1568
    :cond_547
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_552

    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v3, :cond_550

    goto :goto_552

    :cond_550
    const/4 v3, 0x1

    goto :goto_556

    .line 1569
    :cond_552
    :goto_552
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1571
    :goto_556
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1572
    return v3

    .line 1576
    .end local v0    # "nextNext":Lcom/android/server/wm/ActivityRecord;
    .end local v24    # "notUpdated":Z
    .restart local v3    # "notUpdated":Z
    :cond_55a
    move/from16 v24, v3

    .end local v3    # "notUpdated":Z
    .restart local v24    # "notUpdated":Z
    :try_start_55c
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1577
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 1579
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1580
    .local v3, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v3, :cond_59f

    .line 1581
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1582
    .local v5, "size":I
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_59f

    if-lez v5, :cond_59f

    .line 1583
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v7, :cond_598

    .line 1584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering results to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_598
    invoke-static {v3}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1590
    .end local v5    # "size":I
    :cond_59f
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_5ad

    .line 1591
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1592
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v4

    .line 1591
    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1597
    :cond_5ad
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 1599
    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1600
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1599
    invoke-static {v4, v5, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 1602
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->onForegroundActivityChangedLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1604
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1605
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 1606
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1607
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1608
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v4

    .line 1609
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v5

    .line 1608
    invoke-static {v4, v5}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    .line 1607
    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1610
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1612
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_613

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x549b4288

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v14, v8

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v25, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    invoke-static {v5, v7, v8, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_615

    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v25    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v3    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_613
    move-object/from16 v25, v3

    .line 1615
    .end local v3    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v25    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_615
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_640

    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1616
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_640

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1618
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1619
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1617
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_640

    .line 1620
    invoke-static {}, Lcom/android/server/am/SystemPressureControllerStub;->getInstance()Lcom/android/server/am/SystemPressureControllerStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/SystemPressureControllerStub;->reclaimPage()V
    :try_end_640
    .catch Ljava/lang/Exception; {:try_start_55c .. :try_end_640} :catch_669

    .line 1643
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v25    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_640
    nop

    .line 1648
    :try_start_641
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_644
    .catch Ljava/lang/Exception; {:try_start_641 .. :try_end_644} :catch_648

    .line 1655
    nop

    .line 1656
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .end local v11    # "lastActivityTranslucent":Z
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v24    # "notUpdated":Z
    const/4 v4, 0x1

    goto/16 :goto_718

    .line 1649
    .restart local v2    # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .restart local v11    # "lastActivityTranslucent":Z
    .restart local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v24    # "notUpdated":Z
    :catch_648
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown during resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1653
    const-string/jumbo v3, "resume-exception"

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1654
    return v4

    .line 1623
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_669
    move-exception v0

    .line 1625
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_68b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x4c4c64b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v8, v14

    const/16 v16, 0x1

    aput-object v4, v8, v16

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .local v25, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5, v7, v14, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1627
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v25    # "protoLogParam0":Ljava/lang/String;
    :cond_68b
    const-string/jumbo v3, "resumeTopActivityInnerLocked"

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1630
    if-eqz v15, :cond_698

    .line 1631
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v15, v4, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1634
    :cond_698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting because process died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_6b7

    .line 1636
    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v3, 0x0

    goto :goto_6c7

    .line 1637
    :cond_6b7
    if-eqz v13, :cond_6c6

    .line 1638
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_6c4

    .line 1639
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_6c7

    .line 1638
    :cond_6c4
    const/4 v3, 0x0

    goto :goto_6c7

    .line 1637
    :cond_6c6
    const/4 v3, 0x0

    .line 1641
    :goto_6c7
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 1642
    return v5

    .line 1658
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .end local v11    # "lastActivityTranslucent":Z
    .end local v15    # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "pausing":Z
    .end local v24    # "notUpdated":Z
    .local v5, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "pausing":Z
    .restart local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_6ce
    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v22, v8

    const/4 v3, 0x0

    const/4 v5, 0x1

    .end local v5    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "pausing":Z
    .end local v8    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v21    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "pausing":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_6dd

    .line 1659
    iput-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_6fa

    .line 1662
    :cond_6dd
    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1664
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_6fa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_6fa
    :goto_6fa
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_712

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6eac4482

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_713

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_712
    const/4 v4, 0x1

    .line 1667
    :goto_713
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6, v4, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 1670
    :goto_718
    return v4

    .line 1198
    .end local v9    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v10    # "anim":Z
    .end local v13    # "lastFocusedRootTask":Lcom/android/server/wm/Task;
    .end local v18    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19    # "allPausedComplete":Z
    .end local v20    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v21    # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "pausing":Z
    :cond_719
    :goto_719
    const/4 v2, 0x0

    return v2
.end method

.method schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 12
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "pauseImmediately"    # Z
    .param p4, "autoEnteringPip"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 1858
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x16946990

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1860
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    :try_start_17
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userLeaving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p5}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1864
    invoke-static {v4, p2, v5, p3, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 1863
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_50

    .line 1872
    goto :goto_63

    .line 1866
    :catch_50
    move-exception v0

    .line 1868
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityTaskManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1869
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1870
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1871
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1873
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method

.method sendTaskFragmentInfoChanged()V
    .registers 3

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2653
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2654
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2656
    :cond_9
    return-void
.end method

.method setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V
    .registers 4
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "moveTogether"    # Z

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_5

    .line 419
    return-void

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 422
    if-eqz p1, :cond_11

    .line 423
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 424
    iput-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 425
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    .line 427
    :cond_11
    return-void
.end method

.method setDelayLastActivityRemoval(Z)V
    .registers 4
    .param p1, "delay"    # Z

    .line 2866
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_b

    .line 2867
    const-string v0, "ActivityTaskManager"

    const-string v1, "Set delaying last activity removal on a non-embedded TF."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 2870
    return-void
.end method

.method setMinDimensions(II)V
    .registers 5
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .line 2798
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2802
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 2803
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2804
    return-void

    .line 2799
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMiuiEmbedded(Z)V
    .registers 3
    .param p1, "miuiEmbedded"    # Z

    .line 3088
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/TaskFragmentStub;->setMiuiEmbedded(Z)V

    .line 3089
    return-void
.end method

.method setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "pausing"    # Lcom/android/server/wm/ActivityRecord;

    .line 529
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 530
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 500
    const-string/jumbo v0, "setResumedActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_b

    .line 502
    return-void

    .line 505
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_48

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResumedActivity taskFrag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_48
    if-eqz p1, :cond_55

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_55

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 515
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 516
    .local v0, "prevR":Lcom/android/server/wm/ActivityRecord;
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 518
    if-nez p1, :cond_72

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_72

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 519
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_72

    .line 521
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    goto :goto_79

    .line 522
    :cond_72
    if-eqz p1, :cond_79

    .line 523
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 525
    :cond_79
    :goto_79
    return-void
.end method

.method setScale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/TaskFragmentStub;->setScale(F)V

    .line 3086
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 2642
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2643
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_d

    .line 2644
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceUnchecked()V

    .line 2647
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentAppeared()V

    .line 2649
    :cond_d
    return-void
.end method

.method setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 454
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 455
    iput-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 456
    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method shouldDeferRemoval()Z
    .registers 3

    .line 2877
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2878
    return v1

    .line 2880
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isExitAnimationRunningSelfOrChild()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method shouldRemoveSelfOnLastChildRemoval()Z
    .registers 2

    .line 2815
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method shouldSleepActivities()Z
    .registers 3

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2094
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method shouldStartChangeTransition(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3a

    .line 2628
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2631
    .local v0, "endBounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {v2, v3, p1, v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->shouldTfStartChangeTransition(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 2632
    return v3

    .line 2636
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_38

    .line 2637
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v2, v4, :cond_39

    :cond_38
    move v1, v3

    .line 2636
    :cond_39
    return v1

    .line 2624
    .end local v0    # "endBounds":Landroid/graphics/Rect;
    :cond_3a
    :goto_3a
    return v1
.end method

.method sleepIfPossible(Z)Z
    .registers 12
    .param p1, "shuttingDown"    # Z

    .line 878
    const/4 v0, 0x1

    .line 879
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_26

    .line 881
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x3ae234a6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 882
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v1, "sleep"

    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 884
    const/4 v0, 0x0

    goto :goto_41

    .line 885
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_41

    .line 887
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x71fb40de

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 888
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_40
    const/4 v0, 0x0

    .line 891
    :cond_41
    :goto_41
    if-nez p1, :cond_6c

    .line 892
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->containsStoppingActivity()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 894
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v5, v1

    .local v5, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x27e5a3e1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1, v7, v3, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    .end local v5    # "protoLogParam0":J
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 898
    const/4 v0, 0x0

    .line 902
    :cond_6c
    if-eqz v0, :cond_71

    .line 903
    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 907
    :cond_71
    return v0
.end method

.method smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 643
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 644
    .local v0, "taskFragBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 647
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_2f

    .line 650
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v3

    .line 651
    .local v3, "minDimensions":Landroid/graphics/Point;
    if-nez v3, :cond_1d

    .line 652
    return v2

    .line 654
    :cond_1d
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 655
    .local v4, "minWidth":I
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 656
    .local v5, "minHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v6, v4, :cond_2d

    .line 657
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v5, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    .line 656
    :cond_2e
    return v2

    .line 648
    .end local v3    # "minDimensions":Landroid/graphics/Point;
    .end local v4    # "minWidth":I
    .end local v5    # "minHeight":I
    :cond_2f
    :goto_2f
    return v2
.end method

.method final startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "uiSleeping"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 22
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "reason"    # Ljava/lang/String;

    .line 1721
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_e

    .line 1722
    return v9

    .line 1725
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2d

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0xed3cc31

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v9

    aput-object v2, v5, v10

    invoke-static {v3, v4, v9, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1728
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_2d
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_64

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1730
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1735
    invoke-virtual {v6, v9, v8}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1738
    :cond_64
    iget-object v12, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1740
    .local v12, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v12, :cond_75

    .line 1741
    if-nez v8, :cond_74

    .line 1742
    const-string v0, "Trying to pause when nothing is resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1745
    :cond_74
    return v9

    .line 1748
    :cond_75
    if-ne v12, v8, :cond_7d

    .line 1749
    const-string v0, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return v9

    .line 1754
    :cond_7d
    sget-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_8c

    .line 1755
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1760
    :cond_8c
    iget-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v0, :cond_a9

    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current activity should not stop, activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    return v9

    .line 1766
    :cond_a9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_bd

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x390b96d7

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v2, v3, v9, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_bd
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1768
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1769
    iget-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_dc

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1770
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1771
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_dc
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v2, "startPausingLocked"

    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1776
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "pauseImmediately":Z
    const/4 v2, 0x0

    .line 1780
    .local v2, "shouldAutoPip":Z
    if-eqz v8, :cond_11c

    .line 1784
    const-string/jumbo v3, "shouldAutoPipWhilePausing"

    invoke-virtual {v12, v3, v7}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    .line 1786
    .local v3, "lastResumedCanPip":Z
    if-eqz v7, :cond_10b

    if-eqz v3, :cond_10b

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1787
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1788
    const/4 v2, 0x1

    move v13, v0

    move v14, v2

    goto :goto_11e

    .line 1789
    :cond_10b
    if-nez v3, :cond_11c

    .line 1792
    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_117

    move v4, v10

    goto :goto_118

    :cond_117
    move v4, v9

    :goto_118
    move v0, v4

    move v13, v0

    move v14, v2

    goto :goto_11e

    .line 1798
    .end local v3    # "lastResumedCanPip":Z
    :cond_11c
    move v13, v0

    move v14, v2

    .end local v0    # "pauseImmediately":Z
    .end local v2    # "shouldAutoPip":Z
    .local v13, "pauseImmediately":Z
    .local v14, "shouldAutoPip":Z
    :goto_11e
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 1799
    if-eqz v14, :cond_14c

    .line 1800
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v12, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    .line 1802
    .local v0, "didAutoPip":Z
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_14b

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    move v3, v0

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x41a8563f

    const/16 v15, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v1, v10

    invoke-static {v4, v5, v15, v11, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    .end local v0    # "didAutoPip":Z
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Z
    :cond_14b
    goto :goto_164

    .line 1805
    :cond_14c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move v3, v13

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_164

    .line 1809
    :cond_159
    iput-object v11, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1810
    iput-object v11, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1811
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1816
    :goto_164
    if-nez p2, :cond_173

    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_173

    .line 1817
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    .line 1821
    :cond_173
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19b

    .line 1826
    if-nez p2, :cond_17d

    .line 1827
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_18c

    .line 1829
    :cond_17d
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_18c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x61575dd9

    move-object v2, v11

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v11, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    :cond_18c
    :goto_18c
    if-eqz v13, :cond_192

    .line 1835
    invoke-virtual {v6, v9, v8}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1836
    return v9

    .line 1839
    :cond_192
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 1841
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1842
    return v10

    .line 1848
    :cond_19b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_1aa

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x26ad4e02

    move-object v2, v11

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v11, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1849
    :cond_1aa
    if-nez v8, :cond_1b1

    .line 1850
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1852
    :cond_1b1
    return v9
.end method

.method supportsEmbeddedWindow(I)Z
    .registers 7
    .param p1, "windowingMode"    # I

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2164
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_38

    if-ne v0, p0, :cond_a

    goto :goto_38

    .line 2166
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    const/4 v2, 0x6

    if-ne p1, v2, :cond_37

    .line 2168
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 2169
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopRunningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2170
    :cond_36
    return v3

    .line 2172
    :cond_37
    return v1

    .line 2164
    :cond_38
    :goto_38
    return v1
.end method

.method supportsMultiWindow()Z
    .registers 2

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 7
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2193
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2194
    return v1

    .line 2196
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2197
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_f

    .line 2198
    return v1

    .line 2200
    :cond_f
    if-nez p1, :cond_12

    .line 2201
    return v1

    .line 2203
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2205
    return v1

    .line 2208
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2209
    .local v1, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2210
    if-eqz v1, :cond_34

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    .line 2209
    :goto_35
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v2

    return v2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "focusableOnly"    # Z

    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "focusableOnly"    # Z
    .param p2, "includingEmbeddedTask"    # Z

    .line 1008
    if-eqz p1, :cond_18

    .line 1009
    if-eqz p2, :cond_e

    .line 1010
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1012
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_18
    if-eqz p2, :cond_24

    .line 1017
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_24
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 1186
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1190
    nop

    .line 1191
    return-void

    .line 1189
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1190
    throw v0
.end method

.method updateOrganizedTaskFragmentSurface()V
    .registers 2

    .line 2541
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_9

    goto :goto_2f

    .line 2544
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2545
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2548
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceUnchecked()V

    goto :goto_2e

    .line 2549
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2552
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceUnchecked()V

    .line 2554
    :cond_2e
    :goto_2e
    return-void

    .line 2542
    :cond_2f
    :goto_2f
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3069
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3070
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3071
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3072
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_19

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1b

    :cond_19
    const/16 v3, -0x2710

    :goto_1b
    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3073
    const-wide v3, 0x10900000003L

    if-eqz v2, :cond_35

    .line 3074
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3073
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 3074
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    :cond_35
    const-string v5, "TaskFragment"

    .line 3073
    :goto_37
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3075
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3076
    return-void
.end method
