.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/RootDisplayArea;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;,
        Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;,
        Lcom/android/server/wm/DisplayContent$ImeContainer;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;,
        Lcom/android/server/wm/DisplayContent$ImeScreenshot;,
        Lcom/android/server/wm/DisplayContent$InputMethodTarget;,
        Lcom/android/server/wm/DisplayContent$ForceScalingMode;
    }
.end annotation


# static fields
.field private static final FIXED_ROTATION_HIDE_ANIMATION_DEBOUNCE_DELAY_MS:J = 0xfaL

.field static final FORCE_SCALING_MODE_AUTO:I = 0x0

.field static final FORCE_SCALING_MODE_DISABLED:I = 0x1

.field static final IME_TARGET_CONTROL:I = 0x2

.field static final IME_TARGET_LAYERING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field static mFreeFormWindowShowed:Z


# instance fields
.field isDefaultDisplay:Z

.field private mActiveSizeCompatActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field final mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBaseDisplayCutout:Landroid/view/DisplayCutout;

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayPhysicalXDpi:F

.field mBaseDisplayPhysicalYDpi:F

.field mBaseDisplayWidth:I

.field mBaseRoundedCorners:Landroid/view/RoundedCorners;

.field final mChangingContainers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mCloseToSquareMaxAspectRatio:F

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContentRecorder:Lcom/android/server/wm/ContentRecorder;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field private mCurrentOverrideConfigurationChanges:I

.field mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field mCurrentUniqueDisplayId:Ljava/lang/String;

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field final mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

.field private final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

.field final mDisplayId:I

.field protected final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private mDisplayReady:Z

.field private final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field mDisplayScalingDisabled:Z

.field protected mDisplaySwappedInProgress:Z

.field private mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

.field mDontMoveToTop:Z

.field mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

.field mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

.field mFocusedApp:Lcom/android/server/wm/ActivityRecord;

.field private mHideDisplayCutoutLayer:Landroid/view/SurfaceControl;

.field mIgnoreDisplayCutout:Z

.field private mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mImeInputTarget:Lcom/android/server/wm/InputTarget;

.field mImeLayeringTarget:Lcom/android/server/wm/WindowState;

.field mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

.field private final mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

.field private mInEnsureActivitiesVisible:Z

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInitialPhysicalXDpi:F

.field mInitialPhysicalYDpi:F

.field mInitialRoundedCorners:Landroid/view/RoundedCorners;

.field mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field private mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field private final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field mIsDensityForced:Z

.field mIsSizeForced:Z

.field private mLastHasContent:Z

.field private mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

.field private mLastWallpaperVisible:Z

.field mLayoutAndAssignWindowLayersScheduled:Z

.field private mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMaxUiWidth:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field mMinSizeOfResizeableTaskDp:I

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mOverlayLayer:Landroid/view/SurfaceControl;

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalDisplaySize:Landroid/graphics/Point;

.field final mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field private final mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/PrivacyIndicatorBounds;",
            "Landroid/view/PrivacyIndicatorBounds;",
            ">;"
        }
    .end annotation
.end field

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

.field private final mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

.field private mRemoved:Z

.field private mRemoving:Z

.field private mRestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/RoundedCorners;",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field private mSandboxDisplayApis:Z

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field private final mSession:Landroid/view/SurfaceSession;

.field final mShellRoots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;"
        }
    .end annotation
.end field

.field mSkipAppTransitionAnimation:Z

.field private mSleeping:Z

.field private final mSystemGestureExclusion:Landroid/graphics/Region;

.field private mSystemGestureExclusionLimit:I

.field private final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ISystemGestureExclusionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field private mSystemGestureExclusionWasRestricted:Z

.field final mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempConfig:Landroid/content/res/Configuration;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private mTmpInitial:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mUnrestrictedKeepClearAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateImeRequestedWhileDeferred:Z

.field private mUpdateImeTarget:Z

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForConfig:Z

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field mWallpaperMayChange:Z

.field final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowCornerRadius:F

.field private mWindowingLayer:Landroid/view/SurfaceControl;

.field pendingLayoutChanges:I


