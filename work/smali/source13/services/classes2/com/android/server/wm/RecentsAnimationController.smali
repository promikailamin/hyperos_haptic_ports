.class public Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;,
        Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;,
        Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
    }
.end annotation


# static fields
.field private static final FAILSAFE_DELAY:J = 0x3e8L

.field private static final LATENCY_TRACKER_LOG_DELAY_MS:J = 0x12cL

.field private static final MODE_UNKNOWN:I = -0x1

.field public static final REORDER_KEEP_IN_PLACE:I = 0x0

.field public static final REORDER_MOVE_TO_ORIGINAL_POSITION:I = 0x2

.field public static final REORDER_MOVE_TO_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field final mBackCallback:Landroid/window/IOnBackInvokedCallback;

.field private final mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

.field private mCancelDeferredWithScreenshot:Z

.field private mCancelOnNextTransitionStart:Z

.field private volatile mCanceled:Z

.field private final mController:Landroid/view/IRecentsAnimationController;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayId:I

.field private final mFailsafeRunnable:Ljava/lang/Runnable;

.field private mInputConsumerEnabled:Z

.field mIsAddingTaskToTargets:Z

.field private mLinkedToDeathOfRunner:Z

.field private mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

.field private mNavigationBarAttachedToApp:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCancelWithScreenshotReorderMode:I

.field private final mPendingNewTaskTargets:Landroid/util/IntArray;

.field private mPendingStart:Z

.field private final mPendingTaskAppears:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestDeferCancelUntilNextTransition:Z

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShouldAttachNavBarToAppDuringTransition:Z

.field final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTargetActivityType:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWillFinishToHome:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelDeferredWithScreenshot(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetActivityRecord(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpRect(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCancelOnNextTransitionStart(Lcom/android/server/wm/RecentsAnimationController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputConsumerEnabled(Lcom/android/server/wm/RecentsAnimationController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveTaskInternal(Lcom/android/server/wm/RecentsAnimationController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->removeTaskInternal(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 104
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 137
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 138
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 213
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    .line 255
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$3;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 475
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 476
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 477
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 478
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 479
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 480
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 481
    nop

    .line 482
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 483
    return-void
.end method

.method private attachNavigationBarToApp()V
    .registers 8

    .line 710
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 712
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_e

    goto/16 :goto_94

    .line 715
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_34

    .line 716
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 717
    .local v2, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 718
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 719
    nop

    .line 715
    .end local v2    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 721
    .restart local v2    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 725
    .end local v0    # "i":I
    .end local v2    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getNavigationBarWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 726
    .local v0, "navWindow":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_93

    if-eqz v0, :cond_93

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v2, :cond_43

    goto :goto_93

    .line 729
    :cond_43
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 730
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 731
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 732
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 733
    .local v3, "navSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 734
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 735
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 737
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v4

    .line 738
    .local v4, "imeContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 739
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_88

    .line 742
    :cond_82
    const v1, 0x7fffffff

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 744
    :goto_88
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v1, :cond_92

    .line 745
    iget v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 747
    :cond_92
    return-void

    .line 727
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "navSurfaceControl":Landroid/view/SurfaceControl;
    .end local v4    # "imeContainer":Lcom/android/server/wm/WindowContainer;
    :cond_93
    :goto_93
    return-void

    .line 713
    .end local v0    # "navWindow":Lcom/android/server/wm/WindowState;
    :cond_94
    :goto_94
    return-void
.end method

.method private cancelAnimation(IZLjava/lang/String;)V
    .registers 11
    .param p1, "reorderMode"    # I
    .param p2, "screenshot"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 944
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5af48e1b

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 945
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 946
    :try_start_1e
    iget-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v4, :cond_24

    .line 948
    monitor-exit v0

    return-void

    .line 950
    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 951
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 953
    if-eqz p2, :cond_80

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_80

    .line 954
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTasks()Landroid/util/ArrayMap;

    move-result-object v4

    .line 955
    .local v4, "snapshotMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;>;"
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 957
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_95

    if-nez v5, :cond_80

    .line 959
    :try_start_45
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 960
    .local v2, "taskIds":[I
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-array v3, v3, [Landroid/window/TaskSnapshot;

    .line 961
    .local v3, "snapshots":[Landroid/window/TaskSnapshot;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_56
    if-ltz v5, :cond_6d

    .line 962
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    aput v1, v2, v5

    .line 963
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskSnapshot;

    aput-object v1, v3, v5

    .line 961
    add-int/lit8 v5, v5, -0x1

    goto :goto_56

    .line 965
    .end local v5    # "i":I
    :cond_6d
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v2, v3}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_72} :catch_73
    .catchall {:try_start_45 .. :try_end_72} :catchall_95

    .line 968
    .end local v2    # "taskIds":[I
    .end local v3    # "snapshots":[Landroid/window/TaskSnapshot;
    goto :goto_7b

    .line 966
    :catch_73
    move-exception v1

    .line 967
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_74
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cancel recents animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7b
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 971
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_95

    return-void

    .line 980
    .end local v4    # "snapshotMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;>;"
    :cond_80
    :try_start_80
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v2, v2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_85} :catch_86
    .catchall {:try_start_80 .. :try_end_85} :catchall_95

    .line 983
    goto :goto_8e

    .line 981
    :catch_86
    move-exception v1

    .line 982
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_87
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to cancel recents animation"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8e
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v1, p1, v3}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 985
    monitor-exit v0

    .line 986
    return-void

    .line 985
    :catchall_95
    move-exception v1

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_95

    throw v1
.end method

.method private collectTaskRemoteAnimations(Lcom/android/server/wm/Task;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "mode"    # I
    .param p3, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 827
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 832
    .local v0, "recentTaskIds":Landroid/util/SparseBooleanArray;
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 848
    return-void
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 5

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_29

    .line 881
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 882
    .local v2, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    nop

    .line 883
    const/4 v3, -0x1

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    .line 884
    .local v3, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v3, :cond_23

    .line 885
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 887
    :cond_23
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 880
    .end local v2    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 890
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 13

    .line 894
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x5923e8a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_11
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 1254
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1255
    return v1

    .line 1253
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1258
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetOverWallpaper()Z
    .registers 2

    .line 1210
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    .line 1211
    const/4 v0, 0x0

    return v0

    .line 1213
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initialize$0(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "outList"    # Ljava/util/ArrayList;

    .line 512
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method static synthetic lambda$initialize$1(ILcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "type"    # I
    .param p1, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 541
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/WindowState;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 542
    return-void
.end method

.method static synthetic lambda$initialize$2(Lcom/android/server/wm/Task;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 540
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/AnimationAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method static synthetic lambda$initialize$3(ILcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "type"    # I
    .param p1, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 546
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/WindowState;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 547
    return-void
.end method

.method static synthetic lambda$initialize$4(Lcom/android/server/wm/Task;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 545
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/wm/AnimationAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method static synthetic lambda$startAnimation$5(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;
    .registers 2
    .param p0, "anim"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 684
    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_11

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 1145
    :cond_11
    return-void
.end method

.method private removeTaskInternal(I)Z
    .registers 7
    .param p1, "taskId"    # I

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3b

    .line 864
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 865
    .local v2, "target":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_38

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 866
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 867
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v3, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    .line 868
    .local v3, "taskIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_36

    .line 869
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->remove(I)V

    .line 871
    :cond_36
    const/4 v0, 0x1

    .line 872
    goto :goto_3b

    .line 861
    .end local v2    # "target":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "taskIndex":I
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 875
    .end local v1    # "i":I
    :cond_3b
    :goto_3b
    return v0
.end method

.method private screenshotRecentTasks()Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1042
    .local v0, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1043
    .local v1, "snapshotMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;>;"
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_36

    .line 1044
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 1045
    .local v3, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1046
    .local v4, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 1047
    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget v7, v4, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v6, v7, v5, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v5

    .line 1049
    .local v5, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v5, :cond_33

    .line 1050
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-virtual {v3, v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->setSnapshotOverlay(Landroid/window/TaskSnapshot;)V

    .line 1043
    .end local v3    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 1055
    .end local v2    # "i":I
    :cond_36
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 1056
    return-object v1
.end method

.method private skipAnimation(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 592
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    .line 593
    .local v0, "config":Landroid/app/WindowConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

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

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 1148
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_10

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1150
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 1152
    :cond_10
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;[F[IF)Lcom/android/server/wm/AnimationAdapter;
    .registers 21
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z
    .param p3, "hidden"    # Z
    .param p4, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p5, "matrix"    # [F
    .param p6, "crop"    # [I
    .param p7, "radius"    # F

    .line 619
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x120f4c9b

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 620
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z[F[IF)V

    .line 622
    .local v0, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/16 v5, 0x8

    move-object v1, p1

    move-object v3, v0

    move/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Task;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 624
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 625
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    return-object v0
.end method

.method addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z

    .line 598
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .registers 12
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z
    .param p3, "hidden"    # Z
    .param p4, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 605
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x120f4c9b

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 608
    .local v0, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/16 v5, 0x8

    move-object v1, p1

    move-object v3, v0

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Task;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 610
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 611
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-object v0
.end method

.method addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    if-eqz v0, :cond_28

    .line 801
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    .line 802
    if-nez p1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_14
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->skipAnimation(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_27

    .line 808
    :cond_23
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->collectTaskRemoteAnimations(Lcom/android/server/wm/Task;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_28

    .line 806
    :cond_27
    :goto_27
    return-void

    .line 810
    :cond_28
    :goto_28
    return-void
.end method

.method animateNavigationBarForAppLaunch(J)V
    .registers 6
    .param p1, "duration"    # J

    .line 785
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 787
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_15

    goto :goto_27

    .line 793
    :cond_15
    new-instance v0, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 795
    .local v0, "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

    .line 796
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 795
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeOutAndInSequentially(JLandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    .line 797
    return-void

    .line 790
    .end local v0    # "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    :cond_27
    :goto_27
    return-void
.end method

.method public binderDied()V
    .registers 4

    .line 1156
    const-string v0, "binderDied"

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1160
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 1161
    .local v1, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 1162
    nop

    .end local v1    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method cancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 915
    return-void
.end method

.method public cancelAnimationForDisplayChange()V
    .registers 4

    .line 939
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    const-string v2, "cancelAnimationForDisplayChange"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 941
    return-void
.end method

.method public cancelAnimationForHomeStart()V
    .registers 4

    .line 927
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_c

    .line 928
    move v0, v1

    goto :goto_d

    .line 929
    :cond_c
    const/4 v0, 0x0

    :goto_d
    nop

    .line 930
    .local v0, "reorderMode":I
    const-string v2, "cancelAnimationForHomeStart"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 931
    return-void
.end method

.method cancelAnimationWithScreenshot(Z)V
    .registers 4
    .param p1, "screenshot"    # Z

    .line 918
    const/4 v0, 0x0

    const-string/jumbo v1, "rootTaskOrderChanged"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 919
    return-void
.end method

.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .registers 4
    .param p1, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .line 1166
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_25

    .line 1167
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1168
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1169
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 1170
    .local v0, "wallpaperReady":Z
    :goto_1a
    if-eqz v0, :cond_25

    .line 1171
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 1174
    .end local v0    # "wallpaperReady":Z
    :cond_25
    return-void
.end method

.method cleanupAnimation(I)V
    .registers 15
    .param p1, "reorderMode"    # I

    .line 1060
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v5, v0

    .local v5, "protoLogParam0":J
    int-to-long v7, p1

    .local v7, "protoLogParam1":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x557b5a7e

    const/4 v10, 0x5

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v0, v9, v10, v1, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    .end local v5    # "protoLogParam0":J
    .end local v7    # "protoLogParam1":J
    :cond_27
    if-eq p1, v2, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1067
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->topRunningActivityExcludeFreeform()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eq v0, v5, :cond_3a

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->notifyRecentsWillBeTop()V

    .line 1072
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_41
    if-ltz v0, :cond_5f

    .line 1073
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 1074
    .local v5, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    if-eq p1, v4, :cond_4f

    if-nez p1, :cond_56

    .line 1075
    :cond_4f
    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 1077
    :cond_56
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 1078
    invoke-virtual {v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->onCleanup()V

    .line 1072
    .end local v5    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    .line 1081
    .end local v0    # "i":I
    :cond_5f
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_70
    if-ltz v0, :cond_80

    .line 1085
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 1086
    .local v5, "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentsAnimationController;->removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    .line 1084
    .end local v5    # "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_70

    .line 1089
    .end local v0    # "i":I
    :cond_80
    if-eq p1, v4, :cond_89

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-eqz v0, :cond_87

    goto :goto_89

    :cond_87
    move v0, v3

    goto :goto_8a

    :cond_89
    :goto_89
    move v0, v4

    :goto_8a
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController;->restoreNavigationBarFromApp(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1097
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    .line 1098
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 1099
    iput-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 1103
    if-ne p1, v2, :cond_b3

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-nez v0, :cond_b3

    .line 1104
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 1108
    :cond_b3
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    .line 1109
    .local v0, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    invoke-virtual {v0, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_cf

    .line 1114
    if-eq p1, v4, :cond_c4

    if-nez p1, :cond_cf

    .line 1115
    :cond_c4
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 1119
    :cond_cf
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onFinishRecentsAnimation()V

    .line 1122
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->onRecentAnimationEnd()V

    .line 1125
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v1, :cond_e2

    .line 1126
    invoke-interface {v1, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 1128
    :cond_e2
    return-void
.end method

.method continueDeferredCancelAnimation()V
    .registers 4

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 992
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputConsumerEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTargetActivityRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTargetOverWallpaper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRequestDeferCancelUntilNextTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelOnNextTransitionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelDeferredWithScreenshot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingCancelWithScreenshotReorderMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method forceCancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 906
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-nez v0, :cond_8

    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    goto :goto_b

    .line 909
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V

    .line 911
    :goto_b
    return-void
.end method

.method getBackInvokedInfo()Landroid/window/OnBackInvokedCallbackInfo;
    .registers 4

    .line 1224
    new-instance v0, Landroid/window/OnBackInvokedCallbackInfo;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;I)V

    return-object v0
.end method

.method getNavigationBarWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 706
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method getTargetAppDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    .line 1229
    const/4 v0, 0x0

    return-object v0

    .line 1231
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getTargetAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    .line 1218
    const/4 v0, 0x0

    return-object v0

    .line 1220
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "targetActivityType"    # I
    .param p2, "recentTaskIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 493
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;[F[IF)V

    .line 494
    return-void
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;[F[IF)V
    .registers 28
    .param p1, "targetActivityType"    # I
    .param p2, "recentTaskIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "matrix"    # [F
    .param p5, "crop"    # [I
    .param p6, "radius"    # F

    .line 500
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iput v10, v9, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 501
    iget-object v0, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 506
    iget-object v0, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 508
    .local v13, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v0, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 509
    const/4 v14, 0x0

    invoke-virtual {v0, v14, v10}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v15

    .line 510
    .local v15, "targetRootTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x1

    if-eqz v15, :cond_40

    .line 511
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 512
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 511
    invoke-static {v1, v2, v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 514
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v15, v1, v0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 515
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 519
    .end local v1    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_40
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCastStackId()I

    move-result v8

    .line 520
    .local v8, "castStackId":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 521
    .local v16, "taskCount":I
    add-int/lit8 v1, v16, -0x1

    move v7, v1

    .local v7, "i":I
    :goto_4d
    if-ltz v7, :cond_cf

    .line 522
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/wm/Task;

    .line 523
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v17

    .line 527
    .local v17, "config":Landroid/app/WindowConfiguration;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    if-ne v8, v1, :cond_62

    move v1, v0

    goto :goto_63

    :cond_62
    move v1, v14

    :goto_63
    move/from16 v18, v1

    .line 528
    .local v18, "isCastStack":Z
    invoke-direct {v9, v6}, Lcom/android/server/wm/RecentsAnimationController;->skipAnimation(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 529
    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 530
    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b7

    if-eqz v18, :cond_7f

    .line 531
    move/from16 v19, v7

    move/from16 v20, v8

    goto :goto_c8

    .line 538
    :cond_7f
    if-eqz p4, :cond_a1

    .line 539
    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda8;

    invoke-direct {v5, v6}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Task;)V

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v14, v6

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .local v14, "task":Lcom/android/server/wm/Task;
    move-object/from16 v6, p4

    move/from16 v19, v7

    .end local v7    # "i":I
    .local v19, "i":I
    move-object/from16 v7, p5

    move/from16 v20, v8

    .end local v8    # "castStackId":I
    .local v20, "castStackId":I
    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;[F[IF)Lcom/android/server/wm/AnimationAdapter;

    goto :goto_c8

    .line 544
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v19    # "i":I
    .end local v20    # "castStackId":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "i":I
    .restart local v8    # "castStackId":I
    :cond_a1
    move-object v14, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "i":I
    .end local v8    # "castStackId":I
    .restart local v14    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "i":I
    .restart local v20    # "castStackId":I
    iget v1, v14, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/2addr v1, v0

    new-instance v2, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda9;

    invoke-direct {v2, v14}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/Task;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v14, v1, v3, v2}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    goto :goto_c8

    .line 530
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v19    # "i":I
    .end local v20    # "castStackId":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "i":I
    .restart local v8    # "castStackId":I
    :cond_b7
    move-object v14, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "i":I
    .end local v8    # "castStackId":I
    .restart local v14    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "i":I
    .restart local v20    # "castStackId":I
    goto :goto_c8

    .line 529
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v19    # "i":I
    .end local v20    # "castStackId":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "i":I
    .restart local v8    # "castStackId":I
    :cond_bd
    move-object v14, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "i":I
    .end local v8    # "castStackId":I
    .restart local v14    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "i":I
    .restart local v20    # "castStackId":I
    goto :goto_c8

    .line 528
    .end local v14    # "task":Lcom/android/server/wm/Task;
    .end local v19    # "i":I
    .end local v20    # "castStackId":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "i":I
    .restart local v8    # "castStackId":I
    :cond_c3
    move-object v14, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .line 521
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "i":I
    .end local v8    # "castStackId":I
    .end local v17    # "config":Landroid/app/WindowConfiguration;
    .end local v18    # "isCastStack":Z
    .restart local v19    # "i":I
    .restart local v20    # "castStackId":I
    :goto_c8
    add-int/lit8 v7, v19, -0x1

    move/from16 v8, v20

    const/4 v14, 0x0

    .end local v19    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_4d

    .end local v20    # "castStackId":I
    .restart local v8    # "castStackId":I
    :cond_cf
    move/from16 v19, v7

    move/from16 v20, v8

    .line 553
    .end local v7    # "i":I
    .end local v8    # "castStackId":I
    .restart local v20    # "castStackId":I
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e2

    .line 554
    const-string v0, "initialize-noVisibleTasks"

    invoke-virtual {v9, v2, v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 555
    return-void

    .line 559
    :cond_e2
    :try_start_e2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_e5} :catch_12e

    .line 563
    nop

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimationController;->attachNavigationBarToApp()V

    .line 568
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_103

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5a95a778

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 570
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_103
    iput-object v12, v9, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 571
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v1

    if-eqz v1, :cond_118

    .line 572
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 573
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 576
    :cond_118
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 578
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V

    .line 581
    iget-object v1, v9, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v1, :cond_12d

    .line 582
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 584
    :cond_12d
    return-void

    .line 560
    :catch_12e
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "initialize-failedToLinkToDeath"

    invoke-virtual {v9, v2, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 562
    return-void
.end method

.method isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1236
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_19

    .line 1237
    return v1

    .line 1235
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1240
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isAnimatingWallpaper(Lcom/android/server/wm/WallpaperWindowToken;)Z
    .registers 5
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1245
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-ne p1, v2, :cond_19

    .line 1246
    return v1

    .line 1244
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1249
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isNavigationBarAttachedToApp()Z
    .registers 2

    .line 701
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    return v0
.end method

.method isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1177
    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_2a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_1d

    .line 1179
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1180
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1177
    :goto_2b
    return v0
.end method

.method synthetic lambda$collectTaskRemoteAnimations$6$com-android-server-wm-RecentsAnimationController(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/Task;)V
    .registers 14
    .param p1, "recentTaskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p3, "mode"    # I
    .param p4, "leafTask"    # Lcom/android/server/wm/Task;

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 834
    return-void

    .line 836
    :cond_8
    iget v1, p4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 837
    .local v1, "taskId":I
    nop

    .line 838
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 837
    invoke-virtual {p0, p4, v2, v3, p2}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object v2

    .line 839
    .local v2, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->add(I)V

    .line 840
    nop

    .line 841
    invoke-virtual {v2, v1, p3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    .line 842
    .local v4, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v4, :cond_3b

    .line 843
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_3b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x449bfa48

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v3, v8

    invoke-static {v6, v7, v8, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 847
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_3b
    return-void
.end method

.method synthetic lambda$createWallpaperAnimations$8$com-android-server-wm-RecentsAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 897
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 902
    return-void

    .line 901
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$logRecentsAnimationStartTime$7$com-android-server-wm-RecentsAnimationController(I)V
    .registers 4
    .param p1, "durationMs"    # I

    .line 852
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-nez v0, :cond_d

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 856
    :cond_d
    return-void
.end method

.method linkFixedRotationTransformIfNeeded(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowToken;

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 1274
    return-void

    .line 1276
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 1277
    return-void
.end method

.method logRecentsAnimationStartTime(I)V
    .registers 6
    .param p1, "durationMs"    # I

    .line 851
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/RecentsAnimationController;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    return-void
.end method

.method onFailsafe()V
    .registers 3

    .line 1135
    nop

    .line 1136
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    .line 1135
    :goto_8
    const-string/jumbo v1, "onFailsafe"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    .line 1138
    return-void
.end method

.method removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .registers 11
    .param p1, "taskAdapter"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 632
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x500facd

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 634
    .end local v0    # "protoLogParam0":J
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->onRemove()V

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 7
    .param p1, "wallpaperAdapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 640
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x696a0b14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 641
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    .line 642
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v1

    .line 641
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method restoreNavigationBarFromApp(Z)V
    .registers 9
    .param p1, "animate"    # Z

    .line 751
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_5

    .line 752
    return-void

    .line 754
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 756
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 757
    iget v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 760
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getNavigationBarWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 761
    .local v1, "navWindow":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_19

    .line 762
    return-void

    .line 764
    :cond_19
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 766
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 767
    .local v0, "navToken":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_21

    .line 768
    return-void

    .line 770
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 771
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 772
    .local v4, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getLastLayer()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 774
    if-eqz p1, :cond_43

    .line 775
    new-instance v5, Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v5, v6}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 777
    .local v5, "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    invoke-virtual {v5, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 778
    .end local v5    # "controller":Lcom/android/server/wm/NavBarFadeAnimationController;
    goto :goto_4e

    .line 780
    :cond_43
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 782
    :goto_4e
    return-void
.end method

.method scheduleFailsafe()V
    .registers 5

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1132
    return-void
.end method

.method sendTasksAppeared()V
    .registers 4

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    if-nez v0, :cond_d

    goto :goto_2c

    .line 815
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 817
    .local v0, "targets":[Landroid/view/RemoteAnimationTarget;
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v0}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    .line 818
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    .line 821
    .end local v0    # "targets":[Landroid/view/RemoteAnimationTarget;
    goto :goto_2b

    .line 819
    :catch_23
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to report task appeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void

    .line 813
    :cond_2c
    :goto_2c
    return-void
.end method

.method setCancelOnNextTransitionStart()V
    .registers 2

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 1010
    return-void
.end method

.method setDeferredCancel(ZZ)V
    .registers 3
    .param p1, "defer"    # Z
    .param p2, "screenshot"    # Z

    .line 1019
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 1020
    iput-boolean p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    .line 1021
    return-void
.end method

.method setWillFinishToHome(Z)V
    .registers 2
    .param p1, "willFinishToHome"    # Z

    .line 996
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 997
    return-void
.end method

.method shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1190
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1190
    :goto_15
    return v0
.end method

.method shouldDeferCancelUntilNextTransition()Z
    .registers 2

    .line 1028
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    return v0
.end method

.method shouldDeferCancelWithScreenshot()Z
    .registers 2

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1262
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1263
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method startAnimation()V
    .registers 13

    .line 647
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .local v0, "protoLogParam0":Z
    iget-boolean v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .local v5, "protoLogParam1":Z
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x10e05f4

    const/16 v8, 0xf

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 649
    .end local v0    # "protoLogParam0":Z
    .end local v5    # "protoLogParam1":Z
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_d1

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_2e

    goto/16 :goto_d1

    .line 655
    :cond_2e
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 658
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v5, v0

    if-nez v5, :cond_3c

    .line 659
    const-string/jumbo v2, "startAnimation-noAppWindows"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 660
    return-void

    .line 664
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    .line 666
    .local v8, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    iput-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 669
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 670
    .local v1, "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_61

    .line 671
    nop

    .line 672
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 673
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v7

    invoke-virtual {v5, v6, v7, v4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    .line 674
    invoke-virtual {v5}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v5

    move-object v11, v5

    .local v5, "contentInsets":Landroid/graphics/Rect;
    goto :goto_6d

    .line 677
    .end local v5    # "contentInsets":Landroid/graphics/Rect;
    :cond_61
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 678
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    move-object v11, v5

    .line 680
    .local v11, "contentInsets":Landroid/graphics/Rect;
    :goto_6d
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    const/4 v10, 0x0

    move-object v7, v0

    move-object v9, v11

    invoke-interface/range {v5 .. v10}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 683
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->onHoverModeRecentAnimStart()V

    .line 684
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_a7

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x47fceb0f

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v4

    invoke-static {v6, v7, v4, v2, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_a7} :catch_a8

    .line 690
    .end local v0    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v11    # "contentInsets":Landroid/graphics/Rect;
    :cond_a7
    goto :goto_b0

    .line 688
    :catch_a8
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_d0

    .line 693
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 694
    .local v0, "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    .line 696
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 698
    .end local v0    # "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    :cond_d0
    return-void

    .line 651
    :cond_d1
    :goto_d1
    return-void
.end method

.method updateInputConsumerForApp(Landroid/view/InputWindowHandle;)Z
    .registers 5
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;

    .line 1196
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1197
    .local v0, "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_14

    .line 1198
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 1199
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1200
    const/4 v1, 0x1

    return v1

    .line 1202
    :cond_14
    const/4 v1, 0x0

    return v1
.end method