# direct methods
.method public static synthetic $r8$lambda$Kk8EpGJGDafGLHbI1jJcpzVaiiQ(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UVgWT8LknO8Z1a1KxsBBhrIpkMs(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zo2ftLMujZma5SLI7YLzy3fA25o(Lcom/android/server/wm/DisplayContent;Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f4tTlChocR4giHzOfORjysIyw_g(Lcom/android/server/wm/DisplayContent;Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uekS_jelz0nfzqiQ_YsMay2Q9CA(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 687
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->mFreeFormWindowShowed:Z

    return-void
.end method

.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V
    .registers 15
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "root"    # Lcom/android/server/wm/RootWindowContainer;

    .line 1192
    iget-object v0, p2, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "DisplayContent"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 351
    new-instance v0, Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 363
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 365
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 366
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 367
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    .line 382
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 383
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 384
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 386
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 391
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v3}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 396
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v3}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 399
    new-instance v1, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v1}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 400
    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v3}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    .line 409
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 410
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 413
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    .line 427
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 428
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 433
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 434
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 444
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 445
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 452
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    .line 454
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 455
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 456
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    .line 459
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 460
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 466
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 469
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 475
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 493
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 517
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 520
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 521
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    .line 522
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    .line 524
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 532
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .line 534
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    .line 536
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    .line 538
    new-instance v4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 540
    new-instance v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState-IA;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 544
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 548
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 550
    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    .line 556
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 563
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 570
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 586
    new-instance v4, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 596
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 603
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 689
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    .line 690
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 691
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    .line 701
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 704
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 720
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    .line 723
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 726
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    .line 732
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 754
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    .line 770
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    .line 781
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    .line 870
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    .line 946
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    .line 977
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    .line 983
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    .line 987
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    .line 1193
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_36a

    .line 1200
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1201
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1202
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1203
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1204
    invoke-virtual {p1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 1205
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    .line 1206
    new-instance v4, Lcom/android/server/wm/WallpaperController;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, p0}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1207
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1208
    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1209
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v4, v4, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v4, v3

    div-int/lit16 v4, v4, 0xa0

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 1211
    if-nez v10, :cond_1ef

    move v2, v1

    :cond_1ef
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1212
    new-instance v2, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 1213
    new-instance v11, Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1214
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v7

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1215
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v8

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1216
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v9

    move-object v3, v11

    move v4, v10

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    iput-object v11, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1218
    new-instance v5, Landroid/view/InsetsState;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    invoke-direct {v5, v3, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 1219
    .local v5, "insetsForNoCutout":Landroid/view/InsetsState;
    new-instance v1, Lcom/android/server/wm/DisplayFrames;

    sget-object v7, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1221
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v8

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1222
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 1225
    new-instance v0, Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, v3, p0}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1226
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1227
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1228
    new-instance v0, Lcom/android/server/wm/AppTransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/AppTransitionController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1230
    new-instance v0, Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 1231
    new-instance v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 1234
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PointerEventDispatcher"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object v0

    .line 1236
    .local v0, "inputChannel":Landroid/view/InputChannel;
    new-instance v1, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v1, v0}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1241
    new-instance v1, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v3, p0}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    .line 1242
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1243
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1245
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTouchEventTracker:Lcom/android/server/wm/WindowManagerService$TouchEventTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1246
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    if-eqz v1, :cond_2ca

    .line 1247
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1248
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    .line 1247
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 1251
    :cond_2ca
    new-instance v1, Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v3, p0}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1252
    new-instance v3, Lcom/android/server/wm/DisplayRotation;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1253
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    .line 1255
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_2f8

    .line 1258
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V

    .line 1260
    :cond_2f8
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_301

    .line 1261
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1263
    :cond_301
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v3, :cond_30a

    .line 1264
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 1268
    :cond_30a
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getMiuiWindowCornerRadius()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 1269
    new-instance v1, Lcom/android/server/wm/DockedTaskDividerController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DockedTaskDividerController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 1270
    new-instance v1, Lcom/android/server/wm/PinnedTaskController;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v3, p0}, Lcom/android/server/wm/PinnedTaskController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1273
    .local v1, "pendingTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1274
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1277
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAreaOrganizers()V

    .line 1280
    new-instance v3, Lcom/android/server/wm/InputMonitor;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 1281
    new-instance v3, Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/InsetsPolicy;-><init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 1282
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 1283
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v2, :cond_362

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_362
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1285
    return-void

    .line 1194
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    .end local v1    # "pendingTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v5    # "insetsForNoCutout":Landroid/view/InsetsState;
    :cond_36a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1196
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addActivityUid(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 6714
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 6715
    return-void
.end method

.method private static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .registers 12
    .param p0, "local"    # Landroid/graphics/Region;
    .param p1, "global"    # Landroid/graphics/Region;
    .param p2, "edge"    # Landroid/graphics/Rect;
    .param p3, "limit"    # I
    .param p4, "win"    # Lcom/android/server/wm/WindowState;
    .param p5, "side"    # I

    .line 6159
    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 6160
    .local v0, "r":Landroid/graphics/Region;
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6162
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    .line 6163
    .local v2, "remaining":[I
    new-array v1, v1, [I

    aput v3, v1, v3

    .line 6164
    .local v1, "requestedExclusion":[I
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;

    invoke-direct {v4, v2, v1, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda40;-><init>([I[ILandroid/graphics/Region;)V

    invoke-static {v0, v4}, Lcom/android/server/wm/utils/RegionUtils;->forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 6177
    aget v4, v2, v3

    sub-int v4, p3, v4

    .line 6178
    .local v4, "grantedExclusion":I
    aget v5, v1, v3

    invoke-virtual {p4, p5, v5, v4}, Lcom/android/server/wm/WindowState;->setLastExclusionHeights(III)V

    .line 6180
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 6181
    aget v3, v2, v3

    return v3
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V
    .registers 14
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I

    .line 2705
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2706
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2707
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 2709
    .local v7, "width":I
    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v7, v1, :cond_19

    .line 2710
    iput v7, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2712
    :cond_19
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v7, v1, :cond_1f

    .line 2713
    iput v7, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2715
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2717
    .local v1, "height":I
    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_30

    .line 2718
    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2720
    :cond_30
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_36

    .line 2721
    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2723
    :cond_36
    return-void
.end method

.method static alwaysCreateRootTask(II)Z
    .registers 4
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I

    .line 6299
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    if-eq p0, v0, :cond_12

    const/4 v1, 0x5

    if-eq p0, v1, :cond_12

    const/4 v1, 0x2

    if-eq p0, v1, :cond_12

    const/16 v1, 0x65

    if-eq p0, v1, :cond_12

    const/4 v1, 0x6

    if-ne p0, v1, :cond_13

    :cond_12
    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private amendWindowTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 6
    .param p1, "inOutRegion"    # Landroid/graphics/Region;

    .line 3488
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3489
    .local v0, "region":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_21

    .line 3490
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3491
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3492
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3489
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3494
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 3495
    return-void
.end method

.method private applyRotation(II)V
    .registers 11
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I

    .line 2240
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayRotation;->applyCurrentRotation(I)V

    .line 2241
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 2242
    .local v0, "shellTransitions":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2243
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v0, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 2245
    .local v3, "rotateSeamlessly":Z
    :goto_1f
    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 2246
    .local v4, "transaction":Landroid/view/SurfaceControl$Transaction;
    :goto_2a
    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    .line 2247
    move-object v6, v5

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v6

    .line 2253
    .local v6, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    .line 2257
    if-eqz v6, :cond_47

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2258
    invoke-virtual {v6, v4, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 2261
    :cond_47
    if-nez v0, :cond_56

    .line 2262
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;

    invoke-direct {v5, v4, p1, p2, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;-><init>(Landroid/view/SurfaceControl$Transaction;IIZ)V

    invoke-virtual {p0, v5, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2265
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v5, v4, p1, p2}, Lcom/android/server/wm/PinnedTaskController;->startSeamlessRotationIfNeeded(Landroid/view/SurfaceControl$Transaction;II)V

    .line 2268
    :cond_56
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 2271
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 2272
    invoke-interface {v5, v7, p2, v2, v1}, Lcom/android/server/wm/MiuiOrientationStub;->update3appCameraWhenRotateOrFold(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2275
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-interface {v1, v5, p2}, Lcom/android/server/wm/DisplayContentStub;->reportDisplayRotationChanged(II)V

    .line 2278
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;

    invoke-direct {v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2291
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_85
    if-ltz v1, :cond_a1

    .line 2292
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 2293
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 2294
    .local v2, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget v5, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v7, :cond_9e

    .line 2296
    :try_start_97
    iget-object v5, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5, p2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9c} :catch_9d

    .line 2299
    goto :goto_9e

    .line 2297
    :catch_9d
    move-exception v5

    .line 2291
    .end local v2    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_9e
    :goto_9e
    add-int/lit8 v1, v1, -0x1

    goto :goto_85

    .line 2302
    .end local v1    # "i":I
    :cond_a1
    return-void
.end method

.method private applyRotationAndFinishFixedRotation(II)V
    .registers 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 6554
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 6555
    .local v0, "rotatedLaunchingApp":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_8

    .line 6556
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    .line 6557
    return-void

    .line 6561
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->cancelAppAnimationIfNeeded()V

    .line 6562
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    .line 6564
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 6565
    return-void
.end method

.method private assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "forceUpdate"    # Z

    .line 5659
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5660
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_13

    .line 5661
    const-string v0, "WindowManager"

    const-string v1, "ImeContainer is organized. Skip assignRelativeLayerForIme."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    :cond_13
    return-void

    .line 5668
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 5669
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 5682
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5683
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 5685
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 5686
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    .line 5687
    .local v2, "imeControlTargetToken":Lcom/android/server/wm/WindowToken;
    :goto_3e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_50

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v2, :cond_50

    .line 5689
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_50

    move v3, v1

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    .line 5690
    .local v3, "canImeTargetSetRelativeLayer":Z
    :goto_51
    if-eqz v3, :cond_5d

    .line 5691
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    .line 5695
    return-void

    .line 5698
    .end local v2    # "imeControlTargetToken":Lcom/android/server/wm/WindowToken;
    .end local v3    # "canImeTargetSetRelativeLayer":Z
    :cond_5d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_66

    .line 5702
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v3, p1, v2, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    .line 5704
    :cond_66
    return-void
.end method

.method private attachAndShowImeScreenshotOnTarget()V
    .registers 5

    .line 4681
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    .line 4682
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_44

    .line 4687
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 4689
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4693
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 4694
    new-instance v1, Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    const/4 v3, 0x0

    .line 4695
    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;-><init>(Landroid/view/SurfaceControl$Builder;Lcom/android/server/wm/WindowState;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 4696
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->attachAndShow(Landroid/view/SurfaceControl$Transaction;)V

    .line 4698
    :cond_43
    return-void

    .line 4684
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_44
    :goto_44
    return-void
.end method

.method static calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 10
    .param p0, "cutout"    # Landroid/view/DisplayCutout;
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .line 2379
    if-eqz p0, :cond_30

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_7

    goto :goto_30

    .line 2382
    :cond_7
    if-nez p1, :cond_e

    .line 2383
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0

    .line 2386
    :cond_e
    nop

    .line 2387
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    .line 2388
    .local v1, "rotatedCutout":Landroid/view/DisplayCutout;
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1a

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1b

    :cond_1a
    move v0, v2

    .line 2389
    .local v0, "rotated":Z
    :cond_1b
    new-instance v2, Lcom/android/server/wm/utils/WmDisplayCutout;

    new-instance v3, Landroid/util/Size;

    .line 2390
    if-eqz v0, :cond_23

    move v4, p3

    goto :goto_24

    :cond_23
    move v4, p2

    .line 2391
    :goto_24
    if-eqz v0, :cond_28

    move v5, p2

    goto :goto_29

    :cond_28
    move v5, p3

    :goto_29
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v2, v1, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    .line 2389
    return-object v2

    .line 2380
    .end local v0    # "rotated":Z
    .end local v1    # "rotatedCutout":Landroid/view/DisplayCutout;
    :cond_30
    :goto_30
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 5
    .param p1, "cutout"    # Landroid/view/DisplayCutout;
    .param p2, "rotation"    # I

    .line 2396
    nop

    .line 2397
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_a

    :cond_8
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2398
    :goto_a
    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_11

    :cond_f
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2396
    :goto_11
    invoke-static {p1, p2, v1, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationAndDisplaySizeUncached(Landroid/view/DisplayCutout;III)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method private calculatePrivacyIndicatorBoundsForRotationUncached(Landroid/view/PrivacyIndicatorBounds;I)Landroid/view/PrivacyIndicatorBounds;
    .registers 5
    .param p1, "bounds"    # Landroid/view/PrivacyIndicatorBounds;
    .param p2, "rotation"    # I

    .line 2428
    if-nez p1, :cond_b

    .line 2429
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Rect;

    invoke-direct {v0, v1, p2}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    return-object v0

    .line 2432
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/PrivacyIndicatorBounds;->rotate(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    return-object v0
.end method

.method private calculateRoundedCornersForRotationUncached(Landroid/view/RoundedCorners;I)Landroid/view/RoundedCorners;
    .registers 5
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;
    .param p2, "rotation"    # I

    .line 2408
    if-eqz p1, :cond_20

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 2412
    :cond_7
    if-nez p2, :cond_a

    .line 2413
    return-object p1

    .line 2416
    :cond_a
    nop

    .line 2418
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_14

    :cond_12
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 2419
    :goto_14
    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1b

    :cond_19
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 2416
    :goto_1b
    invoke-virtual {p1, p2, v1, v0}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0

    .line 2409
    :cond_20
    :goto_20
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .registers 2

    .line 5763
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private cancelAppAnimationIfNeeded()V
    .registers 7

    .line 6569
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 6570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishFixedRotation still animating "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 6573
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    .line 6574
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 6575
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "finishFixedRotation cancelAnimation "

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 6576
    .local v2, "animatingContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 6577
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v5}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 6578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    .end local v2    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :cond_73
    goto :goto_46

    .line 6581
    :cond_74
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 6582
    .restart local v2    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 6583
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v5}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 6584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6586
    .end local v2    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :cond_a7
    goto :goto_7c

    .line 6589
    .end local v0    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_a8
    return-void
.end method

.method private clearFixedRotationLaunchingApp()V
    .registers 2

    .line 2090
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 2091
    return-void

    .line 2093
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 2094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2095
    return-void
.end method

.method private clearLayoutNeeded()V
    .registers 3

    .line 4882
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 4884
    return-void
.end method

.method private computeCompatSmallestWidth(ZIII)I
    .registers 16
    .param p1, "rotated"    # Z
    .param p2, "uiMode"    # I
    .param p3, "dw"    # I
    .param p4, "dh"    # I

    .line 2607
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2608
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2610
    .local v0, "tmpDm":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_f

    .line 2611
    move v1, p4

    .line 2612
    .local v1, "unrotDw":I
    move v2, p3

    move v9, v2

    .local v2, "unrotDh":I
    goto :goto_12

    .line 2614
    .end local v1    # "unrotDw":I
    .end local v2    # "unrotDh":I
    :cond_f
    move v1, p3

    .line 2615
    .restart local v1    # "unrotDw":I
    move v2, p4

    move v9, v2

    .line 2617
    .local v9, "unrotDh":I
    :goto_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p2

    move-object v6, v0

    move v7, v1

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2619
    .local v10, "sw":I
    const/4 v4, 0x1

    move v3, v10

    move v7, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2621
    const/4 v4, 0x2

    move v3, v10

    move v7, v1

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v10

    .line 2623
    const/4 v4, 0x3

    move v3, v10

    move v7, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I

    move-result v2

    .line 2625
    .end local v10    # "sw":I
    .local v2, "sw":I
    return v2
.end method

.method private computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V
    .registers 24
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "rotation"    # I
    .param p5, "uiMode"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v12

    .line 2469
    .local v12, "appWidth":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v13

    .line 2471
    .local v13, "appHeight":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v10, v11, v3}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2472
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    .line 2473
    .local v14, "leftInset":I
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->top:I

    .line 2475
    .local v15, "topInset":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v3, v14, v12

    add-int v4, v15, v13

    invoke-virtual {v2, v14, v15, v3, v4}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 2477
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v10}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 2478
    const/4 v7, 0x1

    if-gt v8, v9, :cond_44

    move v2, v7

    goto :goto_45

    :cond_44
    const/4 v2, 0x2

    :goto_45
    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2480
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    .line 2481
    .local v6, "density":F
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v16, v6

    .end local v6    # "density":F
    .local v16, "density":F
    move/from16 v6, p5

    move v11, v7

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2483
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v16

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2485
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2486
    iget v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2488
    if-eq v10, v11, :cond_8a

    const/4 v2, 0x3

    if-ne v10, v2, :cond_88

    goto :goto_8a

    :cond_88
    const/4 v7, 0x0

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v7, v11

    :goto_8b
    move v2, v7

    .line 2489
    .local v2, "rotated":Z
    move/from16 v3, p5

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIII)I

    move-result v4

    iput v4, v1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2490
    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v10}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 2491
    return-void
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V
    .registers 25
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotated"    # Z
    .param p3, "uiMode"    # I
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "density"    # F
    .param p7, "outConfig"    # Landroid/content/res/Configuration;

    .line 2652
    move-object/from16 v6, p1

    move-object/from16 v7, p7

    if-eqz p2, :cond_e

    .line 2653
    move/from16 v0, p5

    .line 2654
    .local v0, "unrotDw":I
    move/from16 v1, p4

    move v15, v0

    move/from16 v16, v1

    .local v1, "unrotDh":I
    goto :goto_15

    .line 2656
    .end local v0    # "unrotDw":I
    .end local v1    # "unrotDh":I
    :cond_e
    move/from16 v0, p4

    .line 2657
    .restart local v0    # "unrotDw":I
    move/from16 v1, p5

    move v15, v0

    move/from16 v16, v1

    .line 2659
    .end local v0    # "unrotDw":I
    .local v15, "unrotDw":I
    .local v16, "unrotDh":I
    :goto_15
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 2660
    iput v0, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2661
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 2662
    iput v0, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2663
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2664
    const/4 v2, 0x1

    move/from16 v4, v16

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2665
    const/4 v2, 0x2

    move v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2666
    const/4 v2, 0x3

    move/from16 v4, v16

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIII)V

    .line 2668
    if-nez v7, :cond_45

    .line 2669
    return-void

    .line 2671
    :cond_45
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 2672
    .local v0, "sl":I
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move v9, v0

    move/from16 v11, p6

    move v12, v15

    move/from16 v13, v16

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2673
    const/4 v10, 0x1

    move v9, v0

    move/from16 v12, v16

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2674
    const/4 v10, 0x2

    move v9, v0

    move v12, v15

    move/from16 v13, v16

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2675
    const/4 v10, 0x3

    move v9, v0

    move/from16 v12, v16

    move v13, v15

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIII)I

    move-result v0

    .line 2676
    iget v1, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p6

    float-to-int v1, v1

    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2677
    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 2678
    return-void
.end method

.method private configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1316
    const-string v2, "DisplayContent"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1317
    .local v0, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1319
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    if-nez v2, :cond_3d

    .line 1322
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayAreaPolicyProvider()Lcom/android/server/wm/DisplayAreaPolicy$Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-interface {v2, v3, p0, p0, v4}, Lcom/android/server/wm/DisplayAreaPolicy$Provider;->instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    .line 1327
    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    const/4 v3, 0x4

    .line 1328
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayAreaPolicy;->getDisplayAreas(I)Ljava/util/List;

    move-result-object v2

    .line 1329
    .local v2, "areas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_52

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    .line 1331
    .local v3, "area":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    :goto_53
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v5, p0, :cond_65

    .line 1334
    iget-object v5, v3, Lcom/android/server/wm/DisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1335
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_82

    .line 1339
    :cond_65
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1340
    const-string v5, "RootWrapper"

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1341
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    .line 1342
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1346
    :goto_82
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    const/4 v6, 0x6

    .line 1347
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayAreaPolicy;->getDisplayAreas(I)Ljava/util/List;

    move-result-object v5

    .line 1348
    .local v5, "hideDisplayCutoutAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayArea<+Lcom/android/server/wm/WindowContainer;>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_a0

    .line 1349
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/DisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHideDisplayCutoutLayer:Landroid/view/SurfaceControl;

    goto :goto_a4

    .line 1351
    :cond_a0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHideDisplayCutoutLayer:Landroid/view/SurfaceControl;

    .line 1355
    :goto_a4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_bb

    .line 1356
    const-string v1, "Display Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_c0

    .line 1358
    :cond_bb
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1361
    :goto_c0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1362
    invoke-virtual {p1, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1363
    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1364
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    const v6, 0x7fffffff

    .line 1365
    invoke-virtual {v1, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    .line 1366
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1367
    return-void
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 5177
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 5180
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 5181
    .local v0, "currentRotation":I
    invoke-static {v0, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    .line 5182
    .local v1, "rotationDelta":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 5183
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5185
    :cond_1d
    return-void
.end method

.method private getContentRecorder()Lcom/android/server/wm/ContentRecorder;
    .registers 2

    .line 6948
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-nez v0, :cond_b

    .line 6949
    new-instance v0, Lcom/android/server/wm/ContentRecorder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ContentRecorder;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    .line 6951
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    return-object v0
.end method

.method private getMinimalTaskSizeDp()I
    .registers 7

    .line 1759
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 1761
    .local v0, "displayConfigurationContext":Landroid/content/Context;
    nop

    .line 1762
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1764
    .local v1, "minimalSize":F
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2d

    .line 1768
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v1, v2

    float-to-int v2, v2

    return v2

    .line 1765
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display with ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has invalid DisplayMetrics.density= 0.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "orientationSrc"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "checkOpening"    # Z

    .line 1860
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1861
    return v1

    .line 1863
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFinishingFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1864
    return v1

    .line 1866
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 1868
    return v2

    .line 1871
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 1872
    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isLaunchingSmallFreeFormWindow()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1873
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1874
    return v1

    .line 1877
    :cond_2c
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    if-eqz v0, :cond_31

    .line 1878
    return v1

    .line 1883
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1884
    return v1

    .line 1886
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_44

    if-ne v0, p1, :cond_45

    .line 1891
    :cond_44
    return v1

    .line 1895
    :cond_45
    if-eqz p3, :cond_81

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1897
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1898
    return v1

    .line 1901
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_80

    .line 1908
    :cond_69
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-nez v0, :cond_88

    .line 1915
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7f

    if-ne v0, p1, :cond_88

    .line 1916
    :cond_7f
    return v1

    .line 1905
    :cond_80
    :goto_80
    return v1

    .line 1919
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_88

    .line 1921
    return v1

    .line 1923
    :cond_88
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_9b

    .line 1927
    return v1

    .line 1929
    :cond_9b
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 1930
    .local v0, "rotation":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a3

    .line 1935
    return v1

    .line 1937
    :cond_a3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_ae

    .line 1940
    return v1

    .line 1944
    :cond_ae
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v3

    invoke-interface {v3, p0, p1, v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->allowFixedRotation(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 1945
    return v1

    .line 1949
    :cond_b9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1950
    return v2
.end method

.method private isImeControlledByApp()Z
    .registers 2

    .line 4355
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isRotationChanging()Z
    .registers 3

    .line 2125
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$addToGlobalAndConsumeLimit$36([I[ILandroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 8
    .param p0, "remaining"    # [I
    .param p1, "requestedExclusion"    # [I
    .param p2, "global"    # Landroid/graphics/Region;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 6165
    const/4 v0, 0x0

    aget v1, p0, v0

    if-gtz v1, :cond_6

    .line 6166
    return-void

    .line 6168
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6169
    .local v1, "height":I
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    .line 6170
    aget v2, p0, v0

    if-le v1, v2, :cond_1a

    .line 6171
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    aget v3, p0, v0

    sub-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 6173
    :cond_1a
    aget v2, p0, v0

    sub-int/2addr v2, v1

    aput v2, p0, v0

    .line 6174
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6175
    return-void
.end method

.method static synthetic lambda$applyRotation$11(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I
    .param p3, "rotateSeamlessly"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 2263
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 2264
    return-void
.end method

.method static synthetic lambda$applyRotation$12(ZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p0, "rotateSeamlessly"    # Z
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2279
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_5

    return-void

    .line 2282
    :cond_5
    const/4 v0, 0x1

    if-nez p0, :cond_2b

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_12

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-nez v1, :cond_2b

    .line 2285
    :cond_12
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7c308e5a

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2286
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 2288
    :cond_2b
    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 2289
    return-void
.end method

.method static synthetic lambda$calculateSystemGestureExclusion$35(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 27
    .param p0, "recentsAnimationController"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "unhandled"    # Landroid/graphics/Region;
    .param p2, "touchableRegion"    # Landroid/graphics/Region;
    .param p3, "local"    # Landroid/graphics/Region;
    .param p4, "remainingLeftRight"    # [I
    .param p5, "outExclusion"    # Landroid/graphics/Region;
    .param p6, "leftEdge"    # Landroid/graphics/Rect;
    .param p7, "rightEdge"    # Landroid/graphics/Rect;
    .param p8, "outExclusionUnrestricted"    # Landroid/graphics/Region;
    .param p9, "w"    # Lcom/android/server/wm/WindowState;

    .line 6043
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_1e

    .line 6044
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v13

    goto :goto_1f

    :cond_1e
    move v3, v14

    :goto_1f
    move v15, v3

    .line 6045
    .local v15, "ignoreRecentsAnimationTarget":Z
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 6046
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_e8

    .line 6047
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e5

    if-eqz v15, :cond_42

    move-object/from16 v14, p6

    goto/16 :goto_ed

    .line 6054
    :cond_42
    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    .line 6055
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6057
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->isImplicitlyExcludingAllSystemGestures()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 6058
    invoke-virtual {v9, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_72

    .line 6060
    :cond_54
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getSystemGestureExclusion()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/android/server/wm/utils/RegionUtils;->rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V

    .line 6063
    iget v3, v12, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v9, v3}, Landroid/graphics/Region;->scale(F)V

    .line 6064
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 6065
    .local v3, "frame":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 6068
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6072
    .end local v3    # "frame":Landroid/graphics/Rect;
    :goto_72
    invoke-static {v12, v14}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 6075
    aget v6, p4, v14

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v3

    aput v3, p4, v14

    .line 6079
    aget v6, p4, v13

    const/4 v8, 0x1

    move-object/from16 v3, p3

    move-object/from16 v5, p7

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result v3

    aput v3, p4, v13

    .line 6083
    invoke-static/range {p3 .. p3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v3

    .line 6084
    .local v3, "middle":Landroid/graphics/Region;
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v14, p6

    invoke-virtual {v3, v14, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6085
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v8, p7

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 6086
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6087
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    .line 6088
    .end local v3    # "middle":Landroid/graphics/Region;
    goto :goto_d8

    .line 6089
    :cond_b1
    move-object/from16 v14, p6

    move-object/from16 v8, p7

    invoke-static {v12, v13}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v13

    .line 6090
    .local v13, "loggable":Z
    if-eqz v13, :cond_d3

    .line 6091
    const v6, 0x7fffffff

    const/16 v16, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    move/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 6093
    const/4 v8, 0x1

    move-object/from16 v5, p7

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    .line 6096
    :cond_d3
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v10, v9, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6098
    .end local v13    # "loggable":Z
    :goto_d8
    if-eqz v11, :cond_df

    .line 6099
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v9, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6101
    :cond_df
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6102
    return-void

    .line 6047
    :cond_e5
    move-object/from16 v14, p6

    goto :goto_ed

    .line 6046
    :cond_e8
    move-object/from16 v14, p6

    goto :goto_ed

    .line 6045
    :cond_eb
    move-object/from16 v14, p6

    .line 6049
    :goto_ed
    return-void
.end method

.method static synthetic lambda$canAddToastWindowForUid$23(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3950
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$24(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3955
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_16

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$dump$21(Ljava/io/PrintWriter;Ljava/lang/String;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "dumpAll"    # Z
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3836
    return-void
.end method

.method static synthetic lambda$dumpWindowAnimators$29(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "subPrefix"    # Ljava/lang/String;
    .param p2, "index"    # [I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 4927
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4928
    .local v0, "wAnim":Lcom/android/server/wm/WindowStateAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4929
    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    .line 4930
    return-void
.end method

.method static synthetic lambda$getKeepClearAreas$37(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p0, "outRestricted"    # Ljava/util/Set;
    .param p1, "outUnrestricted"    # Ljava/util/Set;
    .param p2, "tmpMatrix"    # Landroid/graphics/Matrix;
    .param p3, "tmpFloat9"    # [F
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 6238
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6239
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/WindowState;->getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V

    .line 6243
    :cond_f
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 6244
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 6243
    :goto_1e
    return v1
.end method

.method static synthetic lambda$getRootTask$13(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 4
    .param p0, "windowingMode"    # I
    .param p1, "activityType"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 2803
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRootTask$14(ILcom/android/server/wm/Task;)Z
    .registers 3
    .param p0, "rootTaskId"    # I
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2808
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$getRootTaskCount$15([ILcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "count"    # [I
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2814
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 2815
    return-void
.end method

.method static synthetic lambda$getTopRootTask$16(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 2821
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$32(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 5056
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$pointWithinAppWindow$18([IIILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 8
    .param p0, "targetWindowType"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;
    .param p4, "nonArg"    # Landroid/graphics/Rect;

    .line 3328
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 3329
    return-void

    .line 3332
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3333
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    aput v1, p0, v0

    .line 3334
    return-void

    .line 3336
    :cond_24
    return-void
.end method

.method static synthetic lambda$releaseSelfIfNeeded$45(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "rootTask"    # Lcom/android/server/wm/Task;

    .line 6693
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

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

.method static synthetic lambda$releaseSelfIfNeeded$46(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 6697
    const-string/jumbo v0, "releaseSelfIfNeeded"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$remove$43(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 3
    .param p0, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 6653
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6654
    .local v0, "lastReparentedRootTaskFromArea":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_7

    .line 6655
    return-object v0

    .line 6657
    :cond_7
    return-object p1
.end method

.method static synthetic lambda$removeAllTasks$48(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 6851
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string/jumbo v1, "removeAllTasks"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeImeSurfaceByTarget$26(Lcom/android/server/wm/WindowState;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "screenshotTarget"    # Lcom/android/server/wm/WindowState;
    .param p1, "w"    # Ljava/lang/Object;

    .line 4726
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$removeRootTasksInWindowingModes$38([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p0, "windowingModes"    # [I
    .param p1, "rootTasks"    # Ljava/util/ArrayList;
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 6327
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1d

    aget v2, p0, v1

    .line 6328
    .local v2, "windowingMode":I
    iget-boolean v3, p2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v3, :cond_1a

    .line 6329
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 6330
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_17

    .line 6331
    goto :goto_1a

    .line 6333
    :cond_17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6327
    .end local v2    # "windowingMode":I
    :cond_1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6335
    :cond_1d
    return-void
.end method

.method static synthetic lambda$removeRootTasksWithActivityTypes$39([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p0, "activityTypes"    # [I
    .param p1, "rootTasks"    # Ljava/util/ArrayList;
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 6351
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_31

    aget v2, p0, v1

    .line 6353
    .local v2, "activityType":I
    iget-boolean v3, p2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_25

    .line 6354
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "k":I
    :goto_10
    if-ltz v3, :cond_24

    .line 6355
    invoke-virtual {p2, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 6356
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_21

    .line 6357
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6354
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .end local v3    # "k":I
    :cond_24
    goto :goto_2e

    .line 6360
    :cond_25
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    if-ne v3, v2, :cond_2e

    .line 6361
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6351
    .end local v2    # "activityType":I
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6364
    :cond_31
    return-void
.end method

.method static synthetic lambda$rotationForActivityInDifferentOrientation$9(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 1818
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$30(Lcom/android/server/policy/WindowManagerPolicy;ZZZLcom/android/server/wm/WindowState;)V
    .registers 6
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "subtle"    # Z
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 4940
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1d

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4941
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4942
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4945
    :cond_1d
    return-void
.end method

.method static synthetic lambda$topRunningActivity$40(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "considerKeyguardState"    # Z
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 6386
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$topRunningActivityExcludeFreeform$41(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "considerKeyguardState"    # Z
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 6397
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$updateImeControlTarget$27(Landroid/os/IBinder;)V
    .registers 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 4787
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->reportImeControl(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$updateImeParent$28()V
    .registers 1

    .line 4810
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onImeParentChanged()V

    return-void
.end method

.method static logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 6132
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    .line 6133
    return v1

    .line 6135
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6136
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6137
    .local v2, "type":I
    const/16 v3, 0x7dd

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_3a

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_3a

    .line 6141
    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 6142
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->hasSideGestures()Z

    move-result v3

    if-eqz v3, :cond_3a

    move v1, v4

    goto :goto_3b

    :cond_3a
    nop

    .line 6137
    :goto_3b
    return v1
.end method

.method private static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z
    .registers 8
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "ignoreRequest"    # Z

    .line 6120
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6121
    .local v0, "type":I
    nop

    .line 6122
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-ne v2, v3, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, v4

    .line 6124
    .local v2, "stickyHideNav":Z
    :goto_19
    if-eqz v2, :cond_1d

    if-eqz p1, :cond_2c

    :cond_1d
    const/16 v5, 0x7db

    if-eq v0, v5, :cond_2c

    const/16 v5, 0x7f8

    if-eq v0, v5, :cond_2c

    .line 6125
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v5

    if-eq v5, v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v4

    .line 6124
    :goto_2d
    return v1
.end method

.method private performLayoutNoTrace(ZZ)V
    .registers 8
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 5203
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5204
    return-void

    .line 5206
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    .line 5208
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3e

    .line 5209
    const-string v0, "WindowManager"

    const-string v1, "-------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performLayout: dw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 5216
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 5217
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    .line 5215
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    .line 5219
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 5220
    .local v0, "seq":I
    if-gez v0, :cond_5e

    const/4 v0, 0x0

    .line 5221
    :cond_5e
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 5223
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    .line 5227
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5232
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5235
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 5236
    if-eqz p2, :cond_79

    .line 5237
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5240
    :cond_79
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v1, v2, p0, v3}, Lcom/android/server/wm/DisplayContentStub;->finishLayoutLw(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;)V

    .line 5241
    return-void
.end method

.method private processTaskForTouchExcludeRegion(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;I)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "focusedTask"    # Lcom/android/server/wm/Task;
    .param p3, "delta"    # I

    .line 3421
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3423
    .local v0, "topVisibleActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasContentToDisplay()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_8b

    .line 3428
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3429
    return-void

    .line 3439
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3440
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_36

    .line 3442
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3455
    :goto_36
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    .line 3460
    .local v1, "isFreeformed":Z
    if-eqz v1, :cond_60

    .line 3463
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3469
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3470
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    or-int/2addr v5, v6

    const/4 v6, 0x0

    .line 3469
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3472
    :cond_60
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3476
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeDream()Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v2, :cond_8a

    .line 3477
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 3478
    :cond_81
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3480
    :cond_8a
    return-void

    .line 3424
    .end local v1    # "isFreeformed":Z
    :cond_8b
    :goto_8b
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;II)I
    .registers 14
    .param p1, "curSize"    # I
    .param p2, "rotation"    # I
    .param p3, "uiMode"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;
    .param p5, "dw"    # I
    .param p6, "dh"    # I

    .line 2630
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2631
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2632
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    iput v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2634
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, p6, p2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v1

    iput v1, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 2636
    const/4 v1, 0x0

    invoke-static {p4, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    .line 2637
    .local v1, "scale":F
    iget v2, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2638
    .local v2, "size":I
    if-eqz p1, :cond_31

    if-ge v2, p1, :cond_32

    .line 2639
    :cond_31
    move p1, v2

    .line 2641
    :cond_32
    return p1
.end method

.method private reduceConfigLayout(IIFIII)I
    .registers 14
    .param p1, "curLayout"    # I
    .param p2, "rotation"    # I
    .param p3, "density"    # F
    .param p4, "dw"    # I
    .param p5, "dh"    # I
    .param p6, "uiMode"    # I

    .line 2683
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 2684
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2687
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    .line 2688
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2, p5, p2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v2

    .line 2691
    .local v2, "h":I
    move v3, v1

    .line 2692
    .local v3, "longSize":I
    move v4, v2

    .line 2693
    .local v4, "shortSize":I
    if-ge v3, v4, :cond_20

    .line 2694
    move v5, v3

    .line 2695
    .local v5, "tmp":I
    move v3, v4

    .line 2696
    move v4, v5

    .line 2698
    .end local v5    # "tmp":I
    :cond_20
    int-to-float v5, v3

    div-float/2addr v5, p3

    float-to-int v3, v5

    .line 2699
    int-to-float v5, v4

    div-float/2addr v5, p3

    float-to-int v4, v5

    .line 2700
    invoke-static {p1, v3, v4}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v5

    return v5
.end method

.method private setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 4488
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne v1, v2, :cond_b

    .line 4489
    return-void

    .line 4491
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 4496
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3b

    if-ne v0, v1, :cond_3b

    .line 4497
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v2, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    const/16 v1, 0x10

    .line 4499
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    .line 4500
    .local v0, "nonAppImeTargetAnimatingExit":Z
    :goto_2e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->inTransitionSelfOrParent()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz v0, :cond_3b

    .line 4501
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 4505
    .end local v0    # "nonAppImeTargetAnimatingExit":Z
    :cond_3b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_50

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x7e4f3d90

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4506
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_50
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4511
    if-eqz p1, :cond_76

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_76

    .line 4512
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    .line 4513
    .local v0, "targetRoot":Lcom/android/server/wm/RootDisplayArea;
    if-eqz v0, :cond_76

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-eq v0, v1, :cond_76

    .line 4516
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootDisplayArea;->placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 4519
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_76

    .line 4520
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 4526
    .end local v0    # "targetRoot":Lcom/android/server/wm/RootDisplayArea;
    :cond_76
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4528
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4529
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    .line 4528
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 4533
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 4534
    return-void
.end method

.method private shouldDeferRemoval()Z
    .registers 2

    .line 3505
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3508
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 3505
    :goto_13
    return v0
.end method

.method private startAsyncRotation(Z)Z
    .registers 7
    .param p1, "shouldDebounce"    # Z

    .line 2140
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2141
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2150
    return v0

    .line 2152
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-nez v1, :cond_22

    .line 2153
    new-instance v0, Lcom/android/server/wm/AsyncRotationController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AsyncRotationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2154
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->start()V

    .line 2155
    const/4 v0, 0x1

    return v0

    .line 2157
    :cond_22
    return v0
.end method

.method private startAsyncRotationIfNeeded()V
    .registers 2

    .line 2129
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    .line 2132
    :cond_a
    return-void
.end method

.method private startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V
    .registers 15
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "rotation"    # I

    .line 2098
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2099
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2100
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 2101
    .local v8, "cutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v9

    .line 2102
    .local v9, "roundedCorners":Landroid/view/RoundedCorners;
    nop

    .line 2103
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v10

    .line 2104
    .local v10, "indicatorBounds":Landroid/view/PrivacyIndicatorBounds;
    new-instance v11, Lcom/android/server/wm/DisplayFrames;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v11

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    .line 2106
    .local v1, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 2107
    return-void
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .registers 21

    .line 3062
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 3063
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 3064
    .local v7, "orientation":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v7, v1, :cond_1b

    const/4 v2, 0x3

    if-ne v7, v2, :cond_19

    goto :goto_1b

    :cond_19
    move v2, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v2, v1

    :goto_1c
    move v8, v2

    .line 3065
    .local v8, "rotated":Z
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v8, :cond_24

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_26

    :cond_24
    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_26
    move v15, v2

    .line 3066
    .local v15, "newWidth":I
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v8, :cond_2e

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_30

    :cond_2e
    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_30
    move v5, v2

    .line 3067
    .local v5, "newHeight":I
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 3068
    .local v4, "newDensity":I
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 3069
    .local v3, "newXDpi":F
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 3070
    .local v2, "newYDpi":F
    iget-boolean v9, v6, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v9, :cond_44

    .line 3071
    sget-object v9, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_48

    :cond_44
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v9, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_48
    move-object v14, v9

    .line 3072
    .local v14, "newCutout":Landroid/view/DisplayCutout;
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v13, v9, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 3073
    .local v13, "newUniqueId":Ljava/lang/String;
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v12, v9, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 3075
    .local v12, "newRoundedCorners":Landroid/view/RoundedCorners;
    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v9, v15, :cond_7c

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v9, v5, :cond_7c

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne v9, v4, :cond_7c

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    cmpl-float v9, v9, v3

    if-nez v9, :cond_7c

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    cmpl-float v9, v9, v2

    if-nez v9, :cond_7c

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3080
    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3081
    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7a

    goto :goto_7c

    :cond_7a
    move v9, v0

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v9, v1

    :goto_7d
    move/from16 v16, v9

    .line 3082
    .local v16, "displayMetricsChanged":Z
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v1

    move/from16 v17, v9

    .line 3085
    .local v17, "physicalDisplayChanged":Z
    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v9, :cond_d6

    if-eqz v17, :cond_d6

    .line 3088
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v9, :cond_b0

    .line 3089
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v9, :cond_ab

    .line 3090
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v0, v9, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 3091
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v10, "display-swapped"

    iput-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 3092
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3094
    :cond_ab
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3096
    :cond_b0
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 3097
    iput-boolean v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplaySwappedInProgress:Z

    .line 3099
    :cond_bc
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->updateActivityOrientationForFold(Z)V

    .line 3100
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v11

    invoke-interface {v9, v10, v11, v0, v1}, Lcom/android/server/wm/MiuiOrientationStub;->update3appCameraWhenRotateOrFold(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 3105
    :cond_d6
    if-nez v16, :cond_e8

    if-eqz v17, :cond_db

    goto :goto_e8

    :cond_db
    move v10, v2

    move v11, v3

    move/from16 v18, v7

    move/from16 v19, v8

    move-object v8, v12

    move-object v7, v14

    move v12, v4

    move-object v14, v13

    move v13, v5

    goto/16 :goto_164

    .line 3106
    :cond_e8
    :goto_e8
    if-eqz v17, :cond_105

    .line 3110
    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    .line 3112
    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    iget v10, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v11, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move-object v1, v12

    .end local v12    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .local v1, "newRoundedCorners":Landroid/view/RoundedCorners;
    move v12, v0

    move-object v0, v13

    .end local v13    # "newUniqueId":Ljava/lang/String;
    .local v0, "newUniqueId":Ljava/lang/String;
    move v13, v15

    move/from16 v18, v7

    move-object v7, v14

    .end local v14    # "newCutout":Landroid/view/DisplayCutout;
    .local v7, "newCutout":Landroid/view/DisplayCutout;
    .local v18, "orientation":I
    move v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->requestDisplaySwitchTransitionIfNeeded(IIIII)V

    goto :goto_10a

    .line 3106
    .end local v0    # "newUniqueId":Ljava/lang/String;
    .end local v1    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .end local v18    # "orientation":I
    .local v7, "orientation":I
    .restart local v12    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .restart local v13    # "newUniqueId":Ljava/lang/String;
    .restart local v14    # "newCutout":Landroid/view/DisplayCutout;
    :cond_105
    move/from16 v18, v7

    move-object v1, v12

    move-object v0, v13

    move-object v7, v14

    .line 3117
    .end local v12    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .end local v13    # "newUniqueId":Ljava/lang/String;
    .end local v14    # "newCutout":Landroid/view/DisplayCutout;
    .restart local v0    # "newUniqueId":Ljava/lang/String;
    .restart local v1    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .local v7, "newCutout":Landroid/view/DisplayCutout;
    .restart local v18    # "orientation":I
    :goto_10a
    iget-boolean v9, v6, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v9, :cond_111

    iget v10, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_112

    :cond_111
    move v10, v15

    .line 3118
    :goto_112
    if-eqz v9, :cond_117

    iget v11, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_118

    :cond_117
    move v11, v5

    .line 3119
    :goto_118
    iget-boolean v12, v6, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v12, :cond_11f

    iget v12, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_120

    :cond_11f
    move v12, v4

    .line 3120
    :goto_120
    if-eqz v9, :cond_125

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    goto :goto_126

    :cond_125
    move v13, v3

    .line 3121
    :goto_126
    if-eqz v9, :cond_12b

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    goto :goto_12c

    :cond_12b
    move v9, v2

    .line 3117
    :goto_12c
    move-object v14, v0

    .end local v0    # "newUniqueId":Ljava/lang/String;
    .local v14, "newUniqueId":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v19, v8

    move-object v8, v1

    .end local v1    # "newRoundedCorners":Landroid/view/RoundedCorners;
    .local v8, "newRoundedCorners":Landroid/view/RoundedCorners;
    .local v19, "rotated":Z
    move v1, v10

    move v10, v2

    .end local v2    # "newYDpi":F
    .local v10, "newYDpi":F
    move v2, v11

    move v11, v3

    .end local v3    # "newXDpi":F
    .local v11, "newXDpi":F
    move v3, v12

    move v12, v4

    .end local v4    # "newDensity":I
    .local v12, "newDensity":I
    move v4, v13

    move v13, v5

    .end local v5    # "newHeight":I
    .local v13, "newHeight":I
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 3125
    if-eqz v17, :cond_14a

    .line 3129
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 3133
    :cond_14a
    iput v15, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3134
    iput v13, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3135
    iput v12, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3136
    iput v11, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3137
    iput v10, v6, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3138
    iput-object v7, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3139
    iput-object v8, v6, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3140
    iput-object v14, v6, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    .line 3141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3143
    if-eqz v17, :cond_164

    .line 3144
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    invoke-virtual {v0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->onDisplayUpdated()V

    .line 3147
    :cond_164
    :goto_164
    return-void
.end method

.method private updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .registers 21
    .param p1, "uiMode"    # I
    .param p2, "outConfig"    # Landroid/content/res/Configuration;

    .line 2321
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v9

    .line 2322
    .local v9, "rotation":I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_e

    const/4 v1, 0x3

    if-ne v9, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    move v10, v0

    .line 2323
    .local v10, "rotated":Z
    if-eqz v10, :cond_14

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_16

    :cond_14
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_16
    move v11, v0

    .line 2324
    .local v11, "dw":I
    if-eqz v10, :cond_1c

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1e

    :cond_1c
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1e
    move v12, v0

    .line 2327
    .local v12, "dh":I
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v13

    .line 2328
    .local v13, "wmDisplayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    invoke-virtual {v13}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v14

    .line 2329
    .local v14, "displayCutout":Landroid/view/DisplayCutout;
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v15

    .line 2331
    .local v15, "roundedCorners":Landroid/view/RoundedCorners;
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v1, v11

    move v2, v12

    move v3, v9

    move/from16 v4, p1

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v7

    .line 2333
    .local v7, "appWidth":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, v12, v9, v14}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v6

    .line 2335
    .local v6, "appHeight":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 2336
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v11, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2337
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v12, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2338
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 2339
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 2340
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 2341
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 2342
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 2343
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    .line 2344
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2347
    :cond_71
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v14}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v1, v14

    :goto_7b
    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2348
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v15, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 2349
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 2350
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_96

    .line 2351
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_a0

    .line 2353
    :cond_96
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 2356
    :goto_a0
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v3, p1

    move v4, v11

    move/from16 v16, v5

    move v5, v12

    move/from16 v17, v6

    .end local v6    # "appHeight":I
    .local v17, "appHeight":I
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "appWidth":I
    .local v16, "appWidth":I
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 2359
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 2362
    iget-boolean v0, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_d3

    .line 2363
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, v8, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 2367
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 2369
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method private updateDisplayFrames(ZZ)V
    .registers 8
    .param p1, "insetsSourceMayChange"    # Z
    .param p2, "notifyInsetsChange"    # Z

    .line 3000
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3001
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 3002
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 3003
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    .line 3000
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3004
    if-eqz p1, :cond_29

    .line 3005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsSourceFramesExceptIme(Lcom/android/server/wm/DisplayFrames;)V

    .line 3007
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/InsetsStateController;->onDisplayFramesUpdated(Z)V

    .line 3009
    :cond_2e
    return-void
.end method

.method private updateOrientation(Z)Z
    .registers 8
    .param p1, "forceUpdate"    # Z

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v0

    .line 1774
    .local v0, "orientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1776
    .local v1, "orientationSource":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 1777
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_10
    if-eqz v2, :cond_3e

    .line 1778
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1779
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_29

    iget v4, v3, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    if-eq v0, v4, :cond_29

    .line 1780
    iput v0, v3, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 1781
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1782
    invoke-virtual {v4, v5, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRequestedOrientationChanged(II)V

    .line 1785
    :cond_29
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_33

    :cond_32
    move-object v4, v2

    .line 1788
    .local v4, "topCandidate":Lcom/android/server/wm/ActivityRecord;
    :goto_33
    if-eqz v4, :cond_3e

    const/4 v5, 0x1

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1791
    const/4 v5, 0x0

    return v5

    .line 1794
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "topCandidate":Lcom/android/server/wm/ActivityRecord;
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v3

    return v3
.end method


# virtual methods
.method addShellRoot(Landroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .registers 7
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "shellRootLayer"    # I

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    .line 1445
    .local v0, "root":Lcom/android/server/wm/ShellRoot;
    if-eqz v0, :cond_1d

    .line 1446
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getClient()Landroid/view/IWindow;

    move-result-object v1

    if-ne v1, p1, :cond_15

    .line 1447
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 1449
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1450
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1452
    :cond_1d
    new-instance v1, Lcom/android/server/wm/ShellRoot;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/wm/ShellRoot;-><init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V

    move-object v0, v1

    .line 1453
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1454
    .local v1, "rootLeash":Landroid/view/SurfaceControl;
    if-nez v1, :cond_2e

    .line 1456
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1457
    const/4 v2, 0x0

    return-object v2

    .line 1459
    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1460
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v3, "DisplayContent.addShellRoot"

    invoke-direct {v2, v1, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1461
    .local v2, "out":Landroid/view/SurfaceControl;
    return-object v2
.end method

.method addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1402
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v1, " to display="

    const-string v2, "Can\'t map token="

    if-nez v0, :cond_7b

    .line 1410
    if-eqz p1, :cond_52

    .line 1414
    if-eqz p2, :cond_2b

    .line 1419
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1426
    iput-object p0, p2, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1429
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v1

    .line 1430
    .local v1, "da":Lcom/android/server/wm/DisplayArea$Tokens;
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 1432
    .end local v1    # "da":Lcom/android/server/wm/DisplayArea$Tokens;
    :cond_2a
    return-void

    .line 1415
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1411
    :cond_52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1407
    :cond_7b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already mapped to display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tokens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method adjustForImeIfNeeded()V
    .registers 5

    .line 3576
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 3577
    .local v0, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3578
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 3579
    .local v1, "imeVisible":Z
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result v2

    .line 3580
    .local v2, "imeHeight":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/PinnedTaskController;->setAdjustedForIme(ZI)V

    .line 3581
    return-void
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 5598
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_c

    .line 5599
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_f

    .line 5601
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 5604
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 5606
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_21

    .line 5607
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    goto :goto_28

    .line 5609
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 5611
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5612
    return-void
.end method

.method applySurfaceChangesTransaction()V
    .registers 12

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 5096
    .local v0, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5098
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "On entry to LockedInner"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 5101
    :cond_14
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1f

    .line 5102
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 5105
    :cond_1f
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3c

    .line 5106
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_30

    const-string v1, "WindowManager"

    const-string v2, "Computing new config from layout"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5108
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5109
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 5113
    :cond_3c
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_45

    .line 5114
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5118
    :cond_45
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 5119
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5121
    const-wide/16 v3, 0x20

    const-string v1, "applyPostLayoutPolicy"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5123
    :try_start_52
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->beginPostLayoutPolicyLw()V

    .line 5124
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5125
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishPostLayoutPolicyLw()V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_f2

    .line 5127
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5128
    nop

    .line 5129
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->onPostLayout()V

    .line 5131
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    .line 5133
    const-string v1, "applyWindowSurfaceChanges"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5135
    :try_start_74
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_ed

    .line 5137
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5138
    nop

    .line 5139
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 5143
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 5145
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 5146
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_c2

    .line 5148
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v3, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredSceneMaxRefreshRate:F

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->setSceneMaxRefreshRate(IF)V

    .line 5150
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v5, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v6, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v7, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v1, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIFFZZ)V

    .line 5160
    :cond_c2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 5162
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    .line 5163
    .local v1, "wallpaperVisible":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v1, v2, :cond_d8

    .line 5164
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    .line 5165
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5168
    :cond_d8
    :goto_d8
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ec

    .line 5169
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 5172
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->updateAllDrawn()V

    .line 5173
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_d8

    .line 5174
    :cond_ec
    return-void

    .line 5137
    .end local v1    # "wallpaperVisible":Z
    :catchall_ed
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5138
    throw v1

    .line 5127
    :catchall_f2
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5128
    throw v1
.end method

.method asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 7271
    return-object p0
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5654
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 5655
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5656
    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 5716
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5717
    return-void
.end method

.method assignWindowLayers(Z)V
    .registers 5
    .param p1, "setLayoutNeeded"    # Z

    .line 4194
    const-wide/16 v0, 0x20

    const-string v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4195
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4196
    if-eqz p1, :cond_13

    .line 4197
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4204
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 4205
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4206
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 4
    .param p1, "rotation"    # I

    .line 2373
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    .line 2374
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 2373
    :goto_b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;
    .registers 4
    .param p1, "rotation"    # I

    .line 2423
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;
    .registers 4
    .param p1, "rotation"    # I

    .line 2402
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    .line 2403
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 2402
    :goto_b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    return-object v0
.end method

.method calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .registers 23
    .param p1, "outExclusion"    # Landroid/graphics/Region;
    .param p2, "outExclusionUnrestricted"    # Landroid/graphics/Region;

    .line 6021
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Region;->setEmpty()V

    .line 6022
    if-eqz p2, :cond_a

    .line 6023
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->setEmpty()V

    .line 6025
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v11

    .line 6026
    .local v11, "unhandled":Landroid/graphics/Region;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 6028
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 6029
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v13

    .line 6030
    .local v13, "leftEdge":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v1

    .line 6031
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v14

    .line 6033
    .local v14, "rightEdge":Landroid/graphics/Rect;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v15

    .line 6034
    .local v15, "touchableRegion":Landroid/graphics/Region;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v16

    .line 6035
    .local v16, "local":Landroid/graphics/Region;
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    aput v2, v1, v12

    const/4 v10, 0x1

    aput v2, v1, v10

    move-object/from16 v17, v1

    .line 6037
    .local v17, "remainingLeftRight":[I
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6038
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v18

    .line 6042
    .local v18, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    new-instance v9, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;

    move-object v1, v9

    move-object/from16 v2, v18

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, p1

    move-object v8, v13

    move-object v12, v9

    move-object v9, v14

    move-object/from16 v19, v13

    move v13, v10

    .end local v13    # "leftEdge":Landroid/graphics/Rect;
    .local v19, "leftEdge":Landroid/graphics/Rect;
    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6103
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Region;->recycle()V

    .line 6104
    invoke-virtual {v15}, Landroid/graphics/Region;->recycle()V

    .line 6105
    invoke-virtual {v11}, Landroid/graphics/Region;->recycle()V

    .line 6106
    const/4 v1, 0x0

    aget v2, v17, v1

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt v2, v3, :cond_84

    aget v2, v17, v13

    if-ge v2, v3, :cond_82

    goto :goto_84

    :cond_82
    move v12, v1

    goto :goto_85

    :cond_84
    :goto_84
    move v12, v13

    :goto_85
    return v12
.end method

.method canAddToastWindowForUid(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 3949
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda44;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3951
    .local v0, "focusedWindowForUid":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 3952
    return v1

    .line 3954
    :cond_d
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    invoke-direct {v2, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3957
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method canShowTasksInRecents()Z
    .registers 2

    .line 2226
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-nez v0, :cond_6

    .line 2227
    const/4 v0, 0x1

    return v0

    .line 2229
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canShowTasksInRecents()Z

    move-result v0

    return v0
.end method

.method canShowWithInsecureKeyguard()Z
    .registers 3

    .line 6806
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    .line 6807
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method cancelAppTransition()V
    .registers 2

    .line 5859
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 5860
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->abort()V

    .line 5861
    return-void

    .line 5859
    :cond_17
    :goto_17
    return-void
.end method

.method computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 3

    .line 4819
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_1d

    .line 4821
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v1, :cond_1d

    .line 4823
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object v0

    .line 4825
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return-object v0
.end method

.method computeImeParent()Landroid/view/SurfaceControl;
    .registers 6

    .line 4836
    const/4 v0, 0x0

    .line 4837
    .local v0, "attachToDisplayCompatMode":Z
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4838
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Lcom/android/server/wm/DisplayContentStub;->attachToDisplayCompatMode(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4839
    const/4 v0, 0x1

    .line 4842
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    if-nez v0, :cond_49

    .line 4853
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4854
    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 4856
    .local v1, "imeLayeringTargetMayUseIme":Z
    :goto_36
    if-eqz v1, :cond_49

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 4857
    invoke-interface {v4}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eq v3, v4, :cond_49

    .line 4859
    return-object v2

    .line 4867
    .end local v1    # "imeLayeringTargetMayUseIme":Z
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v1

    if-eqz v1, :cond_5a

    if-nez v0, :cond_5a

    .line 4869
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4872
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 4873
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_6e

    :cond_6d
    nop

    .line 4872
    :goto_6e
    return-object v2
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .registers 11
    .param p1, "updateImeTarget"    # Z

    .line 4290
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "Moving IM target from "

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v0, :cond_2f

    .line 4292
    if-eqz p1, :cond_2e

    .line 4293
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to null since mInputMethodWindow is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    :cond_2b
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    .line 4297
    :cond_2e
    return-object v2

    .line 4300
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4301
    .local v0, "curTarget":Lcom/android/server/wm/WindowState;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v4

    if-nez v4, :cond_44

    .line 4302
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_40

    const-string v1, "Defer updating IME target"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    :cond_40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    .line 4304
    return-object v0

    .line 4310
    :cond_44
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    .line 4311
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4313
    .local v4, "target":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_76

    if-eqz p1, :cond_76

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposed new IME target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4314
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4313
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    :cond_76
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v5, :cond_9a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desired input method target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updateImeTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    :cond_9a
    const/4 v5, 0x4

    const-string v6, " Callers="

    const-string v7, ""

    if-nez v4, :cond_e4

    .line 4320
    if-eqz p1, :cond_e3

    .line 4321
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v8, :cond_e0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " to null."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4322
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v8, :cond_d4

    .line 4323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d5

    :cond_d4
    nop

    :goto_d5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4321
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_e0
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    .line 4327
    :cond_e3
    return-object v2

    .line 4330
    :cond_e4
    if-eqz p1, :cond_12f

    .line 4331
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_125

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4332
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v2, :cond_11a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_11a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    :cond_125
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    .line 4337
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v1

    invoke-interface {v1, p0, v4}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->updateImeBoundsInImeTargetChanged(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    .line 4341
    :cond_12f
    return-object v4
.end method

.method computeImeTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "candidate"    # Lcom/android/server/wm/ActivityRecord;

    .line 4349
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_c

    .line 4350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 4352
    :cond_c
    return-void
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;I)Landroid/view/DisplayInfo;
    .registers 21
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "rotation"    # I

    .line 2440
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v10, v0, :cond_f

    const/4 v2, 0x3

    if-ne v10, v2, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    move v11, v0

    .line 2441
    .local v11, "rotated":Z
    if-eqz v11, :cond_15

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_17

    :cond_15
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_17
    move v12, v0

    .line 2442
    .local v12, "dw":I
    if-eqz v11, :cond_1d

    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1f

    :cond_1d
    iget v0, v8, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1f
    move v13, v0

    .line 2443
    .local v13, "dh":I
    iget-object v0, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, v1, v12, v13}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    .line 2444
    iget-object v0, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2446
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v14, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2447
    .local v14, "uiMode":I
    nop

    .line 2448
    invoke-virtual {v8, v10}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    .line 2449
    .local v15, "displayCutout":Landroid/view/DisplayCutout;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v4, p2

    move v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2451
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, v1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    move-object v7, v0

    .line 2452
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    iput v10, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 2453
    iput v12, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2454
    iput v13, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2455
    iget-object v0, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 2456
    .local v16, "appBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 2457
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 2458
    invoke-virtual {v15}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x0

    goto :goto_75

    :cond_74
    move-object v0, v15

    :goto_75
    iput-object v0, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 2459
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v11

    move v3, v14

    move v4, v12

    move v5, v13

    move-object/from16 v17, v7

    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 2461
    return-object v17
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .registers 18
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2498
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v8, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v7, v0, v8}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(ILandroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v9

    .line 2499
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    iget v10, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2500
    .local v10, "dw":I
    iget v11, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2501
    .local v11, "dh":I
    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2502
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2503
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 2504
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2505
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 2507
    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    iget v5, v8, Landroid/content/res/Configuration;->uiMode:I

    iget-object v6, v9, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;IIIILandroid/view/DisplayCutout;)V

    .line 2510
    iget v0, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    .line 2511
    iget v1, v9, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_50

    .line 2512
    const/16 v1, 0x200

    goto :goto_52

    .line 2513
    :cond_50
    const/16 v1, 0x100

    :goto_52
    or-int/2addr v0, v1

    iput v0, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 2515
    iget v0, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 2517
    nop

    .line 2518
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasHdrSupport()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2519
    const/16 v0, 0x8

    goto :goto_6c

    .line 2520
    :cond_6b
    const/4 v0, 0x4

    .line 2521
    :goto_6c
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7d

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2522
    const/4 v1, 0x2

    goto :goto_7e

    .line 2523
    :cond_7d
    move v1, v3

    :goto_7e
    or-int/2addr v0, v1

    iput v0, v8, Landroid/content/res/Configuration;->colorMode:I

    .line 2527
    iput v3, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 2528
    iput v3, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 2529
    iput v3, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2531
    iput v3, v8, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 2533
    const/4 v0, 0x0

    .line 2534
    .local v0, "keyboardPresence":I
    const/4 v1, 0x0

    .line 2535
    .local v1, "navigationPresence":I
    iget-object v4, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v4

    .line 2536
    .local v4, "devices":[Landroid/view/InputDevice;
    if-eqz v4, :cond_97

    array-length v5, v4

    goto :goto_98

    :cond_97
    move v5, v12

    .line 2537
    .local v5, "len":I
    :goto_98
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_99
    if-ge v6, v5, :cond_116

    .line 2538
    aget-object v13, v4, v6

    .line 2540
    .local v13, "device":Landroid/view/InputDevice;
    invoke-virtual {v13}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v14

    if-eqz v14, :cond_a5

    .line 2541
    goto/16 :goto_111

    .line 2545
    :cond_a5
    iget-object v14, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v13}, Landroid/view/InputDevice;->getId()I

    move-result v15

    iget v12, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v14, v15, v12}, Lcom/android/server/input/InputManagerService;->canDispatchToDisplay(II)Z

    move-result v12

    if-nez v12, :cond_b6

    .line 2546
    goto :goto_111

    .line 2549
    :cond_b6
    invoke-virtual {v13}, Landroid/view/InputDevice;->getSources()I

    move-result v12

    .line 2550
    .local v12, "sources":I
    invoke-virtual {v13}, Landroid/view/InputDevice;->isExternal()Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 2551
    const/4 v14, 0x2

    goto :goto_c3

    :cond_c2
    move v14, v3

    .line 2553
    .local v14, "presenceFlag":I
    :goto_c3
    iget-object v15, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    const/4 v2, 0x3

    if-eqz v15, :cond_d3

    .line 2554
    and-int/lit16 v15, v12, 0x1002

    const/16 v3, 0x1002

    if-ne v15, v3, :cond_d6

    .line 2555
    iput v2, v8, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_d6

    .line 2558
    :cond_d3
    const/4 v3, 0x1

    iput v3, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 2561
    :cond_d6
    :goto_d6
    const v3, 0x10004

    and-int v15, v12, v3

    if-ne v15, v3, :cond_e2

    .line 2562
    iput v2, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2563
    or-int/2addr v1, v14

    const/4 v2, 0x2

    goto :goto_f3

    .line 2564
    :cond_e2
    and-int/lit16 v2, v12, 0x201

    const/16 v3, 0x201

    if-ne v2, v3, :cond_f2

    iget v2, v8, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f2

    .line 2566
    const/4 v2, 0x2

    iput v2, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2567
    or-int/2addr v1, v14

    goto :goto_f3

    .line 2564
    :cond_f2
    const/4 v2, 0x2

    .line 2570
    :goto_f3
    invoke-virtual {v13}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v3

    if-ne v3, v2, :cond_fc

    .line 2571
    iput v2, v8, Landroid/content/res/Configuration;->keyboard:I

    .line 2572
    or-int/2addr v0, v14

    .line 2576
    :cond_fc
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v2

    invoke-virtual {v13}, Landroid/view/InputDevice;->getVendorId()I

    move-result v3

    .line 2577
    invoke-virtual {v13}, Landroid/view/InputDevice;->getProductId()I

    move-result v15

    .line 2576
    invoke-interface {v2, v3, v15}, Lcom/android/server/wm/DisplayContentStub;->shouldInterceptRelaunch(II)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 2578
    const/4 v2, 0x2

    iput v2, v8, Landroid/content/res/Configuration;->xiaomiKeyboard:I

    .line 2537
    .end local v12    # "sources":I
    .end local v13    # "device":Landroid/view/InputDevice;
    .end local v14    # "presenceFlag":I
    :cond_111
    :goto_111
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    const/4 v12, 0x0

    goto :goto_99

    .line 2583
    .end local v6    # "i":I
    :cond_116
    iget v2, v8, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_126

    iget-object v2, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v2, :cond_126

    .line 2584
    const/4 v2, 0x2

    iput v2, v8, Landroid/content/res/Configuration;->navigation:I

    .line 2585
    or-int/lit8 v1, v1, 0x1

    .line 2590
    :cond_126
    iget v2, v8, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12d

    const/4 v12, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v12, 0x0

    :goto_12e
    move v2, v12

    .line 2591
    .local v2, "hardKeyboardAvailable":Z
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v2, v3, :cond_149

    .line 2592
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 2593
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2594
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2597
    :cond_149
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2600
    const/4 v3, 0x1

    iput v3, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2601
    iput v3, v8, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2602
    iput v3, v8, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2603
    iget-object v3, v7, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v8, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    .line 2604
    return-void
.end method

.method configureDisplayPolicy()V
    .registers 6

    .line 2305
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 2306
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2307
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->configure(II)V

    .line 2309
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 2310
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 2311
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculatePrivacyIndicatorBoundsForRotation(I)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    .line 2309
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    .line 2312
    return-void
.end method

.method continueUpdateImeTarget()V
    .registers 3

    .line 5749
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_5

    .line 5750
    return-void

    .line 5753
    :cond_5
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5754
    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    if-eqz v0, :cond_12

    .line 5755
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5757
    :cond_12
    return-void
.end method

.method continueUpdateOrientationForDiffOrienLaunchingApp()V
    .registers 4

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 2064
    return-void

    .line 2066
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->shouldDeferOrientationChange()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2068
    return-void

    .line 2071
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 2073
    return-void

    .line 2075
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2077
    return-void

    .line 2080
    :cond_28
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 2081
    return-void
.end method

.method deferUpdateImeTarget()V
    .registers 3

    .line 5738
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_7

    .line 5739
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    .line 5741
    :cond_7
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    .line 5742
    return-void
.end method

.method destroyLeakedSurfaces()Z
    .registers 4

    .line 4228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4229
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 4230
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4253
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 4255
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3766
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/RootDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3767
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display: mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rootTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3770
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3771
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3772
    const-string v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3773
    const-string v5, " mMinSizeOfResizeableTaskDp="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3774
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_82

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_82

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_9f

    .line 3777
    :cond_82
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3779
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    :cond_9f
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_a8

    .line 3782
    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    :cond_a8
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3785
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3786
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3787
    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3788
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3789
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3790
    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3791
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3792
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3793
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTouchExcludeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3801
    const-string v2, "  mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3802
    const-string v2, "  mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3803
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_180

    .line 3804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFixedRotationLaunchingApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3807
    :cond_180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3808
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3811
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3812
    invoke-static {}, Lcom/android/server/wm/AppResurrectionServiceStub;->getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/server/wm/AppResurrectionServiceStub;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3815
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_1a7

    .line 3816
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3817
    const-string v2, "  mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3818
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3821
    :cond_1a7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas()Ljava/util/Set;

    move-result-object v2

    .line 3822
    .local v2, "keepClearAreas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1bc

    .line 3823
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3824
    const-string v3, "  keepClearAreas="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3828
    :cond_1bc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Display areas in top down Z order:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayContent;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3832
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Task display areas in top down Z order:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3834
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3838
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3840
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 3841
    .local v3, "rotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v3, :cond_20b

    .line 3842
    const-string v4, "  mScreenRotationAnimation:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v3, v0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_212

    .line 3844
    :cond_20b
    if-eqz p3, :cond_212

    .line 3845
    const-string v4, "  no ScreenRotationAnimation "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3848
    :cond_212
    :goto_212
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3851
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3852
    .local v4, "rootHomeTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_23e

    .line 3853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "rootHomeTask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3855
    :cond_23e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3856
    .local v5, "rootPinnedTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_267

    .line 3857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rootPinnedTask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    :cond_267
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 3862
    .local v6, "rootRecentsTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_292

    .line 3863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "rootRecentsTask="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3865
    :cond_292
    const/4 v7, 0x5

    .line 3866
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 3867
    .local v7, "rootDreamTask":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2b8

    .line 3868
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "rootDreamTask="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    :cond_2b8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3872
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/PinnedTaskController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3874
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3875
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3876
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3877
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3878
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3879
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v8, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3880
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3881
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3883
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/InsetsStateController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3884
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3885
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 3679
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3680
    return-void

    .line 3683
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3684
    .local v0, "token":J
    const-wide v2, 0x10b00000015L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/RootDisplayArea;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3686
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3687
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3688
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3689
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const-wide v3, 0x10b00000021L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayRotation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3690
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 3691
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_4c

    .line 3692
    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ScreenRotationAnimation;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3694
    :cond_4c
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3695
    const-wide v3, 0x10500000027L

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3696
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    const-wide v4, 0x10b00000010L

    if-eqz v3, :cond_73

    .line 3697
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/TransitionController;->dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_78

    .line 3699
    :cond_73
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/AppTransition;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3701
    :goto_78
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_84

    .line 3702
    const-wide v4, 0x1090000000fL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3704
    :cond_84
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_8c
    if-ltz v3, :cond_a1

    .line 3705
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000011L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3704
    add-int/lit8 v3, v3, -0x1

    goto :goto_8c

    .line 3707
    .end local v3    # "i":I
    :cond_a1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_a9
    if-ltz v3, :cond_be

    .line 3708
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const-wide v5, 0x20b00000012L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3707
    add-int/lit8 v3, v3, -0x1

    goto :goto_a9

    .line 3711
    .end local v3    # "i":I
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3712
    .local v3, "focusedRootTask":Lcom/android/server/wm/Task;
    const-wide v4, 0x10500000017L

    if-eqz v3, :cond_e3

    .line 3713
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3714
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 3715
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3716
    .local v4, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_e2

    .line 3717
    const-wide v5, 0x10b00000018L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3719
    .end local v4    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_e2
    goto :goto_e7

    .line 3720
    :cond_e3
    const/4 v6, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3722
    :goto_e7
    const-wide v4, 0x1080000001aL

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3723
    const-wide v4, 0x10800000024L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3724
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_100
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11b

    .line 3725
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    const-wide v6, 0x20900000025L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->writeTagToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3724
    add-int/lit8 v4, v4, 0x1

    goto :goto_100

    .line 3728
    .end local v4    # "i":I
    :cond_11b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_127

    .line 3729
    const-wide v5, 0x10b0000001bL

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3731
    :cond_127
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v4, :cond_133

    .line 3732
    const-wide v5, 0x10b0000001cL

    invoke-interface {v4, p1, v5, v6, p4}, Lcom/android/server/wm/InputTarget;->dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3734
    :cond_133
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v4, :cond_14b

    .line 3735
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_14b

    .line 3736
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const-wide v5, 0x10b0000001dL

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3739
    :cond_14b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_157

    .line 3740
    const-wide v5, 0x10b0000001eL

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3742
    :cond_157
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v4, :cond_17d

    .line 3743
    const/4 v4, 0x0

    .local v4, "type":I
    :goto_15c
    const/16 v5, 0x18

    if-ge v4, v5, :cond_17d

    .line 3744
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 3745
    invoke-virtual {v5, v4}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v5

    .line 3746
    .local v5, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    if-eqz v5, :cond_17a

    .line 3747
    const/16 v6, 0x13

    if-ne v4, v6, :cond_172

    const-wide v6, 0x10b0000001fL

    goto :goto_177

    .line 3748
    :cond_172
    const-wide v6, 0x20b00000023L

    .line 3747
    :goto_177
    invoke-virtual {v5, p1, v6, v7, p4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3743
    .end local v5    # "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    :cond_17a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15c

    .line 3752
    .end local v4    # "type":I
    :cond_17d
    const-wide v4, 0x10500000022L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3753
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_191
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 3754
    .local v5, "r":Landroid/graphics/Rect;
    const-wide v6, 0x20b00000026L

    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3755
    .end local v5    # "r":Landroid/graphics/Rect;
    goto :goto_191

    .line 3756
    :cond_1a6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3757
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 4891
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4892
    return-void

    .line 4894
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4895
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4896
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_50

    .line 4897
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 4898
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4899
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4900
    if-eqz p2, :cond_4c

    .line 4901
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 4902
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4f

    .line 4904
    :cond_4c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4906
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :goto_4f
    goto :goto_2b

    .line 4908
    :cond_50
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 4909
    :cond_68
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4910
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 4911
    const-string v1, "  mOpeningApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4913
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 4914
    const-string v1, "  mClosingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4916
    :cond_8f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_a1

    .line 4917
    const-string v1, "  mChangingApps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4921
    :cond_a1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4922
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "subPrefix"    # Ljava/lang/String;

    .line 4925
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 4926
    .local v0, "index":[I
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4931
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 13
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 6740
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    if-eqz v0, :cond_5

    .line 6742
    return-void

    .line 6744
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 6745
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 6747
    const/4 v0, 0x0

    :try_start_10
    new-instance v7, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;IZZ)V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6757
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 6758
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 6762
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_3e

    .line 6765
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 6766
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 6767
    nop

    .line 6768
    return-void

    .line 6765
    :catchall_3e
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 6766
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    .line 6767
    throw v1
.end method

.method executeAppTransition()V
    .registers 12

    .line 5848
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    .line 5849
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 5850
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    .local v1, "protoLogParam1":J
    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam2":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x45859017

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5853
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    .end local v3    # "protoLogParam2":Ljava/lang/String;
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 5854
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 5856
    :cond_49
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 2871
    const/4 v0, 0x1

    return v0
.end method

.method findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea;
    .registers 6
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 7265
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowType()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean v3, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    return-object v0
.end method

.method findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;
    .registers 6
    .param p1, "windowType"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ownerCanManageAppToken"    # Z
    .param p4, "roundedCornerOverlay"    # Z

    .line 7238
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v0, 0x63

    if-gt p1, v0, :cond_e

    .line 7239
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayAreaPolicy;->getTaskDisplayArea(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0

    .line 7244
    :cond_e
    const/16 v0, 0x7db

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x7dc

    if-ne p1, v0, :cond_17

    goto :goto_1e

    .line 7247
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayAreaPolicy;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0

    .line 7245
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 10

    .line 3984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3986
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 3988
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_28

    .line 3989
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    int-to-long v3, v1

    .local v3, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x24fc6062

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v5, v2, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3991
    .end local v3    # "protoLogParam0":J
    :cond_27
    return-object v0

    .line 3993
    :cond_28
    return-object v1
.end method

.method findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;
    .registers 3
    .param p1, "topFocusedDisplayId"    # I

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_c

    .line 3980
    :cond_a
    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3979
    :goto_10
    return-object v0
.end method

.method findRoundedCornerOverlays()[Landroid/view/SurfaceControl;
    .registers 5

    .line 5934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5935
    .local v0, "roundedCornerOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl;>;"
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 5936
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v3, :cond_24

    .line 5937
    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5939
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_24
    goto :goto_f

    .line 5940
    :cond_25
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/SurfaceControl;

    return-object v1
.end method

.method findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 4
    .param p1, "searchBehind"    # Lcom/android/server/wm/WindowState;
    .param p2, "taskId"    # I

    .line 6897
    new-instance v0, Lcom/android/server/wm/DisplayContent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$1;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3353
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3354
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 3355
    .local v1, "delta":I
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 3357
    .end local v1    # "delta":I
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 2171
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2172
    .local v0, "controller":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AsyncRotationController;->completeRotation(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2175
    :cond_d
    return-void
.end method

.method finishAsyncRotationIfPossible()V
    .registers 3

    .line 2162
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2163
    .local v0, "controller":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->hasSeamlessRotatingWindow()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2164
    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->completeAll()V

    .line 2165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2167
    :cond_12
    return-void
.end method

.method public finishDisplaySwap()V
    .registers 3

    .line 6594
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwappedInProgress:Z

    if-eqz v0, :cond_15

    .line 6595
    const-string v0, "WindowManager"

    const-string v1, "finished display swap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwappedInProgress:Z

    .line 6597
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->noteDisplaySwapFinished()V

    .line 6599
    :cond_15
    return-void
.end method

.method floatWindowsHideTimeout()V
    .registers 1

    .line 7314
    return-void
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2917
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forceDesktopMode()Z
    .registers 2

    .line 4450
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1394
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_8

    .line 1395
    const/4 v1, 0x0

    return-object v1

    .line 1397
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;
    .registers 2

    .line 1983
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    return-object v0
.end method

.method getCurrentOverrideConfigurationChanges()I
    .registers 2

    .line 2832
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    return v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 3295
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicy;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 2

    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 1375
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1542
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .line 1546
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getDisplayRotation()Lcom/android/server/wm/DisplayRotation;
    .registers 2

    .line 1555
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    return-object v0
.end method

.method getDisplayUiContext()Landroid/content/Context;
    .registers 2

    .line 6855
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedTaskDividerController;
    .registers 2

    .line 2774
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    return-object v0
.end method

.method getFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 6310
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda53;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getHideDisplayCutoutLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 5922
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHideDisplayCutoutLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 2

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object v0
.end method

.method getImeFallback()Lcom/android/server/wm/InsetsControlTarget;
    .registers 4

    .line 4408
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4409
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4410
    .local v1, "statusBar":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    move-object v2, v1

    goto :goto_14

    :cond_12
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_14
    return-object v2
.end method

.method getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 4398
    if-eqz p1, :cond_d

    .line 4399
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v0

    if-nez v0, :cond_d

    .line 4400
    return-object p1

    .line 4402
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    return-object v0
.end method

.method getImeInputTarget()Lcom/android/server/wm/InputTarget;
    .registers 2

    .line 4430
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    return-object v0
.end method

.method getImePolicy()I
    .registers 3

    .line 4437
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 4438
    return v1

    .line 4440
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->getImePolicyLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    .line 4441
    .local v0, "imePolicy":I
    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4444
    const/4 v1, 0x0

    return v1

    .line 4446
    :cond_1a
    return v0
.end method

.method getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 3
    .param p1, "type"    # I

    .line 4421
    packed-switch p1, :pswitch_data_c

    .line 4425
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 4423
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 4422
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method getInputMethodWindowVisibleHeight()I
    .registers 8

    .line 3584
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 3585
    .local v0, "state":Landroid/view/InsetsState;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 3586
    .local v1, "imeSource":Landroid/view/InsetsSource;
    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_46

    .line 3589
    :cond_18
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 3590
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 3591
    .local v3, "imeFrame":Landroid/graphics/Rect;
    :goto_27
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3592
    .local v4, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3593
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3595
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    return v2

    .line 3587
    .end local v3    # "imeFrame":Landroid/graphics/Rect;
    .end local v4    # "dockFrame":Landroid/graphics/Rect;
    :cond_46
    :goto_46
    return v2
.end method

.method getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    .line 5767
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 2

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    return-object v0
.end method

.method getInsetsStateController()Lcom/android/server/wm/InsetsStateController;
    .registers 2

    .line 1581
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method getKeepClearAreas()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 6252
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6253
    .local v0, "keepClearAreas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    .line 6254
    return-object v0
.end method

.method getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 6235
    .local p1, "outRestricted":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    .local p2, "outUnrestricted":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 6236
    .local v0, "tmpMatrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 6237
    .local v1, "tmpFloat9":[F
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda37;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 6246
    return-void
.end method

.method getLastHasContent()Z
    .registers 2

    .line 5774
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return v0
.end method

.method getLastOrientation()I
    .registers 2

    .line 1595
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 2

    .line 7233
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method protected getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 6258
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 6259
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 6261
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNaturalOrientation()I
    .registers 3

    .line 5189
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ge v0, v1, :cond_8

    .line 5190
    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    .line 5189
    :goto_9
    return v0
.end method

.method getOrientation()I
    .registers 15

    .line 2928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-nez v1, :cond_2e

    .line 2931
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v7, v1

    .local v7, "protoLogParam0":J
    const-wide/16 v9, -0x1

    .local v9, "protoLogParam1":J
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x623fa5cb

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v1, v11, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2934
    .end local v7    # "protoLogParam0":J
    .end local v9    # "protoLogParam1":J
    :cond_2d
    return v2

    .line 2937
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_65

    .line 2938
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2944
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_60

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    .local v1, "protoLogParam0":J
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v7

    int-to-long v7, v7

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x65efaeee

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v9, v10, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2947
    .end local v1    # "protoLogParam0":J
    .end local v7    # "protoLogParam1":J
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0

    .line 2951
    :cond_65
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->getOrientation()I

    move-result v1

    .line 2952
    .local v1, "orientation":I
    const/4 v7, -0x2

    if-ne v1, v7, :cond_8c

    .line 2954
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v7, :cond_8b

    const-wide/16 v7, -0x1

    .local v7, "protoLogParam0":J
    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v9, v9

    .restart local v9    # "protoLogParam1":J
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x5842ca23

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v4, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v11, v12, v5, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2957
    .end local v7    # "protoLogParam0":J
    .end local v9    # "protoLogParam1":J
    :cond_8b
    return v2

    .line 2962
    :cond_8c
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/MiuiOrientationStub;->updateOrientationForCamera(Lcom/android/server/wm/WindowContainer;I)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera is requesting error orientation, return SCREEN_ORIENTATION_PORTRAIT. Caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x8

    .line 2964
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2963
    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    return v6

    .line 2969
    :cond_b7
    return v1
.end method

.method getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 4189
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getOverlayLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 5930
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;
    .registers 2

    .line 2778
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    return-object v0
.end method

.method getPreferredOptionsPanelGravity()I
    .registers 7

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 2744
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const v3, 0x800053

    const/16 v4, 0x55

    const/16 v5, 0x51

    if-ge v1, v2, :cond_18

    .line 2746
    packed-switch v0, :pswitch_data_20

    .line 2749
    return v5

    .line 2755
    :pswitch_15
    return v3

    .line 2753
    :pswitch_16
    return v5

    .line 2751
    :pswitch_17
    return v4

    .line 2760
    :cond_18
    packed-switch v0, :pswitch_data_2a

    .line 2763
    return v4

    .line 2769
    :pswitch_1c
    return v5

    .line 2767
    :pswitch_1d
    return v3

    .line 2765
    :pswitch_1e
    return v5

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .registers 4

    .line 6705
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 6706
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6707
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 6706
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6708
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6709
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6710
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v1
.end method

.method getProtoFieldId()J
    .registers 3

    .line 3761
    const-wide v0, 0x10b00000003L

    return-wide v0
.end method

.method getRootTask(I)Lcom/android/server/wm/Task;
    .registers 3
    .param p1, "rootTaskId"    # I

    .line 2808
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getRootTask(II)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 2802
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootTaskCount()I
    .registers 3

    .line 2812
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2813
    .local v0, "count":[I
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda36;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 2816
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getRotation()I
    .registers 2

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v0

    return v0
.end method

.method public getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 2

    .line 3626
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 5554
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3284
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 3285
    .local v0, "state":Landroid/view/InsetsState;
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3286
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3287
    return-void
.end method

.method getTopRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 2821
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .registers 6
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .line 3900
    float-to-int v0, p1

    .line 3901
    .local v0, "x":I
    float-to-int v1, p2

    .line 3902
    .local v1, "y":I
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3942
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v2
.end method

.method getWindowCornerRadius()F
    .registers 2

    .line 1379
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    return v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1389
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method getWindowingLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 5918
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6604
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6605
    .local v0, "organizedTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_c

    .line 6606
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6607
    return-void

    .line 6610
    :cond_c
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6611
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 6613
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    .line 6615
    :cond_25
    return-void

    .line 6618
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6620
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onSizeCompatActivityChanged()V

    .line 6622
    :cond_31
    return-void
.end method

.method handleAnimatingStoppedAndTransition()V
    .registers 8

    .line 5867
    const/4 v0, 0x0

    .line 5869
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5871
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_20

    .line 5872
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 5873
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5871
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 5875
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5877
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeededLegacy()V

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 5881
    or-int/2addr v0, v2

    .line 5882
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0xae67c65

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5883
    :cond_3f
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 5884
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 5887
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 5889
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 5890
    return-void
.end method

.method handleCompleteDeferredRemoval()Z
    .registers 4

    .line 3565
    nop

    .line 3566
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->handleCompleteDeferredRemoval()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 3568
    .local v0, "stillDeferringRemoval":Z
    :goto_12
    if-nez v0, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v2, :cond_1c

    .line 3569
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 3570
    return v1

    .line 3572
    :cond_1c
    return v0
.end method

.method handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "checkOpening"    # Z

    .line 1843
    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1693
    :goto_13
    return v0
.end method

.method hasAccess(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 2785
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasAlertWindowSurfaces()Z
    .registers 4

    .line 4259
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_20

    .line 4260
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4261
    return v1

    .line 4259
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4264
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .registers 3

    .line 5056
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 5057
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method hasTopFixedRotationLaunchingApp()Z
    .registers 3

    .line 1972
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method hideFloatWindows(Z)V
    .registers 2
    .param p1, "showHandTimeOut"    # Z

    .line 7303
    return-void
.end method

.method inTransition()Z
    .registers 2

    .line 3672
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .registers 9

    .line 3025
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3026
    .local v0, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-eqz v0, :cond_1a

    .line 3028
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 3029
    .local v1, "newDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_13

    .line 3030
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 3033
    :cond_13
    new-instance v2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 3036
    .end local v1    # "newDisplayInfo":Landroid/view/DisplayInfo;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3039
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 3040
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 3041
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3042
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    .line 3043
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    .line 3044
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 3045
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    .line 3046
    new-instance v1, Landroid/view/PrivacyIndicatorBounds;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 3048
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 3049
    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    .line 3050
    .local v1, "maxDisplayMode":Landroid/view/Display$Mode;
    new-instance v2, Landroid/graphics/Point;

    .line 3051
    if-nez v1, :cond_79

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_7d

    :cond_79
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    .line 3052
    :goto_7d
    if-nez v1, :cond_82

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_86

    :cond_82
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    :goto_86
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    .line 3054
    return-void
.end method

.method isAodShowing()Z
    .registers 3

    .line 6837
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6838
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isAodShowing(I)Z

    move-result v0

    .line 6837
    return v0
.end method

.method isCurrentlyRecording()Z
    .registers 2

    .line 6985
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1978
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isImeAttachedToApp()Z
    .registers 3

    .line 4384
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4387
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 4386
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 4384
    :goto_1b
    return v0
.end method

.method isInputMethodClientFocus(II)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 5036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 5037
    .local v1, "imFocus":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_8

    .line 5038
    return v0

    .line 5041
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_48

    .line 5042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    :cond_48
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_92

    .line 5047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IM target uid/pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting client uid/pid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    :cond_92
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v2, p1, :cond_9f

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-ne v2, p2, :cond_9f

    const/4 v0, 0x1

    :cond_9f
    return v0
.end method

.method isKeyguardAlwaysUnlocked()Z
    .registers 2

    .line 6830
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardGoingAway()Z
    .registers 3

    .line 6822
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6823
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway(I)Z

    move-result v0

    .line 6822
    return v0
.end method

.method isKeyguardLocked()Z
    .registers 3

    .line 6814
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6815
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    .line 6814
    return v0
.end method

.method isKeyguardOccluded()Z
    .registers 3

    .line 6845
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6846
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    .line 6845
    return v0
.end method

.method isLayoutNeeded()Z
    .registers 2

    .line 4887
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isNextTransitionForward()Z
    .registers 5

    .line 5895
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    .line 5896
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5897
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    .line 5898
    .local v0, "type":I
    if-eq v0, v3, :cond_15

    if-ne v0, v2, :cond_16

    :cond_15
    move v1, v3

    :cond_16
    return v1

    .line 5900
    .end local v0    # "type":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 5901
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    move v1, v3

    .line 5900
    :cond_28
    return v1
.end method

.method isPrivate()Z
    .registers 2

    .line 2789
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isReady()Z
    .registers 2

    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 6636
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    return v0
.end method

.method isRemoving()Z
    .registers 2

    .line 6643
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    return v0
.end method

.method isSleeping()Z
    .registers 2

    .line 6771
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    return v0
.end method

.method isSyncFinished()Z
    .registers 2

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isTopResumedActivityHoldingOn()Z
    .registers 3

    .line 6729
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6730
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d

    .line 6731
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    return v1

    .line 6733
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method isTrusted()Z
    .registers 2

    .line 2793
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    return v0
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 6625
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6626
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6625
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 6627
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 6628
    .local v1, "isUidPresent":Z
    :goto_1e
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 6629
    return v1
.end method

.method isVisible()Z
    .registers 2

    .line 2876
    const/4 v0, 0x1

    return v0
.end method

.method isVisibleRequested()Z
    .registers 2

    .line 2881
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method synthetic lambda$applyRotationAndFinishFixedRotation$42$com-android-server-wm-DisplayContent(II)V
    .registers 3
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 6563
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->applyRotation(II)V

    return-void
.end method

.method synthetic lambda$destroyLeakedSurfaces$25$com-android-server-wm-DisplayContent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 4231
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4232
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_7

    .line 4233
    return-void

    .line 4235
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " token="

    const-string v3, " surface="

    const-string v4, "WindowManager"

    if-nez v1, :cond_6c

    .line 4236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4242
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4243
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_be

    .line 4244
    :cond_6c
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_be

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v1

    if-nez v1, :cond_be

    .line 4245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_b9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x739056a2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4249
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_b9
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4250
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 4252
    :cond_be
    :goto_be
    return-void
.end method

.method synthetic lambda$ensureActivitiesVisible$47$com-android-server-wm-DisplayContent(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z
    .param p5, "rootTask"    # Lcom/android/server/wm/Task;

    .line 6751
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v0

    invoke-interface {v0, p0, p5}, Lcom/android/server/wm/DisplayContentStub;->needEnsureVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6752
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 6756
    :cond_d
    return-void
.end method

.method synthetic lambda$findTaskForResizePoint$19$com-android-server-wm-DisplayContent(IIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "delta"    # I
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 3356
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->process(Lcom/android/server/wm/WindowContainer;III)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getTouchableWinAtPointLocked$22$com-android-server-wm-DisplayContent(IILcom/android/server/wm/WindowState;)Z
    .registers 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 3903
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3904
    .local v4, "flags":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_14

    .line 3905
    return v6

    .line 3907
    :cond_14
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_19

    .line 3908
    return v6

    .line 3911
    :cond_19
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 3912
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_27

    .line 3913
    return v6

    .line 3916
    :cond_27
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3918
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_97

    .line 3919
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 3920
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_97

    .line 3921
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v9, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v8, v9}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v8

    .line 3922
    .local v8, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {v8}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v9

    if-eqz v9, :cond_61

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v9, :cond_61

    .line 3924
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    iget v10, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v9, v10}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->getSmallFreeFormWindowBounds(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 3925
    .local v9, "smallFreeFormtouchableRegion":Landroid/graphics/Rect;
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 3926
    return v7

    .line 3928
    :cond_60
    return v6

    .line 3931
    .end local v9    # "smallFreeFormtouchableRegion":Landroid/graphics/Rect;
    :cond_61
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3932
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3933
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v8}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v16

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    add-float/2addr v14, v13

    float-to-int v13, v14

    .line 3931
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3938
    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    .end local v8    # "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_97
    and-int/lit8 v5, v4, 0x28

    .line 3939
    .local v5, "touchFlags":I
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-nez v8, :cond_a3

    if-nez v5, :cond_a4

    :cond_a3
    move v6, v7

    :cond_a4
    return v6
.end method

.method synthetic lambda$new$0$com-android-server-wm-DisplayContent()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 694
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 695
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 696
    return-void

    .line 695
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$new$1$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 755
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 756
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 757
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 758
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 759
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 760
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 761
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2d

    .line 762
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 768
    :cond_2d
    return-void
.end method

.method synthetic lambda$new$2$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 772
    .local v0, "lostFocusUid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 773
    .local v1, "handler":Landroid/os/Handler;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_27

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_27

    .line 774
    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 775
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 779
    :cond_27
    return-void
.end method

.method synthetic lambda$new$3$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 20
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 783
    .local v2, "focusedApp":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_42

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    int-to-long v8, v8

    .local v8, "protoLogParam1":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v10

    .local v10, "protoLogParam2":Z
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->canReceiveKeysReason(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam3":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x4415cdbe

    const/16 v14, 0x34

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v3, v15, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v6

    const/16 v16, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    aput-object v11, v15, v4

    invoke-static {v12, v13, v14, v5, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 787
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":J
    .end local v10    # "protoLogParam2":Z
    .end local v11    # "protoLogParam3":Ljava/lang/String;
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-nez v3, :cond_49

    .line 788
    return v7

    .line 797
    :cond_49
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/16 v8, 0x13

    if-eqz v3, :cond_60

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_5f

    .line 798
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v3

    if-nez v3, :cond_60

    .line 799
    :cond_5f
    return v7

    .line 801
    :cond_60
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dc

    if-ne v3, v9, :cond_7b

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_7b

    .line 802
    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v3

    if-nez v3, :cond_7b

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 803
    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/WindowState;->isAnimating(II)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 805
    return v7

    .line 808
    :cond_7b
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 811
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v8

    if-eqz v8, :cond_a4

    if-eqz v2, :cond_a4

    if-eqz v3, :cond_a4

    if-eq v2, v3, :cond_a4

    .line 812
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 813
    .local v8, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_a4

    .line 814
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v10, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 815
    invoke-interface {v9, v10}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v9

    .line 816
    .local v9, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v9, :cond_a4

    invoke-virtual {v9}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isFlashBackMode()Z

    move-result v10

    if-nez v10, :cond_a4

    .line 817
    return v7

    .line 823
    .end local v8    # "rootTask":Lcom/android/server/wm/Task;
    .end local v9    # "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_a4
    if-nez v2, :cond_bd

    .line 824
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_ba

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x53a4872

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 826
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_ba
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 827
    return v6

    .line 830
    :cond_bd
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v8

    if-nez v8, :cond_da

    .line 832
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_d7

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x55413572

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 834
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_d7
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 835
    return v6

    .line 840
    :cond_da
    if-eqz v3, :cond_132

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v4, :cond_132

    .line 841
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_ff

    .line 843
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_fc

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x3044237b

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 845
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_fc
    iput-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 846
    return v6

    .line 851
    :cond_ff
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    .line 852
    .local v4, "parent":Lcom/android/server/wm/TaskFragment;
    if-eqz v4, :cond_132

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v8

    if-eqz v8, :cond_132

    .line 853
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 854
    .local v8, "hostTask":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v9

    if-eqz v9, :cond_121

    .line 856
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 858
    :cond_121
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_132

    .line 859
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    if-eq v9, v10, :cond_132

    .line 860
    return v7

    .line 865
    .end local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v8    # "hostTask":Lcom/android/server/wm/Task;
    :cond_132
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v4, :cond_146

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x18c9994e

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v4, v10, v7

    invoke-static {v8, v9, v7, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 866
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_146
    iput-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 867
    return v6
.end method

.method synthetic lambda$new$4$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 13
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 871
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    .line 872
    return-void

    .line 877
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    .line 880
    .local v0, "gone":Z
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCastRotationMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 881
    return-void

    .line 884
    :cond_1c
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "WindowManager"

    if-eqz v1, :cond_105

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": gone="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mHaveFrame="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " config reported="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 886
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 888
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    const-string v5, " parentHidden="

    const-string v6, " visibleRequested="

    const-string v7, " visible="

    const-string v8, " mRelayoutCalled="

    if-eqz v0, :cond_b8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  GONE: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 889
    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_9f

    iget-boolean v7, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_9f

    move v7, v3

    goto :goto_a0

    :cond_9f
    move v7, v2

    :goto_a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 891
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 888
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 892
    :cond_b8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  VIS: mViewVisibility="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 893
    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_ed

    iget-boolean v7, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_ed

    move v7, v3

    goto :goto_ee

    :cond_ed
    move v7, v2

    :goto_ee
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 895
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_105
    :goto_105
    if-eqz v0, :cond_10f

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v1, :cond_10f

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v1, :cond_1b5

    .line 902
    :cond_10f
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v1, :cond_116

    .line 903
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 905
    :cond_116
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 906
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 908
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->layoutForART()Z

    .line 911
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateGlobalScale()Z

    .line 913
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 918
    .local v1, "firstLayout":Z
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v2

    .line 919
    invoke-interface {v2, p1}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->shouldAdjustCutoutForSplitIme(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    .line 920
    .local v2, "shouldAdjustCutoutForIme":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->disableCutout:Z

    const/4 v5, 0x0

    if-nez v3, :cond_143

    if-eqz v2, :cond_139

    goto :goto_143

    .line 925
    :cond_139
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_165

    .line 922
    :cond_143
    :goto_143
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPerformLayout need disable cutout!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFramesNoCutout:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_165
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v3, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 931
    if-eqz v1, :cond_17b

    .line 934
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_178

    .line 935
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastFrames()V

    .line 937
    :cond_178
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->onResizeHandled()V

    .line 940
    :cond_17b
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_1b5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LAYOUT: mFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mParentFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 941
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDisplayFrame="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 942
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v1    # "firstLayout":Z
    .end local v2    # "shouldAdjustCutoutForIme":Z
    :cond_1b5
    return-void
.end method

.method synthetic lambda$new$5$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 947
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v0, :cond_5

    .line 948
    return-void

    .line 950
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mHaveFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mViewVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_45
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4f

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_57

    :cond_4f
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_b5

    .line 958
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v0, :cond_5e

    .line 959
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 961
    :cond_5e
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 964
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->layoutForART()Z

    .line 967
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateGlobalScale()Z

    .line 969
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 970
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 971
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mParentFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 972
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDisplayFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 973
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_b5
    return-void
.end method

.method synthetic lambda$new$6$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 978
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking window @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fl=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 979
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$7$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method synthetic lambda$new$8$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 20
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 989
    .local v2, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_14

    move v3, v6

    goto :goto_15

    :cond_14
    move v3, v5

    .line 991
    .local v3, "obscuredChanged":Z
    :goto_15
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 994
    .local v4, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 996
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v7, :cond_10c

    .line 997
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v7

    .line 999
    .local v7, "isDisplayed":Z
    if-eqz v7, :cond_37

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1002
    iput-object v1, v4, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 1003
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v6, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 1006
    :cond_37
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v4, v1, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v8

    .line 1010
    .local v8, "displayHasContent":Z
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    if-nez v9, :cond_5a

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/server/wm/DisplayPolicy;->isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 1012
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v10, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    or-int/2addr v10, v8

    iput-boolean v10, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 1015
    :cond_5a
    iget-boolean v9, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v9, :cond_10c

    if-eqz v7, :cond_10c

    .line 1016
    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1017
    .local v9, "type":I
    const/16 v10, 0x7d8

    if-eq v9, v10, :cond_7a

    const/16 v10, 0x7da

    if-eq v9, v10, :cond_7a

    const/16 v10, 0x7f8

    if-ne v9, v10, :cond_7e

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1020
    invoke-interface {v10}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 1021
    :cond_7a
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v6, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 1023
    :cond_7e
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v10, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_97

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_97

    .line 1025
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v12, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 1029
    :cond_97
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v12, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v13, v13, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    or-int/2addr v12, v13

    iput-boolean v12, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v10

    .line 1033
    invoke-virtual {v10, v1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v10

    .line 1034
    .local v10, "preferredModeId":I
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v12, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v12, :cond_ba

    if-eqz v10, :cond_ba

    .line 1036
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v10, v12, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 1039
    :cond_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v12

    .line 1040
    invoke-virtual {v12, v1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v12

    .line 1041
    .local v12, "preferredMinRefreshRate":F
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v13, v13, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    cmpl-float v13, v13, v11

    if-nez v13, :cond_d6

    cmpl-float v13, v12, v11

    if-eqz v13, :cond_d6

    .line 1043
    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v12, v13, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 1047
    :cond_d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v13

    .line 1048
    invoke-virtual {v13, v1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v13

    .line 1049
    .local v13, "preferredMaxRefreshRate":F
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v14, v14, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    cmpl-float v14, v14, v11

    if-nez v14, :cond_f2

    cmpl-float v11, v13, v11

    if-eqz v11, :cond_f2

    .line 1051
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput v13, v11, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    .line 1055
    :cond_f2
    invoke-static {}, Lcom/android/server/wm/RefreshRatePolicyStub;->getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;

    move-result-object v11

    .line 1056
    invoke-interface {v11, v1}, Lcom/android/server/wm/RefreshRatePolicyStub;->getSceneRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v11

    .line 1057
    .local v11, "preferredSceneMaxRefreshRate":F
    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v11, v14

    if-eqz v14, :cond_10c

    .line 1058
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    .line 1059
    invoke-static {}, Lcom/android/server/wm/RefreshRatePolicyStub;->getInstance()Lcom/android/server/wm/RefreshRatePolicyStub;

    move-result-object v15

    invoke-interface {v15, v1}, Lcom/android/server/wm/RefreshRatePolicyStub;->getSceneRefreshRate(Lcom/android/server/wm/WindowState;)F

    move-result v15

    iput v15, v14, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredSceneMaxRefreshRate:F

    .line 1065
    .end local v7    # "isDisplayed":Z
    .end local v8    # "displayHasContent":Z
    .end local v9    # "type":I
    .end local v10    # "preferredModeId":I
    .end local v11    # "preferredSceneMaxRefreshRate":F
    .end local v12    # "preferredMinRefreshRate":F
    .end local v13    # "preferredMaxRefreshRate":F
    :cond_10c
    if-eqz v3, :cond_121

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_121

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 1068
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 1071
    :cond_121
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    .line 1073
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1076
    .local v7, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->resetContentChanged()V

    .line 1079
    iget-boolean v8, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v8, :cond_2fb

    .line 1081
    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v8

    .line 1082
    .local v8, "committed":Z
    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_166

    if-eqz v8, :cond_166

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v9

    if-eqz v9, :cond_166

    .line 1084
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v9, :cond_152

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x1930e35d

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v9, v13, v5

    invoke-static {v10, v11, v5, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_152
    iput-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 1087
    iget v9, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1088
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v9, :cond_166

    .line 1089
    iget v9, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string/jumbo v10, "wallpaper and commitFinishDrawingLocked true"

    invoke-virtual {v2, v10, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1095
    :cond_166
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v9

    .line 1098
    .local v9, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v10

    invoke-interface {v10, v7}, Lcom/android/server/wm/WindowManagerServiceStub;->getScreenShareProjectAndPrivateCastFlag(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v10

    .line 1099
    .local v10, "applyFlag":I
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionState()I

    move-result v11

    const-string v12, " projectioned:"

    const-string v13, ") isFreeformMode:"

    const-string v14, " for win("

    const-string v15, "WindowManager"

    if-ne v11, v6, :cond_254

    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1100
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionPrivaceState()I

    move-result v11

    if-ne v11, v6, :cond_251

    .line 1101
    if-eqz v7, :cond_204

    iget-object v11, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v11, :cond_204

    iget-object v11, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v11, v11, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v11, :cond_204

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_204

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v11

    .line 1105
    .local v11, "isFreeformMode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMiuiProjection()Z

    move-result v5

    .line 1106
    .local v5, "projectioned":Z
    sget-boolean v16, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v16, :cond_1dd

    .line 1107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .local v17, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    const-string v2, "mApplySurfaceChangesTransaction mMiuiConfigFlag:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1108
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getMiuiConfigFlag()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1df

    .line 1106
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_1dd
    move-object/from16 v17, v2

    .line 1113
    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :goto_1df
    if-eqz v11, :cond_1f2

    .line 1114
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1115
    invoke-interface {v9}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v6

    or-int/2addr v6, v10

    .line 1114
    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    goto :goto_206

    .line 1117
    :cond_1f2
    if-eqz v5, :cond_206

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsPrivacySurfaceView:Z

    if-nez v2, :cond_206

    .line 1118
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    goto :goto_206

    .line 1101
    .end local v5    # "projectioned":Z
    .end local v11    # "isFreeformMode":Z
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_204
    move-object/from16 v17, v2

    .line 1123
    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_206
    :goto_206
    if-eqz v7, :cond_2fd

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2fd

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2fd

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v2, :cond_2fd

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v2

    if-eqz v2, :cond_233

    .line 1127
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1128
    invoke-interface {v9}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v5

    or-int/2addr v5, v10

    .line 1127
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    goto/16 :goto_2fd

    .line 1131
    :cond_233
    const/4 v2, 0x1

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionState()I

    move-result v5

    if-ne v5, v2, :cond_244

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1132
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionPrivaceState()I

    move-result v5

    if-eq v5, v2, :cond_2fd

    .line 1133
    :cond_244
    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1134
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    goto/16 :goto_2fd

    .line 1100
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_251
    move-object/from16 v17, v2

    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    goto :goto_256

    .line 1099
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_254
    move-object/from16 v17, v2

    .line 1139
    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :goto_256
    if-eqz v7, :cond_2b5

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2b5

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2b5

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2b5

    .line 1142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    .line 1143
    .local v2, "isFreeformMode":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMiuiProjection()Z

    move-result v5

    .line 1144
    .restart local v5    # "projectioned":Z
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_2a6

    .line 1145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mApplySurfaceChangesTransaction reset mMiuiConfigFlag:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1146
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getMiuiConfigFlag()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1145
    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_2a6
    if-eqz v2, :cond_2b5

    if-eqz v5, :cond_2b5

    .line 1151
    iget-object v6, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v6, v6, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1152
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    .line 1156
    .end local v2    # "isFreeformMode":Z
    .end local v5    # "projectioned":Z
    :cond_2b5
    if-eqz v7, :cond_2fd

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2fd

    iget-object v2, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2fd

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v2, :cond_2fd

    .line 1159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMiuiProjection()Z

    move-result v2

    .line 1160
    .local v2, "projectioned":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_2ed

    .line 1161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mApplySurfaceChangesTransaction reset for inputWindow("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") projectioned:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_2ed
    if-eqz v2, :cond_2fd

    .line 1165
    iget-object v5, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, v5, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v10}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 1166
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setMiuiProjection(Z)V

    goto :goto_2fd

    .line 1079
    .end local v8    # "committed":Z
    .end local v9    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v10    # "applyFlag":I
    .end local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .local v2, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_2fb
    move-object/from16 v17, v2

    .line 1173
    .end local v2    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    .restart local v17    # "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    :cond_2fd
    :goto_2fd
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1174
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_31d

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_31d

    .line 1175
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1176
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1177
    .local v5, "updateAllDrawn":Z
    if-eqz v5, :cond_31d

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31d

    .line 1178
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v5    # "updateAllDrawn":Z
    :cond_31d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    .line 1183
    return-void
.end method

.method synthetic lambda$onWindowFreezeTimeout$33$com-android-server-wm-DisplayContent(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 5065
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5066
    return-void

    .line 5068
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    .line 5069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 5071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing orientation change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    return-void
.end method

.method synthetic lambda$remove$44$com-android-server-wm-DisplayContent(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 6678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method synthetic lambda$requestChangeTransitionIfNeeded$20$com-android-server-wm-DisplayContent(J)V
    .registers 5
    .param p1, "startTime"    # J

    .line 3662
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method synthetic lambda$setRoundedCornerOverlaysCanScreenShot$34$com-android-server-wm-DisplayContent(ZZLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "canScreenshot"    # Z
    .param p2, "immediately"    # Z
    .param p3, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 5952
    if-eqz p3, :cond_9

    .line 5953
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 5954
    .local v0, "clientSurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setSurfaceCanScreenShot(Landroid/view/SurfaceControl;ZZ)V

    .line 5956
    .end local v0    # "clientSurfaceControl":Landroid/view/SurfaceControl;
    :cond_9
    return-void
.end method

.method synthetic lambda$shouldWaitForSystemDecorWindowsOnBoot$31$com-android-server-wm-DisplayContent(Landroid/util/SparseBooleanArray;Lcom/android/server/wm/WindowState;)Z
    .registers 14
    .param p1, "drawnWindowTypes"    # Landroid/util/SparseBooleanArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 4967
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 4968
    .local v0, "isVisible":Z
    :goto_f
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    .line 4969
    .local v3, "isDrawn":Z
    if-eqz v0, :cond_32

    if-nez v3, :cond_32

    .line 4970
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz v4, :cond_31

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    int-to-long v4, v4

    .local v4, "protoLogParam0":J
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x16bcd9fb

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4973
    .end local v4    # "protoLogParam0":J
    :cond_31
    return v2

    .line 4975
    :cond_32
    if-eqz v3, :cond_51

    .line 4976
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v4, :sswitch_data_52

    goto :goto_51

    .line 4983
    :sswitch_3c
    const/16 v2, 0x7f8

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4984
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v4

    .line 4983
    invoke-virtual {p1, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_51

    .line 4980
    :sswitch_4a
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4988
    :cond_51
    :goto_51
    return v1

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_4a
        0x7dd -> :sswitch_4a
        0x7e5 -> :sswitch_4a
        0x7f8 -> :sswitch_3c
    .end sparse-switch
.end method

.method synthetic lambda$startAsyncRotation$10$com-android-server-wm-DisplayContent()V
    .registers 3

    .line 2142
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2143
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 2144
    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2148
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2149
    return-void

    .line 2148
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$updateDisplayAreaOrganizers$17$com-android-server-wm-DisplayContent(Lcom/android/server/wm/DisplayArea;)V
    .registers 4
    .param p1, "displayArea"    # Lcom/android/server/wm/DisplayArea;

    .line 3309
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3310
    return-void

    .line 3313
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v1, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 3315
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v0

    .line 3316
    .local v0, "organizer":Landroid/window/IDisplayAreaOrganizer;
    if-eqz v0, :cond_18

    .line 3317
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 3319
    :cond_18
    return-void
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .registers 4

    .line 4212
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4213
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4215
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 4217
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4220
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4221
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4222
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4223
    return-void
.end method

.method loadDisplayCutout(II)Landroid/view/DisplayCutout;
    .registers 10
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 3265
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_9

    goto :goto_25

    .line 3268
    :cond_9
    nop

    .line 3269
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 3268
    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 3266
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method loadRoundedCorners(II)Landroid/view/RoundedCorners;
    .registers 10
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 3274
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v1, :cond_9

    goto :goto_25

    .line 3277
    :cond_9
    nop

    .line 3278
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 3277
    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0

    .line 3275
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 5581
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 5582
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 5581
    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 5559
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    .line 5560
    .local v0, "s":Landroid/view/SurfaceSession;
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 5561
    .local v1, "b":Landroid/view/SurfaceControl$Builder;
    if-nez p1, :cond_18

    .line 5562
    return-object v1

    .line 5565
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5566
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 5565
    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 5576
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method mayImeShowOnLaunchingActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1955
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1956
    .local v0, "win":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1957
    return v1

    .line 1961
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1962
    .local v2, "softInputMode":I
    and-int/lit8 v3, v2, 0xf

    packed-switch v3, :pswitch_data_16

    .line 1967
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    return v1

    .line 1965
    :pswitch_14
    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1292
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastDeltaRotation:I

    .line 1294
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 1296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1297
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1298
    .local v1, "sc":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_2c

    .line 1299
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1296
    .end local v1    # "sc":Landroid/view/SurfaceControl;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1303
    .end local v0    # "i":I
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 1304
    return-void
.end method

.method notifyInsetsChanged(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 2184
    .local p1, "dispatchInsetsChanged":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_26

    .line 2187
    nop

    .line 2188
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 2189
    .local v0, "rotatedState":Landroid/view/InsetsState;
    if-eqz v0, :cond_26

    .line 2190
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 2191
    .local v1, "state":Landroid/view/InsetsState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    const/16 v3, 0x18

    if-ge v2, v3, :cond_26

    .line 2192
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2193
    .local v3, "source":Landroid/view/InsetsSource;
    if-eqz v3, :cond_23

    .line 2194
    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 2191
    .end local v3    # "source":Landroid/view/InsetsSource;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2199
    .end local v0    # "rotatedState":Landroid/view/InsetsState;
    .end local v1    # "state":Landroid/view/InsetsState;
    .end local v2    # "i":I
    :cond_26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2200
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v1, :cond_31

    .line 2201
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->notifyInsetsChanged()V

    .line 2205
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2206
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v1, :cond_48

    const/16 v2, 0x13

    .line 2207
    invoke-interface {v1, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 2208
    .local v0, "isImeShow":Z
    :goto_49
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->updateImeVisibilityIfNeeded(IZ)V

    .line 2210
    .end local v0    # "isImeShow":Z
    :cond_52
    return-void
.end method

.method notifyKeyguardFlagsChanged()V
    .registers 5

    .line 6783
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6785
    return-void

    .line 6789
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    .line 6790
    .local v0, "wasTransitionSet":Z
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 6791
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6793
    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 6797
    if-nez v0, :cond_1e

    .line 6798
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 6800
    :cond_1e
    return-void
.end method

.method okToAnimate(ZZ)Z
    .registers 4
    .param p1, "ignoreFrozen"    # Z
    .param p2, "ignoreScreenOn"    # Z

    .line 5306
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5308
    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_14
    if-nez p2, :cond_20

    .line 5309
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 5306
    :goto_23
    return v0
.end method

.method okToDisplay()Z
    .registers 2

    .line 5292
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    move-result v0

    return v0
.end method

.method okToDisplay(ZZ)Z
    .registers 7
    .param p1, "ignoreFrozen"    # Z
    .param p2, "ignoreScreenOn"    # Z

    .line 5296
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 5297
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_21

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 5299
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    move v1, v2

    .line 5297
    :goto_22
    return v1

    .line 5301
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    return v1
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 2886
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->onAppTransitionDone()V

    .line 2887
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2890
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_23

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2891
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 2892
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isRotatingSeamlessly()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2893
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 2895
    :cond_23
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2838
    .local v0, "lastOrientation":I
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2840
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v1, :cond_16

    .line 2841
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v1, p0, p1}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->displayConfigurationChange(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 2844
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v1, :cond_22

    .line 2845
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2846
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedTaskController;->onPostDisplayConfigurationChanged()V

    .line 2849
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 2852
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v1, :cond_2c

    .line 2853
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(I)V

    .line 2856
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_5a

    .line 2857
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x67b

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2859
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x67c

    .line 2860
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2857
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2863
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v1, :cond_67

    .line 2864
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-interface {v1, p0, p1}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->onDisplayInfoChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 2867
    :cond_67
    return-void
.end method

.method onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 7
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 1664
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 1669
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant()Z

    move-result v2

    .line 1670
    .local v2, "handled":Z
    if-nez v1, :cond_c

    .line 1671
    return v2

    .line 1674
    :cond_c
    const/4 v3, 0x0

    if-eqz v2, :cond_25

    instance-of v4, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_25

    .line 1675
    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1676
    .local v4, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v1, v4, v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    .line 1678
    .local v0, "kept":Z
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1679
    if-nez v0, :cond_24

    .line 1680
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1682
    .end local v0    # "kept":Z
    .end local v4    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    goto :goto_28

    .line 1685
    :cond_25
    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 1688
    :goto_28
    return v2
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 5286
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5287
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 5288
    return-void
.end method

.method onDisplayChanged()V
    .registers 15

    .line 6265
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 6266
    .local v0, "lastDisplayState":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6269
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 6270
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    .line 6271
    .local v2, "displayState":I
    if-eqz v1, :cond_4f

    .line 6272
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    .line 6273
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_28

    .line 6274
    :cond_1f
    if-ne v2, v3, :cond_28

    .line 6275
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    .line 6277
    :cond_28
    :goto_28
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v5, :cond_4a

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v5, v5

    .local v5, "protoLogParam0":J
    int-to-long v7, v2

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x16bd942b

    const/4 v11, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v3, v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v4

    const-string v4, "Display %d state is now (%d), so update recording?"

    invoke-static {v9, v10, v11, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 6280
    .end local v5    # "protoLogParam0":J
    .end local v7    # "protoLogParam1":J
    :cond_4a
    if-eq v0, v2, :cond_4f

    .line 6283
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    .line 6288
    :cond_4f
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 6289
    invoke-static {v2}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v3

    if-nez v3, :cond_66

    if-eqz v2, :cond_66

    .line 6290
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6291
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContextListenerController;->dispatchPendingConfigurationIfNeeded(I)V

    .line 6293
    :cond_66
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 6294
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3013
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3014
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusionLimit()V

    .line 3015
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 3016
    return-void
.end method

.method onDisplayInfoChanged()V
    .registers 4

    .line 2993
    sget-boolean v0, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    sget-boolean v1, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(ZZ)V

    .line 2994
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 2995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    .line 2996
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 2997
    return-void
.end method

.method onIsIgnoreOrientationRequestDisabledChanged()V
    .registers 2

    .line 6872
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    .line 6875
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 6877
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_12

    .line 6878
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 6880
    :cond_12
    return-void
.end method

.method onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 4171
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4172
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 4173
    return-void

    .line 4177
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_18

    .line 4179
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 4182
    :cond_18
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 10
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 5627
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 5630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 5632
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 5634
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_28

    .line 5635
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5636
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 5637
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5640
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 5641
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5642
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V

    .line 5646
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    .line 5647
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v4, 0x3e8

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 5646
    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContextListenerController;->registerWindowContainerListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;IILandroid/os/Bundle;)V

    .line 5650
    :cond_4d
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 6513
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6514
    .local v0, "currOverrideConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 6515
    .local v1, "currRotation":I
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 6517
    .local v2, "overrideRotation":I
    const/4 v3, 0x0

    .line 6518
    .local v3, "shouldRecoveryFloatWindowState":Z
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1c

    if-eq v2, v4, :cond_1c

    if-eq v1, v2, :cond_1c

    .line 6520
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationAndFinishFixedRotation(II)V

    .line 6522
    const/4 v3, 0x1

    .line 6524
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 6525
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6526
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    .line 6527
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v5, :cond_35

    .line 6528
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 6529
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v5, "new-config"

    iput-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 6531
    :cond_35
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 6534
    if-eqz v3, :cond_40

    .line 6535
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->recoveryFloatWindowState(Z)V

    .line 6537
    :cond_40
    return-void
.end method

.method onResize()V
    .registers 2

    .line 6541
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->onResize()V

    .line 6542
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6543
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AccessibilityController;->onDisplaySizeChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 6545
    :cond_14
    return-void
.end method

.method onRunningActivityChanged()V
    .registers 2

    .line 4165
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->onRunningActivityChanged()V

    .line 4166
    return-void
.end method

.method onShowImeRequested()V
    .registers 3

    .line 4455
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_9

    goto :goto_28

    .line 4460
    :cond_9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4461
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 4464
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_27

    .line 4465
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;)V

    .line 4468
    :cond_27
    return-void

    .line 4456
    :cond_28
    :goto_28
    return-void
.end method

.method onWindowAnimationFinished(Lcom/android/server/wm/WindowContainer;I)V
    .registers 13
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "type"    # I

    .line 5081
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_3c

    .line 5082
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam2":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam3":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x274700d5

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v9, 0x2

    aput-object v2, v7, v9

    const/4 v9, 0x3

    aput-object v3, v7, v9

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5087
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    .end local v2    # "protoLogParam2":Ljava/lang/String;
    .end local v3    # "protoLogParam3":Ljava/lang/String;
    :cond_3c
    and-int/lit8 v0, p2, 0x19

    if-eqz v0, :cond_43

    .line 5088
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 5090
    :cond_43
    return-void
.end method

.method onWindowFreezeTimeout()V
    .registers 3

    .line 5061
    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5064
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5073
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5074
    return-void
.end method

.method pauseRecording()V
    .registers 2

    .line 6958
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_7

    .line 6959
    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    .line 6961
    :cond_7
    return-void
.end method

.method performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I
    .registers 8
    .param p1, "values"    # Landroid/content/res/Configuration;

    .line 6476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6477
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 6478
    .local v0, "changes":I
    if-eqz v0, :cond_b5

    .line 6479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override config changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6481
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6483
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    .line 6484
    .local v1, "isDensityChange":Z
    :goto_51
    if-eqz v1, :cond_7d

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_7d

    .line 6485
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 6489
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda32;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v4, 0x18

    .line 6491
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    .line 6492
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6489
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6493
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 6495
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7d
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 6496
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6495
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    .line 6497
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 6498
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 6502
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_b5

    .line 6503
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6504
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v4

    .line 6503
    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateConfigurationForEmbeddingDivider(Landroid/content/res/Configuration;Z)V

    .line 6508
    .end local v1    # "isDensityChange":Z
    :cond_b5
    return v0
.end method

.method performLayout(ZZ)V
    .registers 6
    .param p1, "initial"    # Z
    .param p2, "updateInputWindows"    # Z

    .line 5194
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5196
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->performLayoutNoTrace(ZZ)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    .line 5198
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5199
    nop

    .line 5200
    return-void

    .line 5198
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5199
    throw v2
.end method

.method pointWithinAppWindow(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3326
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3327
    .local v1, "targetWindowType":[I
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda56;-><init>([III)V

    const-class v4, Lcom/android/server/wm/WindowState;

    .line 3336
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    .line 3327
    invoke-static {v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3337
    .local v2, "fn":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3338
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3339
    aget v4, v1, v3

    if-gt v0, v4, :cond_29

    aget v4, v1, v3

    const/16 v5, 0x63

    if-gt v4, v5, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v3

    :goto_2a
    return v0
.end method

.method prepareAppTransition(I)V
    .registers 3
    .param p1, "transit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 5810
    return-void
.end method

.method prepareAppTransition(II)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5818
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppTransition;->prepareAppTransition(II)Z

    move-result v0

    .line 5819
    .local v0, "prepared":Z
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    .line 5820
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 5822
    :cond_13
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 5721
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "prepareSurfaces"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5723
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 5724
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->prepareSurfaces()V

    .line 5728
    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_17

    .line 5730
    .end local v2    # "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5731
    nop

    .line 5732
    return-void

    .line 5730
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5731
    throw v2
.end method

.method public providesMaxBounds()Z
    .registers 2

    .line 6928
    const/4 v0, 0x1

    return v0
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .registers 8
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 1493
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1494
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    if-ne v0, p0, :cond_7

    .line 1495
    return-void

    .line 1497
    :cond_7
    if-eqz v0, :cond_20

    .line 1498
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1501
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1505
    :cond_20
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 1507
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1508
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_37

    :cond_36
    const/4 v1, -0x1

    .line 1509
    .local v1, "prevDisplayId":I
    :goto_37
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    aput v5, v3, v4

    .line 1509
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    .line 1512
    .end local v1    # "prevDisplayId":I
    :cond_4b
    return-void
.end method

.method reapplyMagnificationSpec()V
    .registers 3

    .line 5615
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_d

    .line 5616
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 5618
    :cond_d
    return-void
.end method

.method reconfigureDisplayLocked()V
    .registers 7

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1604
    return-void

    .line 1606
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    .line 1610
    .local v0, "configChanged":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1611
    .local v1, "currentDisplayConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1612
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1613
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 1614
    .local v2, "changes":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    move v5, v3

    goto :goto_2c

    :cond_2b
    move v5, v4

    :goto_2c
    or-int/2addr v0, v5

    .line 1616
    if-eqz v0, :cond_4a

    .line 1617
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1618
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1619
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    goto :goto_47

    .line 1620
    :cond_3e
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v3, :cond_47

    .line 1621
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4, v4, p0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 1623
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 1626
    :cond_4a
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1629
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateWindowCornerRadius()V

    .line 1630
    return-void
.end method

.method recoveryFloatWindowState(Z)V
    .registers 4
    .param p1, "sendMessageOnly"    # Z

    .line 7317
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->recoveryFloatWindowState(ZJ)V

    .line 7318
    return-void
.end method

.method recoveryFloatWindowState(ZJ)V
    .registers 4
    .param p1, "sendMessageOnly"    # Z
    .param p2, "delayTime"    # J

    .line 7338
    return-void
.end method

.method refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4549
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->canScreenshotIme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 4550
    .local v0, "canScreenshot":Z
    :goto_e
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z

    move-result v1

    return v1
.end method

.method registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5783
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5784
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 1599
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransitionController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1600
    return-void
.end method

.method registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 6185
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6187
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 6188
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_14

    .line 6190
    .end local v0    # "changed":Z
    :cond_13
    const/4 v0, 0x0

    .line 6193
    .restart local v0    # "changed":Z
    :goto_14
    if-nez v0, :cond_2e

    .line 6194
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_1d

    .line 6195
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 6199
    .local v1, "unrestrictedOrNull":Landroid/graphics/Region;
    :goto_1e
    :try_start_1e
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-interface {p1, v2, v3, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 6203
    goto :goto_2e

    .line 6201
    :catch_26
    move-exception v2

    .line 6202
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "Failed to notify SystemGestureExclusionListener during register"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6205
    .end local v1    # "unrestrictedOrNull":Landroid/graphics/Region;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method releaseSelfIfNeeded()V
    .registers 3

    .line 6687
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_5

    .line 6688
    return-void

    .line 6692
    :cond_5
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 6694
    .local v0, "hasNonEmptyHomeRootTask":Z
    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 6697
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda51;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    goto :goto_28

    .line 6698
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_28

    .line 6699
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 6701
    :cond_28
    :goto_28
    return-void
.end method

.method remove()V
    .registers 5

    .line 6647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 6650
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 6652
    :try_start_a
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_59

    .line 6660
    .local v1, "lastReparentedRootTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 6661
    nop

    .line 6662
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 6664
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_28

    .line 6665
    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->remove()V

    .line 6670
    :cond_28
    if-eqz v1, :cond_2d

    .line 6671
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 6673
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 6674
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->release()V

    .line 6676
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 6677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 6679
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6681
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v2, "clear all"

    invoke-static {v0, v3, v2}, Lcom/android/server/wm/EventLogTags;->writeWmSleepToken(IILjava/lang/String;)V

    .line 6682
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 6684
    :cond_58
    return-void

    .line 6660
    .end local v1    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    :catchall_59
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 6661
    throw v0
.end method

.method removeAllTasks()V
    .registers 2

    .line 6851
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda38;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 6852
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1515
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    .line 1516
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    const-string v1, "WindowManager"

    if-nez v0, :cond_21

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1521
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1523
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_48

    .line 1524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1528
    :cond_48
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 1529
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v1, :cond_56

    .line 1531
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 1532
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1534
    :cond_56
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 3513
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 3515
    return-void

    .line 3517
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    .line 3518
    return-void
.end method

.method removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowContainer;

    .line 4714
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_36

    if-nez p1, :cond_7

    goto :goto_36

    .line 4719
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4720
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 4721
    return-void

    .line 4724
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->getImeTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4725
    .local v0, "screenshotTarget":Lcom/android/server/wm/WindowState;
    if-eq p1, v0, :cond_2f

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 4726
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    .line 4727
    .local v1, "winIsOrContainsScreenshotTarget":Z
    :goto_30
    if-eqz v1, :cond_35

    .line 4728
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    .line 4730
    :cond_35
    return-void

    .line 4715
    .end local v0    # "screenshotTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "winIsOrContainsScreenshotTarget":Z
    :cond_36
    :goto_36
    return-void
.end method

.method removeImeSurfaceImmediately()V
    .registers 3

    .line 4734
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_e

    .line 4735
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->detach(Landroid/view/SurfaceControl$Transaction;)V

    .line 4736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 4738
    :cond_e
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 3522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    .line 3525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 3526
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 3527
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 3528
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 3529
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 3530
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 3531
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 3532
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3533
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    invoke-virtual {v1}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->destroy()V

    .line 3534
    invoke-super {p0}, Lcom/android/server/wm/RootDisplayArea;->removeImmediately()V

    .line 3535
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_4f

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_4f
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    .line 3537
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 3540
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V

    .line 3541
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 3542
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 3543
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 3544
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->onDisplayRemoved()V

    .line 3545
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    .line 3546
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController;->onDisplayRemoved(I)V

    .line 3547
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3548
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 3550
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_a5

    .line 3553
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 3554
    nop

    .line 3558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3559
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3560
    return-void

    .line 3553
    :catchall_a5
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    .line 3554
    throw v1
.end method

.method varargs removeRootTasksInWindowingModes([I)V
    .registers 6
    .param p1, "windowingModes"    # [I

    .line 6318
    if-eqz p1, :cond_2c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2c

    .line 6325
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6326
    .local v0, "rootTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_2b

    .line 6337
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 6336
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 6339
    .end local v1    # "i":I
    :cond_2b
    return-void

    .line 6319
    .end local v0    # "rootTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_2c
    :goto_2c
    return-void
.end method

.method varargs removeRootTasksWithActivityTypes([I)V
    .registers 6
    .param p1, "activityTypes"    # [I

    .line 6342
    if-eqz p1, :cond_2c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2c

    .line 6349
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6350
    .local v0, "rootTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 6365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_2b

    .line 6366
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 6365
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 6368
    .end local v1    # "i":I
    :cond_2b
    return-void

    .line 6343
    .end local v0    # "rootTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_2c
    :goto_2c
    return-void
.end method

.method removeShellRoot(I)V
    .registers 5
    .param p1, "windowType"    # I

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1466
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ShellRoot;

    .line 1467
    .local v1, "root":Lcom/android/server/wm/ShellRoot;
    if-nez v1, :cond_17

    .line 1468
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1470
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/wm/ShellRoot;->clear()V

    .line 1471
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1472
    .end local v1    # "root":Lcom/android/server/wm/ShellRoot;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1473
    return-void

    .line 1472
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "animateExit"    # Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 1436
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_13

    .line 1437
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    .line 1439
    :cond_13
    return-object v0
.end method

.method reparentToHideDisplayCutoutlayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 5594
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHideDisplayCutoutLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5595
    return-void
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;

    .line 5589
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5590
    return-void
.end method

.method requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V
    .registers 11
    .param p1, "changes"    # I
    .param p2, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 3635
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_5

    return-void

    .line 3636
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3637
    .local v0, "controller":Lcom/android/server/wm/TransitionController;
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3638
    if-nez p2, :cond_1c

    .line 3641
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3642
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 3643
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    .line 3645
    :cond_1b
    return-void

    .line 3639
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided displayChange for non-new transition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3647
    :cond_24
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p0

    move-object v5, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object v1

    .line 3649
    .local v1, "t":Lcom/android/server/wm/Transition;
    if-eqz v1, :cond_65

    .line 3650
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    .line 3651
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_46

    .line 3655
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Transition;->setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V

    .line 3656
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v2, :cond_62

    .line 3657
    invoke-virtual {v2}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    goto :goto_62

    .line 3659
    :cond_46
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3660
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 3661
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V

    .line 3663
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    .line 3665
    :cond_62
    :goto_62
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/Transition;->setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V

    .line 3667
    :cond_65
    return-void
.end method

.method requestTransitionAndLegacyPrepare(II)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 5834
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 5835
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 5837
    return-void
.end method

.method requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "trigger"    # Lcom/android/server/wm/WindowContainer;

    .line 5842
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 5843
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 5845
    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 3600
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    .line 3601
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, v0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 3602
    return-void
.end method

.method rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 2118
    .local v0, "rotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 2119
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 2121
    :cond_a
    return-void
.end method

.method rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1810
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 1811
    return v1

    .line 1813
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    if-nez v0, :cond_f

    .line 1814
    return v1

    .line 1816
    :cond_f
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_22

    .line 1817
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda14;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/wm/DisplayContent;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1821
    .local v0, "nextCandidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_22

    .line 1822
    move-object p1, v0

    .line 1825
    .end local v0    # "nextCandidate":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v0

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_35

    goto :goto_47

    .line 1829
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 1832
    .local v0, "currentRotation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getEmbeddedOrientation()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v2

    .line 1835
    .local v2, "rotation":I
    if-ne v2, v0, :cond_46

    .line 1836
    return v1

    .line 1838
    :cond_46
    return v2

    .line 1827
    .end local v0    # "currentRotation":I
    .end local v2    # "rotation":I
    :cond_47
    :goto_47
    return v1
.end method

.method sandboxDisplayApis()Z
    .registers 2

    .line 6944
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    return v0
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "oldFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3961
    if-eqz p1, :cond_14

    if-eqz p2, :cond_b

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_14

    .line 3966
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 3968
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 3969
    return-void

    .line 3962
    :cond_14
    :goto_14
    return-void
.end method

.method screenshotDisplayLocked()Landroid/graphics/Bitmap;
    .registers 10

    .line 5248
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 5249
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 5250
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    :cond_16
    return-object v2

    .line 5255
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 5256
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 5257
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_2e

    .line 5258
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 5259
    .local v3, "inRotation":Z
    :goto_2f
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v4, :cond_3a

    if-eqz v3, :cond_3a

    const-string v4, "Taking screenshot while rotating"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    :cond_3a
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5263
    .local v4, "displayToken":Landroid/os/IBinder;
    new-instance v5, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v5, v4}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 5265
    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v5

    .line 5266
    invoke-virtual {v5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v5

    .line 5267
    .local v5, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 5268
    invoke-static {v5}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v6

    .line 5269
    .local v6, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v6, :cond_54

    move-object v7, v2

    goto :goto_58

    :cond_54
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 5270
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_58
    if-nez v7, :cond_60

    .line 5271
    const-string v8, "Failed to take screenshot"

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5272
    return-object v2

    .line 5277
    :cond_60
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5278
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eq v1, v7, :cond_69

    .line 5279
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 5281
    :cond_69
    return-object v1
.end method

.method sendNewConfiguration()V
    .registers 4

    .line 1633
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1634
    return-void

    .line 1636
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1637
    return-void

    .line 1640
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    move-result v0

    .line 1641
    .local v0, "configUpdated":Z
    if-eqz v0, :cond_17

    .line 1642
    return-void

    .line 1648
    :cond_17
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    .line 1654
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v1, :cond_31

    .line 1655
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1656
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "config-unchanged"

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1658
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1660
    :cond_31
    return-void
.end method

.method setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .registers 3
    .param p1, "session"    # Landroid/view/ContentRecordingSession;

    .line 6970
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getContentRecorder()Lcom/android/server/wm/ContentRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ContentRecorder;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 6971
    return-void
.end method

.method setDisplayWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 2909
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 2910
    return-void
.end method

.method setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2025
    .local v0, "prevRotatedLaunchingApp":Lcom/android/server/wm/WindowToken;
    if-ne v0, p1, :cond_f

    .line 2026
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_f

    .line 2028
    return-void

    .line 2030
    :cond_f
    if-eqz v0, :cond_39

    .line 2031
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p2, :cond_39

    const/4 v1, 0x3

    .line 2033
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->isAnimating(I)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2034
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2039
    :cond_2a
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 2040
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq p1, v1, :cond_38

    .line 2044
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 2046
    :cond_38
    return-void

    .line 2049
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_42

    .line 2050
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 2052
    :cond_42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 2053
    if-eqz v0, :cond_4a

    .line 2054
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    .line 2056
    :cond_4a
    return-void
.end method

.method setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1987
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1988
    return-void
.end method

.method setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I

    .line 1991
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_27

    if-eqz p1, :cond_27

    .line 1992
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V

    .line 1995
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->-$$Nest$fgetmAnimatingRecents(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1996
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    nop

    :goto_22
    move v0, v1

    .line 1997
    .local v0, "shouldDebounce":Z
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    .end local v0    # "shouldDebounce":Z
    goto :goto_43

    .line 1998
    :cond_27
    if-eqz v0, :cond_43

    if-nez p1, :cond_43

    .line 1999
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V

    .line 2001
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 2006
    const-wide/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->recoveryFloatWindowState(ZJ)V

    goto :goto_44

    .line 1998
    :cond_43
    :goto_43
    nop

    .line 2010
    :cond_44
    :goto_44
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFixedRotationLaunchingApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_89
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 2017
    return-void
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 14
    .param p1, "newFocus"    # Lcom/android/server/wm/ActivityRecord;

    .line 4134
    if-eqz p1, :cond_44

    .line 4135
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4136
    .local v0, "appDisplay":Lcom/android/server/wm/DisplayContent;
    if-eq v0, p0, :cond_3d

    .line 4137
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4138
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    :cond_2e
    const-string/jumbo v3, "none"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4143
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 4145
    .end local v0    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_4a

    .line 4146
    return v1

    .line 4148
    :cond_4a
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_78

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    int-to-long v4, v4

    .local v4, "protoLogParam1":J
    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam2":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2619b034

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-static {v8, v9, v6, v3, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4150
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    .end local v7    # "protoLogParam2":Ljava/lang/String;
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_82

    :cond_81
    move-object v0, v3

    .line 4151
    .local v0, "oldTask":Lcom/android/server/wm/Task;
    :goto_82
    if-eqz p1, :cond_88

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4152
    .local v3, "newTask":Lcom/android/server/wm/Task;
    :cond_88
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 4153
    if-eq v0, v3, :cond_96

    .line 4154
    if-eqz v0, :cond_91

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    .line 4155
    :cond_91
    if-eqz v3, :cond_96

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    .line 4158
    :cond_96
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V

    .line 4159
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 4160
    return v2
.end method

.method setForcedDensity(II)V
    .registers 6
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .line 3204
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 3205
    const/4 v0, -0x2

    if-ne p2, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    move v0, v1

    .line 3206
    .local v0, "updateCurrent":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v1, p2, :cond_19

    if-eqz v0, :cond_1e

    .line 3207
    :cond_19
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3208
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3210
    :cond_1e
    if-eqz v0, :cond_21

    .line 3212
    return-void

    .line 3215
    :cond_21
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne p1, v1, :cond_26

    .line 3216
    const/4 p1, 0x0

    .line 3218
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 3219
    return-void
.end method

.method setForcedScalingMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3223
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 3224
    const/4 p1, 0x0

    .line 3227
    :cond_4
    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 3228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using display scaling mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "off"

    goto :goto_1f

    :cond_1d
    const-string v1, "auto"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3231
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V

    .line 3232
    return-void
.end method

.method setForcedSize(II)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 3237
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_e

    if-le p1, v0, :cond_e

    .line 3238
    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 3239
    .local v0, "ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int p2, v1

    .line 3240
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 3243
    .end local v0    # "ratio":F
    :cond_e
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1a

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v0, p2, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 3244
    if-eqz v0, :cond_3c

    .line 3247
    const/16 v0, 0xc8

    .line 3248
    .local v0, "minSize":I
    const/4 v2, 0x2

    .line 3249
    .local v2, "maxScale":I
    const/16 v3, 0xc8

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3250
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3253
    .end local v0    # "minSize":I
    .end local v2    # "maxScale":I
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3256
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 3258
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-nez v0, :cond_74

    .line 3259
    move p2, v1

    move p1, v1

    .line 3261
    :cond_74
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 3262
    return-void
.end method

.method setIgnoreOrientationRequest(Z)Z
    .registers 5
    .param p1, "ignoreOrientationRequest"    # Z

    .line 6860
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSetIgnoreOrientationRequest:Z

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    return v0

    .line 6861
    :cond_6
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v0

    .line 6862
    .local v0, "rotationChanged":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSetIgnoreOrientationRequest:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->setIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Z)V

    .line 6864
    return v0
.end method

.method setImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 2
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 4555
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 4556
    return-void
.end method

.method setImeInputTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/InputTarget;

    .line 4538
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 4539
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4540
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4542
    :cond_11
    return-void
.end method

.method setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 4472
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4473
    return-void
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 4272
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4274
    if-eqz p1, :cond_f

    .line 4275
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 4276
    .local v0, "imePid":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->onImeWindowSetOnDisplayArea(ILcom/android/server/wm/DisplayArea;)V

    .line 4278
    .end local v0    # "imePid":I
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4279
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;

    move-result-object v1

    const/4 v2, 0x0

    .line 4278
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 4280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 4281
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget()V

    .line 4282
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1560
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1561
    return-void
.end method

.method setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1576
    .local p3, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    .local p4, "imeFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1578
    return-void
.end method

.method setIsSleeping(Z)V
    .registers 2
    .param p1, "asleep"    # Z

    .line 6775
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 6776
    return-void
.end method

.method setLastHasContent()V
    .registers 2

    .line 5779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 5780
    return-void
.end method

.method setLayoutNeeded()V
    .registers 3

    .line 4877
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutNeeded: callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    .line 4879
    return-void
.end method

.method setMaxUiWidth(I)V
    .registers 10
    .param p1, "width"    # I

    .line 3151
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_2a

    .line 3152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting max ui width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_2a
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    .line 3158
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 3160
    return-void
.end method

.method setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    .registers 5
    .param p1, "controller"    # Landroid/view/IDisplayWindowInsetsController;

    .line 1476
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1477
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->-$$Nest$fgetmRemoteInsetsController(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 1481
    :cond_15
    if-eqz p1, :cond_2a

    .line 1483
    :try_start_17
    invoke-interface {p1}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1484
    new-instance v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_28

    .line 1487
    goto :goto_2a

    .line 1485
    :catch_28
    move-exception v0

    .line 1486
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1489
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4
    .param p1, "screenRotationAnimation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 3605
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v0, :cond_7

    .line 3606
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 3610
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 3611
    .local v0, "temp":Lcom/android/server/wm/ScreenRotationAnimation;
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 3614
    if-eqz v0, :cond_10

    .line 3615
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 3620
    :cond_10
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3621
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotationIfNeeded()V

    .line 3623
    :cond_1b
    return-void
.end method

.method public setRoundedCornerOverlaysCanScreenShot(Z)V
    .registers 3
    .param p1, "canScreenshot"    # Z

    .line 5945
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->setRoundedCornerOverlaysCanScreenShot(ZZ)V

    .line 5946
    return-void
.end method

.method public setRoundedCornerOverlaysCanScreenShot(ZZ)V
    .registers 7
    .param p1, "canScreenshot"    # Z
    .param p2, "immediately"    # Z

    .line 5949
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 5950
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v2, :cond_24

    .line 5951
    iget-object v2, v1, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayContent;ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->forEach(Ljava/util/function/Consumer;)V

    .line 5958
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_24
    goto :goto_a

    .line 5959
    :cond_25
    return-void
.end method

.method setSandboxDisplayApis(Z)V
    .registers 2
    .param p1, "sandboxDisplayApis"    # Z

    .line 6936
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    .line 6937
    return-void
.end method

.method setSurfaceCanScreenShot(Landroid/view/SurfaceControl;ZZ)V
    .registers 5
    .param p1, "clientSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "canScreenshot"    # Z
    .param p3, "immediately"    # Z

    .line 5962
    if-nez p1, :cond_3

    .line 5963
    return-void

    .line 5965
    :cond_3
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setSkipScreenshot(Z)V

    .line 5966
    if-eqz p3, :cond_f

    .line 5967
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 5969
    :cond_f
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 4
    .param p1, "windowingMode"    # I

    .line 2901
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2902
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2903
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 2904
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2905
    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .registers 3

    .line 6719
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method shouldImeAttachedToApp()Z
    .registers 5

    .line 4359
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 4360
    return v1

    .line 4365
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x1

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 4367
    .local v0, "allowAttachToApp":Z
    :goto_12
    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->isImeControlledByApp()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_34

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4370
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4373
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->matchesDisplayAreaBounds()Z

    move-result v3

    if-eqz v3, :cond_34

    move v1, v2

    goto :goto_35

    :cond_34
    nop

    .line 4367
    :goto_35
    return v1
.end method

.method shouldSleep()Z
    .registers 2

    .line 6723
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRootTaskCount()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 2179
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    .line 2180
    .local v0, "controller":Lcom/android/server/wm/AsyncRotationController;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AsyncRotationController;->isAsync(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method shouldWaitForSystemDecorWindowsOnBoot()Z
    .registers 24

    .line 4954
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-nez v1, :cond_e

    .line 4958
    return v2

    .line 4961
    :cond_e
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 4964
    .local v1, "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    const/16 v3, 0x7f8

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4966
    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 4991
    .local v5, "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_25

    .line 4993
    return v4

    .line 4998
    :cond_25
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110145

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5000
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11100fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v6, :cond_4f

    move v6, v4

    goto :goto_50

    :cond_4f
    move v6, v2

    .line 5004
    .local v6, "wallpaperEnabled":Z
    :goto_50
    const/16 v7, 0x7e5

    invoke-virtual {v1, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 5005
    .local v7, "haveBootMsg":Z
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 5006
    .local v8, "haveApp":Z
    const/16 v9, 0x7dd

    invoke-virtual {v1, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 5007
    .local v9, "haveWallpaper":Z
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 5009
    .local v3, "haveKeyguard":Z
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v10, :cond_c3

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .local v10, "protoLogParam0":Z
    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .local v11, "protoLogParam1":Z
    move v12, v7

    .local v12, "protoLogParam2":Z
    move v13, v8

    .local v13, "protoLogParam3":Z
    move v14, v9

    .local v14, "protoLogParam4":Z
    move v15, v6

    .local v15, "protoLogParam5":Z
    move/from16 v16, v3

    .local v16, "protoLogParam6":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x0

    aput-object v21, v2, v18

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v17, 0x1

    aput-object v21, v2, v17

    const/16 v21, 0x2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x3

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    const/16 v21, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v2, v21

    move-object/from16 v21, v1

    move-object/from16 v19, v5

    move/from16 v20, v10

    const v1, -0x25da961d

    const/16 v5, 0x3fff

    const/4 v10, 0x0

    .end local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .end local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "protoLogParam0":Z
    .local v19, "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .local v20, "protoLogParam0":Z
    .local v21, "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    invoke-static {v4, v1, v5, v10, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c7

    .end local v11    # "protoLogParam1":Z
    .end local v12    # "protoLogParam2":Z
    .end local v13    # "protoLogParam3":Z
    .end local v14    # "protoLogParam4":Z
    .end local v15    # "protoLogParam5":Z
    .end local v16    # "protoLogParam6":Z
    .end local v19    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .end local v20    # "protoLogParam0":Z
    .end local v21    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .restart local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .restart local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    :cond_c3
    move-object/from16 v21, v1

    move-object/from16 v19, v5

    .line 5017
    .end local v1    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    .end local v5    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .restart local v19    # "visibleNotDrawnWindow":Lcom/android/server/wm/WindowState;
    .restart local v21    # "drawnWindowTypes":Landroid/util/SparseBooleanArray;
    :goto_c7
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_d1

    if-nez v7, :cond_d1

    .line 5018
    const/4 v1, 0x1

    return v1

    .line 5023
    :cond_d1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_e1

    if-nez v8, :cond_db

    if-eqz v3, :cond_df

    :cond_db
    if-eqz v6, :cond_e1

    if-nez v9, :cond_e1

    .line 5025
    :cond_df
    const/4 v1, 0x1

    return v1

    .line 5028
    :cond_e1
    const/4 v1, 0x0

    return v1
.end method

.method showImeScreenshot()V
    .registers 1

    .line 4707
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->attachAndShowImeScreenshotOnTarget()V

    .line 4708
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZZ)V
    .registers 8
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToShade"    # Z
    .param p3, "subtle"    # Z

    .line 4938
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4939
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4946
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_28

    .line 4947
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ShellRoot;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ShellRoot;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4946
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 4950
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method supportsSystemDecorations()Z
    .registers 3

    .line 5908
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 5909
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1a

    .line 5910
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1a
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-eq v0, v1, :cond_2a

    .line 5914
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 5908
    :goto_2b
    return v0
.end method

.method switchUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3499
    invoke-super {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->switchUser(I)V

    .line 3500
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3501
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->switchUser()V

    .line 3502
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3891
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3889
    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "considerKeyguardState"    # Z

    .line 6385
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method topRunningActivityExcludeFreeform()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivityExcludeFreeform(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityExcludeFreeform(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "considerKeyguardState"    # Z

    .line 6396
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda52;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method transferAppTransitionFrom(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "from"    # Lcom/android/server/wm/DisplayContent;

    .line 5798
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->transferFrom(Lcom/android/server/wm/AppTransition;)Z

    move-result v0

    .line 5799
    .local v0, "prepared":Z
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5800
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 5802
    :cond_13
    return-void
.end method

.method unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 5787
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5788
    return-void
.end method

.method unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ISystemGestureExclusionListener;

    .line 6208
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6209
    return-void
.end method

.method updateAccessibilityOnWindowFocusChanged(Lcom/android/server/wm/AccessibilityController;)V
    .registers 3
    .param p1, "accessibilityController"    # Lcom/android/server/wm/AccessibilityController;

    .line 4124
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNot(I)V

    .line 4125
    return-void
.end method

.method updateBaseDisplayMetrics(IIIFF)V
    .registers 9
    .param p1, "baseWidth"    # I
    .param p2, "baseHeight"    # I
    .param p3, "baseDensity"    # I
    .param p4, "baseXDpi"    # F
    .param p5, "baseYDpi"    # F

    .line 3165
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3166
    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3167
    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3168
    iput p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3169
    iput p5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3170
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_1a

    .line 3171
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadDisplayCutout(II)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    .line 3172
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->loadRoundedCorners(II)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    .line 3175
    :cond_1a
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_7c

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le v1, v0, :cond_7c

    .line 3176
    int-to-float v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 3177
    .local v2, "ratio":F
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 3178
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 3179
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    .line 3180
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    .line 3181
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-nez v0, :cond_43

    .line 3184
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 3187
    :cond_43
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_7c

    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying config restraints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3189
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3188
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    .end local v2    # "ratio":F
    :cond_7c
    return-void
.end method

.method updateDisplayAreaOrganizers()V
    .registers 2

    .line 3304
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3306
    return-void

    .line 3308
    :cond_7
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 3320
    return-void
.end method

.method updateDisplayInfo()V
    .registers 3

    .line 2974
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    .line 2976
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2977
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    .line 2980
    invoke-virtual {p0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2981
    return-void
.end method

.method updateDisplayOverrideConfigurationLocked()Z
    .registers 7

    .line 6404
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6405
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 6406
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_b

    .line 6407
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplayChange()V

    .line 6410
    :cond_b
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 6411
    .local v1, "values":Landroid/content/res/Configuration;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 6413
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6413
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 6417
    invoke-static {v1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 6418
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 6420
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    if-eqz v2, :cond_42

    const/4 v4, 0x1

    :cond_42
    return v4
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 10
    .param p1, "values"    # Landroid/content/res/Configuration;
    .param p2, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"    # Z
    .param p4, "result"    # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 6431
    const/4 v0, 0x0

    .line 6432
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 6434
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 6436
    const/4 v2, 0x0

    if-eqz p1, :cond_2e

    .line 6437
    :try_start_a
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v3, :cond_26

    .line 6443
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v3

    invoke-interface {v3, p2, p1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateEmbeddedConfiguration(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    .line 6446
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v4, -0x2710

    invoke-virtual {v3, p1, v2, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result v3

    move v0, v3

    .line 6451
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/server/wm/DisplayContentStub;->onDisplayOverrideConfigUpdate(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_2e

    .line 6453
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    move-result v3

    move v0, v3

    goto :goto_2e

    .line 6461
    :catchall_2c
    move-exception v2

    goto :goto_38

    .line 6457
    :cond_2e
    :goto_2e
    if-nez p3, :cond_3e

    .line 6458
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_2c

    move v1, v3

    goto :goto_3e

    .line 6461
    :goto_38
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6462
    throw v2

    .line 6461
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6462
    nop

    .line 6464
    if-eqz p4, :cond_4d

    .line 6465
    iput v0, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 6466
    if-nez v1, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    iput-boolean v2, p4, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 6470
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateWindowCornerRadius()V

    .line 6472
    return v1
.end method

.method updateFocusedWindowLocked(IZI)Z
    .registers 24
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z
    .param p3, "topFocusedDisplayId"    # I

    .line 4010
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4011
    .local v4, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-ne v5, v4, :cond_12

    .line 4012
    return v6

    .line 4014
    :cond_12
    const/4 v5, 0x0

    .line 4015
    .local v5, "imWindowChanged":Z
    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4016
    .local v7, "imWindow":Lcom/android/server/wm/WindowState;
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_39

    .line 4017
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 4018
    .local v10, "prevTarget":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v11

    .line 4019
    .local v11, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v10, v11, :cond_23

    move v12, v9

    goto :goto_24

    :cond_23
    move v12, v6

    :goto_24
    move v5, v12

    .line 4021
    if-eq v1, v9, :cond_2c

    if-eq v1, v8, :cond_2c

    .line 4023
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4026
    :cond_2c
    if-eqz v5, :cond_39

    .line 4027
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v12, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4029
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindowIfNeeded(I)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4034
    .end local v10    # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v11    # "newTarget":Lcom/android/server/wm/WindowState;
    :cond_39
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_40

    .line 4035
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->resetUserActivityTime()V

    .line 4037
    :cond_40
    if-eqz v4, :cond_49

    .line 4038
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Lcom/android/server/wm/WindowState;->setUserActivityTime(Landroid/content/Context;)V

    .line 4041
    :cond_49
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v10, :cond_83

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam0":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    int-to-long v14, v14

    .local v14, "protoLogParam2":J
    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam3":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v12, 0x10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v6

    aput-object v13, v11, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x2

    aput-object v19, v11, v18

    const/16 v17, 0x3

    aput-object v16, v11, v17

    const/4 v6, 0x0

    const v9, 0x3407e74f

    invoke-static {v8, v9, v12, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    .end local v10    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam1":Ljava/lang/String;
    .end local v14    # "protoLogParam2":J
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    :cond_83
    const/4 v6, 0x0

    .line 4043
    :goto_84
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4044
    .local v8, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4047
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v9

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-interface {v9, v10, v11}, Lcom/android/server/wm/DisplayContentStub;->focusChangedLw(ILcom/android/server/wm/WindowState;)V

    .line 4050
    if-eqz v4, :cond_bb

    .line 4051
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 4052
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 4054
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 4058
    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 4061
    :cond_aa
    if-eqz v8, :cond_bb

    .line 4062
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v9

    .line 4063
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v11

    .line 4062
    invoke-interface {v9, v10, v11}, Lcom/android/server/am/SmartPowerServiceStub;->onFocusedWindowChangeLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Lcom/android/server/wm/DisplayPolicy;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 4071
    if-eqz v4, :cond_127

    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_127

    .line 4072
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_d7

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_d8

    :cond_d7
    move-object v11, v6

    :goto_d8
    move-object v6, v11

    .line 4073
    .local v6, "focusName":Ljava/lang/String;
    iget-object v9, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_e3

    const/4 v9, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v9, 0x0

    .line 4074
    .local v9, "hasSecure":Z
    :goto_e4
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mLastWindowHasSecure:Z

    if-ne v9, v10, :cond_f4

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/android/server/wm/WindowManagerServiceStub;->isInNfcBlackList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_127

    .line 4075
    :cond_f4
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v9, v10, Lcom/android/server/wm/WindowManagerService;->mLastWindowHasSecure:Z

    .line 4076
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onSecureChanged, hasSecure = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "newFocus.getWindowTag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "WindowManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Lcom/android/server/wm/WindowManagerServiceStub;->onSecureChangedListener(Lcom/android/server/wm/WindowState;Z)V

    .line 4082
    .end local v6    # "focusName":Ljava/lang/String;
    .end local v9    # "hasSecure":Z
    :cond_127
    if-eqz v5, :cond_13c

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v8, v6, :cond_13c

    .line 4084
    const/4 v6, 0x2

    if-ne v1, v6, :cond_135

    .line 4085
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_13c

    .line 4086
    :cond_135
    const/4 v6, 0x3

    if-ne v1, v6, :cond_13c

    .line 4089
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 4093
    :cond_13c
    :goto_13c
    const/4 v6, 0x1

    if-eq v1, v6, :cond_146

    .line 4095
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 4098
    :cond_146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 4099
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 4104
    invoke-virtual {v0, v8, v4}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 4106
    const/4 v6, 0x2

    if-ne v1, v6, :cond_158

    .line 4107
    iget v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4114
    :cond_158
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v6

    if-eqz v6, :cond_176

    .line 4115
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v9, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;

    invoke-direct {v9, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-static {v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4120
    :cond_176
    const/4 v6, 0x1

    return v6
.end method

.method updateImeControlTarget()V
    .registers 2

    .line 4769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 4770
    return-void
.end method

.method updateImeControlTarget(Z)V
    .registers 8
    .param p1, "forceUpdateImeParent"    # Z

    .line 4773
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 4774
    .local v0, "prevImeControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 4775
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsStateController;->onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 4779
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 4780
    .local v1, "imeControlChanged":Z
    :goto_14
    if-nez v1, :cond_18

    if-eqz p1, :cond_1b

    .line 4781
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 4784
    :cond_1b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2}, Lcom/android/server/wm/InsetsControlTarget;->asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4785
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2a

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 4787
    .local v3, "token":Landroid/os/IBinder;
    :goto_2b
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4788
    return-void
.end method

.method updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V
    .registers 9
    .param p1, "target"    # Lcom/android/server/wm/InputTarget;

    .line 4746
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eq v0, p1, :cond_4b

    .line 4747
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x133cacac

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4748
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 4749
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4750
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    .line 4749
    invoke-virtual {v0, v3}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 4755
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v3, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_46

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 4758
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4757
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    move v0, v1

    .line 4759
    .local v0, "forceUpdateImeParent":Z
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 4763
    .end local v0    # "forceUpdateImeParent":Z
    :cond_4b
    if-eqz p1, :cond_50

    .line 4764
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->unfreezeInsetsAfterStartInput()V

    .line 4766
    :cond_50
    return-void
.end method

.method updateImeParent()V
    .registers 4

    .line 4791
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4792
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_13

    .line 4793
    const-string v0, "WindowManager"

    const-string v1, "ImeContainer is organized. Skip updateImeParent."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    .line 4798
    return-void

    .line 4801
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 4802
    .local v0, "newParent":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eq v0, v1, :cond_45

    .line 4803
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    .line 4804
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$ImeContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4807
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 4808
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 4810
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4812
    :cond_45
    return-void
.end method

.method updateKeepClearAreas()V
    .registers 4

    .line 6212
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6213
    .local v0, "restrictedKeepClearAreas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 6214
    .local v1, "unrestrictedKeepClearAreas":Ljava/util/Set;, "Ljava/util/Set<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->getKeepClearAreas(Ljava/util/Set;Ljava/util/Set;)V

    .line 6216
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6217
    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 6218
    :cond_1d
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 6219
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 6220
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchKeepClearAreasChanged(Lcom/android/server/wm/DisplayContent;Ljava/util/Set;Ljava/util/Set;)V

    .line 6223
    :cond_28
    return-void
.end method

.method updateOrientation(Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;
    .registers 7
    .param p2, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;Z)",
            "Landroid/content/res/Configuration;"
        }
    .end annotation

    .line 1719
    .local p1, "freezeDisplayWindow":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 1720
    const/4 v0, 0x0

    return-object v0

    .line 1723
    :cond_6
    const/4 v0, 0x0

    .line 1724
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1727
    if-eqz p1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_26

    .line 1728
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1729
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1730
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    .line 1733
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_26
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    move-object v0, v1

    .line 1734
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_6e

    .line 1735
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 1737
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1744
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 1745
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1746
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 1747
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_6e

    .line 1748
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1750
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 1751
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v2

    .line 1755
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_6e
    :goto_6e
    return-object v0
.end method

.method updateOrientation()Z
    .registers 2

    .line 1705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v0

    return v0
.end method

.method updatePrivacyIndicatorBounds([Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "staticBounds"    # [Landroid/graphics/Rect;

    .line 2984
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2985
    .local v0, "oldBounds":Landroid/view/PrivacyIndicatorBounds;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2986
    invoke-virtual {v1, p1}, Landroid/view/PrivacyIndicatorBounds;->updateStaticBounds([Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2987
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2988
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(ZZ)V

    .line 2990
    :cond_15
    return-void
.end method

.method updateRecording()V
    .registers 2

    .line 6978
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->getContentRecorder()Lcom/android/server/wm/ContentRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ContentRecorder;->updateRecording()V

    .line 6979
    return-void
.end method

.method updateRotationUnchecked()Z
    .registers 3

    .line 2219
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateSystemGestureExclusion()Z
    .registers 8

    .line 5978
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 5980
    return v1

    .line 5983
    :cond_a
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5984
    .local v0, "systemGestureExclusion":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    .line 5987
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_5d

    if-eqz v2, :cond_23

    .line 5988
    nop

    .line 6005
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5988
    return v1

    .line 5990
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5991
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_2f

    .line 5992
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 5993
    .local v1, "unrestrictedOrNull":Landroid/graphics/Region;
    :goto_30
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_5d

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_38
    if-ltz v2, :cond_53

    .line 5995
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 5996
    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_47} :catch_48
    .catchall {:try_start_3a .. :try_end_47} :catchall_5d

    .line 6000
    goto :goto_50

    .line 5998
    :catch_48
    move-exception v4

    .line 5999
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5993
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 6002
    .end local v2    # "i":I
    :cond_53
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_5d

    .line 6003
    nop

    .line 6005
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 6003
    return v3

    .line 6005
    .end local v1    # "unrestrictedOrNull":Landroid/graphics/Region;
    :catchall_5d
    move-exception v1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 6006
    throw v1
.end method

.method updateSystemGestureExclusionLimit()V
    .registers 3

    .line 3019
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    .line 3021
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 3022
    return-void
.end method

.method updateTouchExcludeRegion()V
    .registers 7

    .line 3362
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 3363
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_a
    if-nez v0, :cond_12

    .line 3364
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_72

    .line 3366
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3367
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 3368
    .local v1, "delta":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3369
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3372
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 3374
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 3376
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3374
    invoke-static {v2, p0, v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3377
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 3378
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3383
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_61

    .line 3384
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3388
    :cond_61
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_72

    .line 3389
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3395
    .end local v1    # "delta":I
    .end local v2    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_72
    :goto_72
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    if-eqz v1, :cond_97

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_97

    .line 3397
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_97

    .line 3402
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3403
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3405
    :cond_97
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9e
    if-ltz v1, :cond_c0

    .line 3406
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3407
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-nez v3, :cond_af

    .line 3408
    goto :goto_bd

    .line 3410
    :cond_af
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3411
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3405
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_bd
    add-int/lit8 v1, v1, -0x1

    goto :goto_9e

    .line 3413
    .end local v1    # "i":I
    :cond_c0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayContent;->amendWindowTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3414
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 3416
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v1, :cond_df

    .line 3417
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->setMiuiFreeFormTouchExcludeRegion(Landroid/graphics/Region;)V

    .line 3418
    :cond_df
    return-void
.end method

.method updateUserActivityDimTimeIfNeed()V
    .registers 2

    .line 7343
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsDimWindow:Z

    if-eqz v0, :cond_d

    .line 7344
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->updateUserActivityDim()V

    .line 7346
    :cond_d
    return-void
.end method

.method updateWindowCornerRadius()V
    .registers 2

    .line 1384
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getMiuiWindowCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 1385
    return-void
.end method

.method updateWindowsForAnimator()V
    .registers 3

    .line 5032
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 5033
    return-void
.end method
