.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field static final ANIMATION_NONE:I = -0x1

.field static final ANIMATION_STYLEABLE:I = 0x0

.field private static DRAG_PLH_ENABLE:Z = false

.field public static final LAPTOP_OVERLAY:Ljava/lang/String; = "Laptop overlay"

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field private static final SHOW_TYPES_FOR_PANIC:[I

.field private static final SHOW_TYPES_FOR_SWIPE:[I

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static isLowRAM:Z

.field private static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field private static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllowLockscreenWhenOn:Z

.field private final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field private volatile mAwake:Z

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private mClimateBarAlt:Lcom/android/server/wm/WindowState;

.field private mClimateBarAltPosition:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private final mDeskDockEnablesAccelerometer:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayCutoutTouchableRegionSize:I

.field private volatile mDockMode:I

.field private mDreamingLockscreen:Z

.field private mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

.field private mExtraNavBarAltPosition:I

.field private mFocusedApp:Ljava/lang/String;

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field private mForceShowNavigationBarEnabled:Z

.field private mForceShowSystemBars:Z

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field private final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCureentInSplitScrren:Z

.field private mIsFreeformWindowOverlappingWithNavBar:Z

.field private mIsPerfBoostFlingAcquired:Z

.field private volatile mKeyguardDrawComplete:Z

.field private mLaptopOverlay:Lcom/android/server/wm/WindowState;

.field private mLastAppearance:I

.field private mLastBehavior:I

.field private mLastDisableFlags:I

.field private mLastFocusIsFullscreen:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastImmersiveMode:Z

.field private mLastShowingDream:Z

.field private mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private mLeftGestureInset:I

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

.field private mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field private mNavBarOpacityMode:I

.field private mNavButtonForcedVisible:Z

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAlt:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAltPosition:I

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private volatile mNavigationBarLetsThroughTaps:Z

.field private mNavigationBarPosition:I

.field private mNotificationShade:Lcom/android/server/wm/WindowState;

.field private mPendingPanicGestureUptime:J

.field mPerf:Landroid/util/BoostFramework;

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field private mPerfBoostHome:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private mRightGestureInset:I

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field private mShouldAttachNavBarToAppDuringTransition:Z

.field private mShowingDream:Z

.field private mSplitScreenDragBarWidth:F

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private mStatusBarAlt:Lcom/android/server/wm/WindowState;

.field private mStatusBarAltPosition:I

.field private final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field private final mStatusBarBackgroundWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private final mUiContext:Landroid/content/Context;

.field private final mWindowLayout:Landroid/view/WindowLayout;

.field private volatile mWindowManagerDrawComplete:Z


# direct methods
.method public static synthetic $r8$lambda$lznSHg8W63ph2YDkrJoV4cl1aj4(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavigationBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavigationBarPosition(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;)Landroid/util/BoostFramework;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostHome:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitScreenDragBarWidth(Lcom/android/server/wm/DisplayPolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSplitScreenDragBarWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPerfBoostFlingAcquired(Lcom/android/server/wm/DisplayPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPerfBoostFlingAcquired:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingPanicGestureUptime(Lcom/android/server/wm/DisplayPolicy;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPerfBoostHome(Lcom/android/server/wm/DisplayPolicy;Landroid/util/BoostFramework;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostHome:Landroid/util/BoostFramework;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAltBarMatchingPosition(Lcom/android/server/wm/DisplayPolicy;I)Lcom/android/server/wm/WindowState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->findAltBarMatchingPosition(I)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindTransientNavOrAltBar(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppPackageName(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misTopAppGame(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDRAG_PLH_ENABLE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->DRAG_PLH_ENABLE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSCROLL_BOOST_SS_ENABLE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    .line 205
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    .line 222
    sput-boolean v2, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 223
    sput-boolean v2, Lcom/android/server/wm/DisplayPolicy;->DRAG_PLH_ENABLE:Z

    .line 224
    sput-boolean v2, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 368
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    return-void

    :array_3a
    .array-data 4
        0x1
        0x0
        0x14
        0x15
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 14
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 230
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 231
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 232
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    .line 234
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostHome:Landroid/util/BoostFramework;

    .line 238
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 262
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 263
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 284
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 285
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 286
    const/4 v3, 0x4

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 287
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 288
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 293
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 294
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 298
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 299
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 303
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 304
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    .line 308
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 309
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    .line 312
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 349
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 353
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 359
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 370
    new-instance v1, Landroid/view/WindowLayout;

    invoke-direct {v1}, Landroid/view/WindowLayout;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 374
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 382
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCureentInSplitScrren:Z

    .line 390
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLaptopOverlay:Lcom/android/server/wm/WindowState;

    .line 3062
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 481
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 482
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_86

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_90

    .line 483
    :cond_86
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_90
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 484
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_9b

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_a7

    .line 486
    :cond_9b
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v3

    :goto_a7
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 487
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 488
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 490
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 492
    .local v4, "displayId":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 493
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x111004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 494
    const v6, 0x1110107

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 498
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getSplitScreenDragBarWidth(Landroid/content/res/Resources;)F

    move-result v6

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSplitScreenDragBarWidth:F

    .line 500
    const-string v6, "accessibility"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 502
    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x1

    if-nez v6, :cond_ea

    .line 503
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 504
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 505
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 508
    :cond_ea
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    if-eqz v6, :cond_10c

    .line 509
    const-string/jumbo v8, "vendor.perf.gestureflingboost.enable"

    const-string v9, "false"

    invoke-virtual {v6, v8, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->SCROLL_BOOST_SS_ENABLE:Z

    .line 510
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v8, "ro.vendor.perf.dplh"

    invoke-virtual {v6, v8, v9}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->DRAG_PLH_ENABLE:Z

    .line 512
    :cond_10c
    const-string/jumbo v6, "ro.config.low_ram"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    .line 515
    invoke-static {}, Landroid/view/FramePredict;->getInstance()Landroid/view/FramePredict;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/FramePredict;->init(Landroid/content/Context;)V

    .line 517
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 518
    .local v6, "looper":Landroid/os/Looper;
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v8, p0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 520
    new-instance v9, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    new-instance v10, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v10, p0, p2}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v9, v3, v8, v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 787
    invoke-virtual {p2, v9}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 788
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 840
    iget-object v9, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 841
    iget-object v9, p2, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 842
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-boolean v9, p1, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v3, v1, v6, v9}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 846
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_15e

    .line 847
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_15f

    :cond_15e
    nop

    :goto_15f
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 849
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_191

    .line 850
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 851
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 855
    const-string/jumbo v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 857
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_190

    .line 858
    :cond_186
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 859
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 861
    .end local v0    # "navBarOverride":Ljava/lang/String;
    :cond_190
    :goto_190
    goto :goto_199

    .line 862
    :cond_191
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 863
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 866
    :goto_199
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy;

    .line 867
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v0, p1, v2, v3}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 870
    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v0, v8, v1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 878
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    new-instance v0, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 882
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 883
    invoke-virtual {v0}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 884
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 885
    return-void
.end method

.method private addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "appearance"    # I
    .param p2, "statusBarFrame"    # Landroid/graphics/Rect;
    .param p3, "winBounds"    # Landroid/graphics/Rect;
    .param p4, "winFrame"    # Landroid/graphics/Rect;

    .line 2036
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2037
    return-void

    .line 2039
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2040
    return-void

    .line 2042
    :cond_12
    const/4 v1, 0x0

    if-eqz p1, :cond_7d

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, p4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_7d

    .line 2059
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, p1, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 2061
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_77

    .line 2062
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_5a

    .line 2063
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v1, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_5a
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_77

    .line 2067
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v2, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v1, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    :cond_77
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2074
    return-void

    .line 2043
    :cond_7d
    :goto_7d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/view/AppearanceRegion;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, v1, v4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2045
    return-void
.end method

.method private applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 2115
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2116
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 2117
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 2119
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setHiddenByKeyguard(Z)V

    goto :goto_52

    .line 2122
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isHoldOn()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2123
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_46

    .line 2124
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v0, v3, :cond_46

    .line 2125
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->setHoldOn(Z)V

    .line 2127
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->setHiddenByKeyguard(Z)V

    .line 2129
    :cond_4f
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    .line 2132
    :cond_52
    :goto_52
    return-void
.end method

.method private callStatusBarSafely(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/statusbar/StatusBarManagerInternal;",
            ">;)V"
        }
    .end annotation

    .line 2781
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/statusbar/StatusBarManagerInternal;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2787
    return-void
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .line 3051
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p0, "candidate"    # Lcom/android/server/wm/WindowState;
    .param p1, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "navBarPosition"    # I

    .line 2795
    if-eqz p1, :cond_16

    .line 2796
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    if-ne p2, v0, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 2800
    .local v0, "imeWindowCanNavColorWindow":Z
    :goto_17
    if-nez v0, :cond_1a

    .line 2802
    return-object p0

    .line 2805
    :cond_1a
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2808
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2810
    return-object p1

    .line 2813
    :cond_2d
    return-object p0

    .line 2817
    :cond_2e
    return-object p1
.end method

.method private clearNavBarOpaqueFlag(I)I
    .registers 3
    .param p1, "appearance"    # I

    .line 3033
    and-int/lit8 v0, p1, -0x3

    return v0
.end method

.method private configureNavBarOpacity(IZZ)I
    .registers 8
    .param p1, "appearance"    # I
    .param p2, "multiWindowTaskVisible"    # Z
    .param p3, "freeformRootTaskVisible"    # Z

    .line 3005
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 3007
    .local v0, "drawBackground":Z
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13

    .line 3008
    if-eqz v0, :cond_32

    .line 3009
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_32

    .line 3011
    :cond_13
    if-nez v1, :cond_2a

    .line 3012
    if-nez p2, :cond_21

    if-eqz p3, :cond_1a

    goto :goto_21

    .line 3016
    :cond_1a
    if-eqz v0, :cond_32

    .line 3017
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_32

    .line 3013
    :cond_21
    :goto_21
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v1, :cond_32

    .line 3014
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_32

    .line 3019
    :cond_2a
    if-ne v1, v2, :cond_32

    .line 3020
    if-eqz p3, :cond_32

    .line 3021
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    .line 3025
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3026
    or-int/lit8 p1, p1, 0x40

    .line 3029
    :cond_3c
    return p1
.end method

.method private configureStatusBarOpacity(I)I
    .registers 7
    .param p1, "appearance"    # I

    .line 2980
    const/4 v0, 0x1

    .line 2981
    .local v0, "drawBackground":Z
    const/4 v1, 0x1

    .line 2982
    .local v1, "isFullyTransparentAllowed":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_22

    .line 2983
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2984
    .local v3, "window":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 2985
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v4

    and-int/2addr v1, v4

    .line 2982
    .end local v3    # "window":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2988
    .end local v2    # "i":I
    :cond_22
    if-eqz v0, :cond_26

    .line 2989
    and-int/lit8 p1, p1, -0x2

    .line 2992
    :cond_26
    if-nez v1, :cond_2a

    .line 2993
    or-int/lit8 p1, p1, 0x20

    .line 2996
    :cond_2a
    return p1
.end method

.method private disablePointerLocation()V
    .registers 3

    .line 3274
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    .line 3275
    return-void

    .line 3278
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3279
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3280
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3282
    return-void
.end method

.method private drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 2966
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 2967
    return v0

    .line 2970
    :cond_4
    nop

    .line 2971
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    move v1, v2

    .line 2972
    .local v1, "drawsSystemBars":Z
    :goto_14
    nop

    .line 2973
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_22

    move v3, v0

    goto :goto_23

    :cond_22
    move v3, v2

    .line 2975
    .local v3, "forceDrawsSystemBars":Z
    :goto_23
    if-nez v3, :cond_29

    if-eqz v1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :cond_29
    :goto_29
    return v0
.end method

.method private enablePointerLocation()V
    .registers 5

    .line 3247
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    .line 3248
    return-void

    .line 3251
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3253
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3254
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3255
    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3258
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 3259
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3260
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3261
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3262
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3265
    :cond_38
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3267
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3268
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3269
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3270
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3271
    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .registers 6
    .param p0, "insetsTypes"    # [I

    .line 1563
    const/4 v0, 0x0

    .line 1564
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1c

    aget v3, p0, v2

    .line 1565
    .local v3, "insetsType":I
    sparse-switch v3, :sswitch_data_1e

    goto :goto_19

    .line 1571
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-gt v0, v4, :cond_11

    goto :goto_19

    .line 1572
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1564
    .end local v3    # "insetsType":I
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1577
    :cond_1c
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x14 -> :sswitch_b
        0x15 -> :sswitch_b
    .end sparse-switch
.end method

.method private findAltBarMatchingPosition(I)Lcom/android/server/wm/WindowState;
    .registers 4
    .param p1, "pos"    # I

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_9

    .line 900
    return-object v0

    .line 902
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_12

    .line 903
    return-object v0

    .line 905
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    if-ne v1, p1, :cond_1b

    .line 906
    return-object v0

    .line 908
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_24

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    if-ne v1, p1, :cond_24

    .line 909
    return-object v0

    .line 911
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 918
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    .line 919
    return-object v0

    .line 921
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 922
    return-object v0

    .line 924
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_f

    .line 925
    return-object v0

    .line 927
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1526
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sparse-switch v0, :sswitch_data_10

    .line 1536
    const/4 v0, -0x1

    return v0

    .line 1532
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 1534
    :sswitch_9
    const/16 v0, 0x8

    return v0

    .line 1530
    :sswitch_c
    const/4 v0, 0x2

    return v0

    .line 1528
    :sswitch_e
    const/4 v0, 0x1

    return v0

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_e
        0x5 -> :sswitch_c
        0x30 -> :sswitch_9
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method private getAppPackageName()Ljava/lang/String;
    .registers 4

    .line 451
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 453
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-object v0, v1

    .line 456
    .local v0, "currentPackage":Ljava/lang/String;
    goto :goto_1b

    .line 454
    .end local v0    # "currentPackage":Ljava/lang/String;
    :catch_18
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 457
    .local v0, "currentPackage":Ljava/lang/String;
    :goto_1b
    return-object v0
.end method

.method private getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "type"    # I

    .line 2930
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v0

    .line 2931
    .local v0, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2932
    .local v1, "state":Landroid/view/InsetsState;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2933
    .local v2, "tmpRect":Landroid/graphics/Rect;
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2934
    if-nez p2, :cond_2a

    .line 2937
    nop

    .line 2938
    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->top:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2940
    :cond_2a
    invoke-virtual {v1, p2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 2941
    .local v4, "source":Landroid/view/InsetsSource;
    if-eqz v4, :cond_3a

    .line 2942
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2943
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2945
    :cond_3a
    return-object v2
.end method

.method private getDisplayId()I
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private getDisplayName()Ljava/lang/String;
    .registers 2

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getNavigationBarFrameHeight(I)I
    .registers 3
    .param p1, "rotation"    # I

    .line 2413
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_6

    .line 2414
    const/4 v0, 0x0

    return v0

    .line 2416
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return v0
.end method

.method private getNavigationBarWidth(III)I
    .registers 9
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I
    .param p3, "position"    # I

    .line 2307
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2308
    return v1

    .line 2310
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2311
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1c

    .line 2314
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v0, v2, p1

    .line 2317
    :cond_1c
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    array-length v2, v2

    if-le v2, v3, :cond_31

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v2, v2, v3

    if-eqz v2, :cond_31

    .line 2320
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v2, v2, v3

    .local v2, "providedInternalInsets":Landroid/graphics/Insets;
    goto :goto_33

    .line 2322
    .end local v2    # "providedInternalInsets":Landroid/graphics/Insets;
    :cond_31
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2324
    .restart local v2    # "providedInternalInsets":Landroid/graphics/Insets;
    :goto_33
    if-ne p3, v3, :cond_42

    .line 2325
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v2, Landroid/graphics/Insets;->right:I

    if-le v3, v4, :cond_41

    .line 2326
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v3

    return v1

    .line 2328
    :cond_41
    return v1

    .line 2330
    :cond_42
    const/4 v3, 0x2

    if-ne p3, v3, :cond_52

    .line 2331
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v2, Landroid/graphics/Insets;->left:I

    if-le v3, v4, :cond_51

    .line 2332
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v3

    return v1

    .line 2334
    :cond_51
    return v1

    .line 2337
    :cond_52
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return v1
.end method

.method private static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .registers 7
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "insetsType"    # I

    .line 3323
    invoke-static {p2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 3324
    .local v0, "internalTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 3325
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 3326
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_22

    .line 3327
    goto :goto_2e

    .line 3329
    :cond_22
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3330
    const/4 v3, 0x1

    return v3

    .line 3324
    .end local v2    # "source":Landroid/view/InsetsSource;
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3333
    .end local v1    # "i":I
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method private isCarWithDisplay()Z
    .registers 3

    .line 947
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.carlink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 3037
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3038
    return v0

    .line 3040
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 3041
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3042
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3043
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_29

    .line 3044
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v1

    if-nez v1, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    nop

    .line 3040
    :goto_2a
    return v0
.end method

.method private isKeyguardOccluded()Z
    .registers 2

    .line 2680
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private static isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "type"    # I

    .line 2923
    if-nez p0, :cond_4

    .line 2924
    const/4 v0, 0x0

    return v0

    .line 2926
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .registers 4
    .param p0, "systemUiFlags"    # I

    .line 3055
    const/high16 v0, 0x1600000

    .line 3059
    .local v0, "disableNavigationBar":I
    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 3307
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_27

    .line 3313
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 3314
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 3313
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result v0

    return v0

    .line 3308
    :cond_27
    :goto_27
    const/4 v0, 0x0

    return v0
.end method

.method private isTopAppGame(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .registers 9
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "BoostType"    # Landroid/util/BoostFramework;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "isGame":Z
    sget-boolean v1, Lcom/android/server/wm/DisplayPolicy;->isLowRAM:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 464
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 465
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_21

    .line 466
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v4, :cond_20

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_22

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :cond_20
    :goto_20
    move v0, v2

    .line 472
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_21
    goto :goto_30

    .line 470
    :catch_22
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 474
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_24
    const/16 v1, 0x1601

    invoke-virtual {p2, v1, p1}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    move v0, v2

    .line 477
    :goto_30
    return v0
.end method

.method static synthetic lambda$addWindowLw$3(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p1, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1398
    return-void
.end method

.method static synthetic lambda$addWindowLw$8(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "insetsType"    # I
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1450
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 1453
    .local v0, "providedInternalImeInsets":[Landroid/graphics/Insets;
    if-eqz v0, :cond_16

    array-length v1, v0

    if-le v1, p1, :cond_16

    aget-object v1, v0, p1

    if-eqz v1, :cond_16

    .line 1456
    aget-object v1, v0, p1

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1458
    :cond_16
    return-void
.end method

.method static synthetic lambda$addWindowLw$9(Lcom/android/server/wm/WindowState;ILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "insetsType"    # I
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1480
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 1482
    .local v0, "providedInternalInsets":[Landroid/graphics/Insets;
    if-eqz v0, :cond_16

    array-length v1, v0

    if-le v1, p1, :cond_16

    aget-object v1, v0, p1

    if-eqz v1, :cond_16

    .line 1485
    aget-object v1, v0, p1

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1487
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1488
    return-void
.end method

.method static synthetic lambda$updateSystemBarAttributes$14(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 4
    .param p0, "displayId"    # I
    .param p1, "disableFlags"    # I
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2751
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$updateSystemBarAttributes$15(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 16
    .param p0, "displayId"    # I
    .param p1, "appearance"    # I
    .param p2, "statusBarAppearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "isNavbarColorManagedByIme"    # Z
    .param p4, "behavior"    # I
    .param p5, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p6, "focusedApp"    # Ljava/lang/String;
    .param p7, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2775
    move-object v0, p7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .registers 9
    .param p1, "swipeTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "isGestureOnSystemBar"    # Z

    .line 2609
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2611
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2612
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddedOnScreen()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2613
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    new-array v3, v1, [I

    aput v2, v3, v2

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    goto/16 :goto_e7

    .line 2616
    :cond_33
    if-eqz p1, :cond_ee

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_ee

    .line 2620
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 2621
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_4c

    .line 2622
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    .line 2624
    .local v3, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_4d
    if-eqz v3, :cond_ed

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-ne v3, v4, :cond_57

    goto/16 :goto_ed

    .line 2630
    :cond_57
    invoke-interface {v3, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2631
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    goto :goto_63

    :cond_62
    move v1, v2

    .line 2632
    :goto_63
    invoke-interface {v3, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 2633
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    goto :goto_6f

    :cond_6e
    move v4, v2

    :goto_6f
    or-int/2addr v1, v4

    .line 2634
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_81

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2636
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    goto :goto_82

    :cond_81
    move v4, v2

    :goto_82
    or-int/2addr v1, v4

    .line 2637
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_94

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 2639
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    goto :goto_95

    :cond_94
    move v4, v2

    :goto_95
    or-int/2addr v1, v4

    .line 2641
    .local v1, "restorePositionTypes":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_a9

    .line 2642
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_a9

    .line 2646
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 2647
    return-void

    .line 2650
    :cond_a9
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 2652
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    .line 2654
    invoke-interface {v3, v1, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_e7

    .line 2657
    :cond_be
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v3, v4, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 2663
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_e7

    invoke-static {}, Lcom/android/server/wm/DisplayPolicyStub;->getInstance()Lcom/android/server/wm/DisplayPolicyStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/DisplayPolicyStub;->isMiuiVersion()Z

    move-result v2

    if-nez v2, :cond_e7

    .line 2665
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->transferTouch()Z

    move-result v2

    .line 2666
    .local v2, "transferred":Z
    if-nez v2, :cond_e7

    .line 2667
    const-string v4, "WindowManager"

    const-string v5, "Could not transfer touch to the status bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v1    # "restorePositionTypes":I
    .end local v2    # "transferred":Z
    .end local v3    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 2673
    return-void

    .line 2626
    .restart local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .restart local v3    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_ed
    :goto_ed
    return-void

    .line 2618
    .end local v0    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v3    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_ee
    :goto_ee
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 2140
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2141
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-nez v0, :cond_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 2143
    .local v0, "hideIme":Z
    :goto_1b
    if-eqz v0, :cond_1e

    .line 2144
    return v1

    .line 2147
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_65

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_65

    .line 2152
    :cond_2b
    if-eqz p2, :cond_45

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_45

    .line 2153
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v3

    if-nez v3, :cond_43

    .line 2154
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v3

    if-nez v3, :cond_45

    :cond_43
    move v3, v1

    goto :goto_46

    :cond_45
    move v3, v2

    .line 2155
    .local v3, "showImeOverKeyguard":Z
    :goto_46
    if-eqz v3, :cond_49

    .line 2156
    return v2

    .line 2160
    :cond_49
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2162
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v4

    if-nez v4, :cond_5d

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_5f

    :cond_5d
    move v4, v1

    goto :goto_60

    :cond_5f
    move v4, v2

    .line 2164
    .local v4, "allowShowWhenLocked":Z
    :goto_60
    if-nez v4, :cond_63

    goto :goto_64

    :cond_63
    move v1, v2

    :goto_64
    return v1

    .line 2148
    .end local v3    # "showImeOverKeyguard":Z
    .end local v4    # "allowShowWhenLocked":Z
    :cond_65
    :goto_65
    return v2
.end method

.method private supportsPointerLocation()Z
    .registers 3

    .line 3231
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->isPublicPresentation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 3232
    return v1

    .line 3234
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method private updateCurrentUserResources()V
    .registers 16

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 2262
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 2264
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_15

    .line 2267
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2268
    return-void

    .line 2273
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 2274
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2273
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 2275
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 2276
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2277
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2279
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 2280
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v8

    .line 2281
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2282
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    .line 2284
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2275
    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2287
    return-void
.end method

.method private updateForceShowNavBarSettings()V
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 890
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 891
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 892
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I
    .registers 24
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "disableFlags"    # I

    .line 2836
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2847
    .local v2, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v3, 0x0

    .line 2848
    .local v3, "multiWindowTaskVisible":Z
    const/4 v4, 0x0

    .line 2853
    .local v4, "freeformRootTaskVisible":Z
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 2856
    invoke-static {}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/wm/MiuiMultiWindowServiceStub;->isMiuiMultiWinChangeSupport()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    .line 2857
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2858
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mIsCureentInSplitScrren:Z

    .line 2860
    :cond_26
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mIsCureentInSplitScrren:Z

    if-nez v6, :cond_34

    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddedOnScreen()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2861
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->forceHideStatusBar()V

    .line 2865
    :cond_37
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 2867
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v6

    .line 2868
    .local v6, "topAppHidesStatusBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_53

    .line 2869
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v8

    .line 2870
    .local v8, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v8, :cond_53

    .line 2871
    invoke-interface {v8, v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    .line 2876
    .end local v8    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_53
    if-eqz v6, :cond_61

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_5f

    .line 2877
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v8

    if-nez v8, :cond_61

    :cond_5f
    move v8, v7

    goto :goto_62

    :cond_61
    move v8, v5

    :goto_62
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 2879
    const/4 v8, 0x3

    .line 2880
    .local v8, "appearance":I
    invoke-direct {v0, v8}, Lcom/android/server/wm/DisplayPolicy;->configureStatusBarOpacity(I)I

    move-result v8

    .line 2881
    invoke-direct {v0, v8, v5, v5}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZ)I

    move-result v8

    .line 2884
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v9

    xor-int/2addr v9, v7

    .line 2885
    .local v9, "requestHideNavBar":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2886
    .local v10, "now":J
    iget-wide v12, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_87

    sub-long v12, v10, v12

    const-wide/16 v16, 0x7530

    cmp-long v12, v12, v16

    if-gtz v12, :cond_87

    move v5, v7

    .line 2888
    .local v5, "pendingPanic":Z
    :cond_87
    iget-object v12, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2889
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v12

    .line 2890
    .local v12, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v5, :cond_bc

    if-eqz v9, :cond_bc

    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq v1, v13, :cond_bc

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v13

    if-eqz v13, :cond_bc

    .line 2893
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v13

    if-eqz v13, :cond_bc

    .line 2896
    iput-wide v14, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 2897
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 2898
    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v13

    sget-object v14, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    invoke-virtual {v13, v14, v7}, Lcom/android/server/wm/InsetsPolicy;->showTransient([IZ)V

    .line 2904
    :cond_bc
    iget-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 2905
    .local v7, "oldImmersiveMode":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    .line 2906
    .local v14, "newImmersiveMode":Z
    if-eq v7, v14, :cond_ef

    .line 2907
    iput-boolean v14, v0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 2909
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v13

    .line 2910
    .local v13, "root":Lcom/android/server/wm/RootDisplayArea;
    if-nez v13, :cond_ce

    const/4 v15, -0x1

    goto :goto_d0

    :cond_ce
    iget v15, v13, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    .line 2913
    .local v15, "rootDisplayAreaId":I
    :goto_d0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v19

    .line 2914
    .local v19, "pkg":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    move-object/from16 v20, v2

    .end local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v20, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2915
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v17

    .line 2916
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v18

    .line 2914
    move-object v2, v13

    .end local v13    # "root":Lcom/android/server/wm/RootDisplayArea;
    .local v2, "root":Lcom/android/server/wm/RootDisplayArea;
    move-object v13, v1

    move v1, v14

    .end local v14    # "newImmersiveMode":Z
    .local v1, "newImmersiveMode":Z
    move-object/from16 v14, v19

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;IZZZ)V

    goto :goto_f2

    .line 2906
    .end local v1    # "newImmersiveMode":Z
    .end local v15    # "rootDisplayAreaId":I
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v2, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v14    # "newImmersiveMode":Z
    :cond_ef
    move-object/from16 v20, v2

    move v1, v14

    .line 2919
    .end local v2    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v14    # "newImmersiveMode":Z
    .restart local v1    # "newImmersiveMode":Z
    .restart local v20    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_f2
    return v8
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 15
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1355
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x15

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_138

    .line 1445
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_128

    .line 1446
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v7, v0

    goto/16 :goto_b4

    .line 1437
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_136

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isCarWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 1438
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 1439
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto/16 :goto_136

    .line 1357
    :sswitch_2e
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1358
    goto/16 :goto_136

    .line 1381
    :sswitch_32
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v5, p1, v1, v4}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v3, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1431
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_136

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    .line 1360
    :sswitch_94
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1361
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1374
    .local v0, "gestureFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v4, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1375
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1377
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1, v6}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1378
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1379
    goto/16 :goto_136

    .line 1446
    .end local v0    # "gestureFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    :goto_b4
    if-ge v4, v7, :cond_128

    aget v8, v0, v4

    .line 1448
    .local v8, "insetsType":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    if-eqz v9, :cond_c6

    .line 1449
    new-instance v9, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-direct {v9, p1, v8}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/WindowState;I)V

    goto :goto_c7

    .line 1458
    :cond_c6
    move-object v9, v6

    :goto_c7
    nop

    .line 1459
    .local v9, "imeFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    sparse-switch v8, :sswitch_data_14a

    goto :goto_f0

    .line 1473
    :sswitch_cc
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 1474
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    goto :goto_f0

    .line 1469
    :sswitch_d5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 1470
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    .line 1471
    goto :goto_f0

    .line 1465
    :sswitch_de
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1466
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1467
    goto :goto_f0

    .line 1461
    :sswitch_e7
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1462
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1463
    nop

    .line 1477
    :goto_f0
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1478
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v11, :cond_100

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v11, p1, v8}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowState;I)V

    goto :goto_101

    .line 1488
    :cond_100
    move-object v11, v6

    .line 1477
    :goto_101
    invoke-virtual {v10, v8, p1, v11, v9}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1489
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_120

    if-eq v8, v5, :cond_10c

    if-ne v8, v1, :cond_120

    .line 1491
    :cond_10c
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;

    invoke-direct {v11, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v10, v3, p1, v11}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1501
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v10, v2, p1, v11}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1512
    :cond_120
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1446
    .end local v8    # "insetsType":I
    .end local v9    # "imeFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 1516
    :cond_128
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Laptop overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 1517
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLaptopOverlay:Lcom/android/server/wm/WindowState;

    .line 1522
    :cond_136
    :goto_136
    return-void

    nop

    :sswitch_data_138
    .sparse-switch
        0x7d0 -> :sswitch_94
        0x7e3 -> :sswitch_32
        0x7f8 -> :sswitch_2e
        0xbb6 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_14a
    .sparse-switch
        0x0 -> :sswitch_e7
        0x1 -> :sswitch_de
        0x14 -> :sswitch_d5
        0x15 -> :sswitch_cc
    .end sparse-switch
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1126
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_13a

    goto/16 :goto_8a

    .line 1137
    :sswitch_9
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1138
    goto/16 :goto_8a

    .line 1130
    :sswitch_d
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1132
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x40001

    and-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1133
    goto :goto_8a

    .line 1145
    :sswitch_1c
    iget-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-wide/16 v3, 0x1004

    if-ltz v0, :cond_2c

    iget-wide v5, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_2e

    .line 1147
    :cond_2c
    iput-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1152
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v3, v3

    invoke-virtual {v0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1156
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1157
    goto :goto_8a

    .line 1163
    :sswitch_41
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_8a

    .line 1166
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_63

    goto :goto_8a

    .line 1167
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1169
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_8a
    :goto_8a
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 1177
    .local v0, "maxOpacity":F
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_e0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_e0

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_e0

    .line 1184
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1189
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1184
    const-string v1, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1191
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1196
    .end local v0    # "maxOpacity":F
    :cond_e0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_ea

    .line 1197
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    .line 1199
    :cond_ea
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_f4

    .line 1200
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1202
    :cond_f4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_fe

    .line 1203
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    .line 1205
    :cond_fe
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_108

    .line 1206
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    .line 1209
    :cond_108
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 1210
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_123

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getInsetsRoundedCornerFrame()Z

    move-result v1

    iget-boolean v2, p2, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    if-eq v1, v2, :cond_123

    .line 1212
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    iget-boolean v2, p2, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setInsetsRoundedCornerFrame(Z)V

    .line 1216
    :cond_123
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_138

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_138

    .line 1217
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatControllerStub:Lcom/android/server/wm/BoundsCompatControllerStub;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BoundsCompatControllerStub;->adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1220
    :cond_138
    return-void

    nop

    :sswitch_data_13a
    .sparse-switch
        0x1 -> :sswitch_41
        0x7d5 -> :sswitch_1c
        0x7d6 -> :sswitch_d
        0x7dd -> :sswitch_9
        0x7df -> :sswitch_d
    .end sparse-switch
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 15
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 1930
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-ne v0, v1, :cond_12

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1934
    .local v0, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 1936
    .end local v0    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 1937
    .local v0, "affectsSystemUi":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": affectsSystemUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_3c
    invoke-direct {p0, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1941
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 1942
    .local v1, "isOverlappingWithNavBar":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_52

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v3, :cond_52

    .line 1943
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1944
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1947
    :cond_52
    if-nez v0, :cond_55

    .line 1948
    return-void

    .line 1951
    :cond_55
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v2, :cond_61

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_61

    move v3, v2

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    .line 1953
    .local v3, "appWindow":Z
    :goto_62
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_91

    .line 1954
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1955
    .local v4, "fl":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1958
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v5, :cond_7e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1959
    :cond_7e
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1960
    const/4 v3, 0x1

    .line 1964
    :cond_81
    if-eqz v3, :cond_91

    if-nez p3, :cond_91

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_91

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_91

    .line 1966
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1974
    .end local v4    # "fl":I
    :cond_91
    if-eqz v3, :cond_ab

    if-nez p3, :cond_ab

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1975
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v2

    if-nez v2, :cond_ab

    .line 1976
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipPinnedMode(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_b1

    :cond_ab
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7ef

    if-ne v2, v4, :cond_134

    .line 1981
    :cond_b1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_b7

    .line 1982
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1987
    :cond_b7
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_107

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1988
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_107

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1989
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 1990
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1992
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 1993
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/view/AppearanceRegion;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v6, v6, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v6, v6, 0x8

    new-instance v7, Landroid/graphics/Rect;

    .line 1995
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 1993
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2006
    :cond_107
    if-eqz v1, :cond_115

    .line 2007
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_10f

    .line 2008
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2010
    :cond_10f
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_115

    .line 2011
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    .line 2016
    :cond_115
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_15f

    .line 2017
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v4

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v5, v2, 0x8

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2019
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2018
    move-object v7, p1

    invoke-interface/range {v4 .. v9}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->addStatusBarAppearanceRegionsForLetterBox(ILandroid/graphics/Rect;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    goto :goto_15f

    .line 2022
    :cond_134
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 2023
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_157

    .line 2024
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v2, v2, 0x8

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2026
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    .line 2024
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2028
    :cond_157
    if-eqz v1, :cond_15f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_15f

    .line 2029
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 2032
    :cond_15f
    :goto_15f
    return-void
.end method

.method public areSystemBarsForcedShownLw()Z
    .registers 2

    .line 1771
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 2

    .line 1906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1907
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1908
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    .line 1909
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1910
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1911
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1915
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1916
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1918
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCureentInSplitScrren:Z

    .line 1919
    return-void
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 2506
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2507
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3133
    .local v0, "prefixInner":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    const-string v1, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3135
    const-string v1, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3136
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3137
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDockMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v1}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    const-string v1, " mLidState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAwake="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3140
    const-string v1, " mScreenOnEarly="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3141
    const-string v1, " mScreenOnFully="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyguardDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3143
    const-string v1, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHdmiPlugged="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3145
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v1, :cond_bc

    .line 3146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastDisableFlags=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    :cond_bc
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v1, :cond_d5

    .line 3150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastAppearance="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3151
    const-class v1, Landroid/view/InsetsFlags;

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    const-string v3, "appearance"

    invoke-static {v1, v3, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    :cond_d5
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v1, :cond_ee

    .line 3154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastBehavior="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3155
    const-class v1, Landroid/view/InsetsFlags;

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    const-string v3, "behavior"

    invoke-static {v1, v3, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    :cond_ee
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mShowingDream="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3158
    const-string v1, " mDreamingLockscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3159
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_118

    .line 3160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStatusBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3162
    :cond_118
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_138

    .line 3163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStatusBarAlt="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStatusBarAltPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3165
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3167
    :cond_138
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_149

    .line 3168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExpandedPanel="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3170
    :cond_149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "isKeyguardShowing="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3171
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_190

    .line 3172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBar="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarOpacityMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3174
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarCanMove="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3178
    :cond_190
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1ae

    .line 3179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarAlt="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarAltPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3181
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3183
    :cond_1ae
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1cc

    .line 3184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mClimateBarAlt="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mClimateBarAltPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3186
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3188
    :cond_1cc
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1ea

    .line 3189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExtraNavBarAlt="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExtraNavBarAltPosition="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3193
    :cond_1ea
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1fb

    .line 3194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFocusedWindow="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3196
    :cond_1fb
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_20d

    .line 3197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3200
    :cond_20d
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_21e

    .line 3201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarColorWindowCandidate="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3204
    :cond_21e
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_22f

    .line 3205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavBarBackgroundWindow="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3206
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3208
    :cond_22f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    if-eqz v1, :cond_24f

    .line 3209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastStatusBarAppearanceRegions="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_240
    if-ltz v1, :cond_24f

    .line 3211
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3210
    add-int/lit8 v1, v1, -0x1

    goto :goto_240

    .line 3214
    .end local v1    # "i":I
    :cond_24f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27b

    .line 3215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStatusBarBackgroundWindows="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_268
    if-ltz v1, :cond_27b

    .line 3217
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3218
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3216
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_268

    .line 3221
    .end local v1    # "i":I
    :cond_27b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTopIsFullscreen="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceShowNavigationBarEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3223
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3224
    const-string v1, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRemoteInsetsControllerControlsSystemBars="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsPolicy;->getRemoteInsetsControllerControlsSystemBars()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3227
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3228
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 1072
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_14

    .line 1077
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1078
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1079
    monitor-exit v0

    .line 1080
    return v1

    .line 1074
    :cond_14
    :goto_14
    monitor-exit v0

    return v2

    .line 1079
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public finishPostLayoutPolicyLw()V
    .registers 4

    .line 2084
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v0, :cond_e

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 2088
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 2090
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v0, v1, :cond_1e

    .line 2091
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 2093
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 2096
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3a

    .line 2100
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2101
    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateEmbeddingStateIfNeed(Lcom/android/server/wm/WindowState;)V

    .line 2104
    :cond_3a
    return-void
.end method

.method public finishScreenTurningOn()Z
    .registers 16

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .local v1, "protoLogParam0":Z
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .local v5, "protoLogParam1":Z
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .local v6, "protoLogParam2":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .local v7, "protoLogParam3":Z
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .local v8, "protoLogParam4":Z
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x6f2b8ffc

    const/16 v11, 0x3ff

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v4, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1105
    .end local v1    # "protoLogParam0":Z
    .end local v5    # "protoLogParam1":Z
    .end local v6    # "protoLogParam2":Z
    .end local v7    # "protoLogParam3":Z
    .end local v8    # "protoLogParam4":Z
    :cond_42
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_57

    goto :goto_6c

    .line 1110
    :cond_57
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v1, :cond_66

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x43f97d42

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    :cond_66
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1112
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1113
    monitor-exit v0

    .line 1114
    return v2

    .line 1107
    :cond_6c
    :goto_6c
    monitor-exit v0

    return v3

    .line 1113
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_11

    .line 1090
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1091
    monitor-exit v0

    .line 1092
    return v1

    .line 1087
    :cond_11
    :goto_11
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1091
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 2599
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2600
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2601
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    .line 2602
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2604
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 2605
    return-void
.end method

.method public forceHideStatusBar()V
    .registers 2

    .line 3345
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    .line 3346
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy;->hideStatusBar()V

    .line 3348
    :cond_b
    return-void
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2467
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 2468
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_11

    .line 2471
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2473
    :cond_11
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 7
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2452
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 2299
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2

    .line 2291
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 2292
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2294
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDockMode()I
    .registers 2

    .line 991
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1541
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 2

    .line 2684
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    return-object v0
.end method

.method getLaptopOverlay()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1647
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLaptopOverlay:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getLidState()I
    .registers 2

    .line 1015
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method getMiuiWindowCornerRadius()F
    .registers 3

    .line 2490
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2491
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2490
    :goto_15
    return v0
.end method

.method public getNavBarPosition()I
    .registers 2

    .line 2592
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1642
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    :goto_7
    return-object v0
.end method

.method getNavigationBarHeight(I)I
    .registers 7
    .param p1, "rotation"    # I

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2384
    return v1

    .line 2386
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2388
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v2, v2, v3

    if-eqz v2, :cond_1f

    .line 2391
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aget-object v2, v2, v3

    .local v2, "providedInternalInsets":Landroid/graphics/Insets;
    goto :goto_21

    .line 2393
    .end local v2    # "providedInternalInsets":Landroid/graphics/Insets;
    :cond_1f
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2395
    .restart local v2    # "providedInternalInsets":Landroid/graphics/Insets;
    :goto_21
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-ge v3, v4, :cond_28

    .line 2396
    return v1

    .line 2398
    :cond_28
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v3

    return v1
.end method

.method public getNonDecorDisplayHeight(IILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullHeight"    # I
    .param p2, "rotation"    # I
    .param p3, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2425
    move v0, p1

    .line 2426
    .local v0, "height":I
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v1

    .line 2427
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 2428
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2430
    :cond_d
    if-eqz p3, :cond_19

    .line 2431
    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 2434
    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2435
    .local v2, "di":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_36

    if-eqz v2, :cond_36

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isCarWithDisplay()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2436
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-gt v3, v4, :cond_36

    .line 2437
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    sub-int/2addr v0, v3

    .line 2441
    :cond_36
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2362
    move v0, p1

    .line 2363
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2364
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v1

    .line 2365
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 2366
    :cond_11
    invoke-direct {p0, p3, p4, v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2369
    .end local v1    # "navBarPosition":I
    :cond_16
    if-eqz p5, :cond_22

    .line 2370
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2374
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_33

    if-le p1, p2, :cond_33

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isCarWithDisplay()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2375
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    sub-int/2addr v0, v1

    .line 2378
    :cond_33
    return v0
.end method

.method public getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayRotation"    # I
    .param p2, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p3, "outInsets"    # Landroid/graphics/Rect;

    .line 2534
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2537
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2538
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 2539
    .local v0, "uiMode":I
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v1

    .line 2540
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 2541
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(I)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    .line 2542
    :cond_1f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 2543
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 2544
    :cond_29
    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 2545
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(III)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 2549
    .end local v0    # "uiMode":I
    .end local v1    # "position":I
    :cond_32
    :goto_32
    if-eqz p2, :cond_58

    .line 2550
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 2551
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 2552
    iget v0, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 2553
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 2557
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2558
    .local v0, "di":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_83

    if-eqz v0, :cond_83

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isCarWithDisplay()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2559
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v1, v2, :cond_7a

    .line 2560
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_83

    .line 2562
    :cond_7a
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 2566
    :cond_83
    :goto_83
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1638
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 2

    .line 3126
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "displayRotation"    # I
    .param p2, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p3, "outInsets"    # Landroid/graphics/Rect;

    .line 2518
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2521
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2522
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2523
    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    :goto_7
    return-object v0
.end method

.method getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .registers 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_d

    .line 1621
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .local v0, "statusBarHeight":I
    goto :goto_e

    .line 1623
    .end local v0    # "statusBarHeight":I
    :cond_d
    const/4 v0, 0x0

    .line 1625
    .restart local v0    # "statusBarHeight":I
    :goto_e
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method getStatusBarHeightForRotation(I)I
    .registers 3
    .param p1, "rotation"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 253
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 254
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 256
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 257
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .registers 2

    .line 2303
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .registers 3

    .line 2484
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2485
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2484
    :goto_15
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 995
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .registers 2

    .line 1003
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public hasStatusBar()Z
    .registers 2

    .line 999
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .registers 2

    .line 1023
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .registers 2

    .line 971
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .registers 2

    .line 975
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method public isForceShowNavigationBarEnabled()Z
    .registers 2

    .line 1043
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    return v0
.end method

.method isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "type"    # I

    .line 2959
    if-nez p1, :cond_4

    .line 2960
    const/4 v0, 0x1

    return v0

    .line 2962
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method isHdmiPlugged()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 2

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method isKeyguardShowing()Z
    .registers 2

    .line 2676
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 2

    .line 983
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .registers 2

    .line 2496
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isTopLayoutFullscreen()Z
    .registers 2

    .line 1899
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 3291
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_13

    .line 3292
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 3295
    :cond_13
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 2

    .line 1039
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method synthetic lambda$addWindowLw$1$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1363
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1364
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 1365
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1366
    .local v0, "cutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_28

    .line 1367
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    .line 1368
    .local v1, "top":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1369
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 1373
    .end local v1    # "top":Landroid/graphics/Rect;
    :cond_28
    return-void
.end method

.method synthetic lambda$addWindowLw$10$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1493
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1494
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1495
    .local v0, "leftSafeInset":I
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1496
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1497
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1498
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1500
    return-void
.end method

.method synthetic lambda$addWindowLw$11$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1503
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 1504
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1506
    .local v0, "rightSafeInset":I
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int v1, v0, v1

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1507
    const/4 v1, 0x0

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1508
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1509
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1510
    return-void
.end method

.method synthetic lambda$addWindowLw$2$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1384
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_20

    .line 1385
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 1387
    .local v0, "providedInternalInsets":[Landroid/graphics/Insets;
    if-eqz v0, :cond_1b

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    aget-object v1, v0, v2

    if-eqz v1, :cond_1b

    .line 1390
    aget-object v1, v0, v2

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 1392
    :cond_1b
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1394
    .end local v0    # "providedInternalInsets":[Landroid/graphics/Insets;
    :cond_20
    return-void
.end method

.method synthetic lambda$addWindowLw$4$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1402
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1403
    return-void
.end method

.method synthetic lambda$addWindowLw$5$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1406
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1407
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1408
    .local v0, "leftSafeInset":I
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1409
    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1410
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1411
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1412
    return-void
.end method

.method synthetic lambda$addWindowLw$6$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1415
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 1416
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1418
    .local v0, "rightSafeInset":I
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int v1, v0, v1

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1419
    const/4 v1, 0x0

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 1420
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 1421
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 1422
    return-void
.end method

.method synthetic lambda$addWindowLw$7$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1425
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_11

    .line 1427
    :cond_e
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1429
    :cond_11
    return-void
.end method

.method synthetic lambda$callStatusBarSafely$16$com-android-server-wm-DisplayPolicy(Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/Consumer;

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 2783
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 2784
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2786
    :cond_9
    return-void
.end method

.method synthetic lambda$getImeSourceFrameProvider$12$com-android-server-wm-DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1542
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1543
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_30

    .line 1547
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2a

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 1552
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1553
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1554
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1555
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 1557
    :cond_2a
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1559
    :goto_2f
    return-void

    .line 1544
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IME insets must be provided by a window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-wm-DisplayPolicy()V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 874
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 875
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method synthetic lambda$notifyDisplayReady$13$com-android-server-wm-DisplayPolicy()V
    .registers 4

    .line 2342
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2343
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 2344
    .local v1, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_d

    .line 2345
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 2347
    :cond_d
    const-class v2, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2348
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2349
    .local v2, "wpMgr":Lcom/android/server/wallpaper/WallpaperManagerInternal;
    if-eqz v2, :cond_1a

    .line 2350
    invoke-virtual {v2, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 2352
    :cond_1a
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 26
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attached"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1826
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->skipLayout()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1827
    return-void

    .line 1831
    :cond_b
    move-object/from16 v1, p3

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v8

    .line 1833
    .end local p3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v8, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget v1, v8, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1834
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_23

    :cond_21
    move-object/from16 v18, v1

    .line 1838
    .local v18, "attachedWindowFrame":Landroid/graphics/Rect;
    :goto_23
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-ne v6, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    move/from16 v21, v2

    .line 1839
    .local v21, "trustedSize":Z
    const/4 v2, -0x1

    if-eqz v21, :cond_33

    iget v3, v7, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move v15, v3

    goto :goto_34

    :cond_33
    move v15, v2

    .line 1840
    .local v15, "requestedWidth":I
    :goto_34
    if-eqz v21, :cond_3b

    iget v3, v7, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v16, v3

    goto :goto_3d

    :cond_3b
    move/from16 v16, v2

    .line 1844
    .local v16, "requestedHeight":I
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_69

    .line 1845
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_57

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_57
    invoke-interface {v3, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 1846
    .local v2, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v2, :cond_69

    .line 1847
    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v3

    iput v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1848
    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v3, v4, v3

    iput v3, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1854
    .end local v2    # "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_69
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 1855
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v14

    .line 1856
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v17

    iget v2, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 1854
    move-object v10, v6

    move/from16 v19, v2

    move-object/from16 v20, v5

    invoke-virtual/range {v9 .. v20}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    .line 1860
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_bc

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1861
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_bc

    .line 1863
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->getCurrentMiuiSizeCompatScale(F)F

    move-result v2

    .line 1864
    .local v2, "scale":F
    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_bc

    .line 1865
    iput v2, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1866
    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v3, v4, v3

    iput v3, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1872
    .end local v2    # "scale":F
    :cond_bc
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_df

    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isFixedOrizationScale()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_df

    .line 1874
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mFixedOrizationScaleStub:Lcom/android/server/wm/FixedOrizationScaleStub;

    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-interface {v2, v3}, Lcom/android/server/wm/FixedOrizationScaleStub;->getCurrentFixedOrizationScale(F)F

    move-result v2

    .line 1875
    .restart local v2    # "scale":F
    iput v2, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1876
    iget v3, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v4, v3

    iput v4, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1883
    .end local v2    # "scale":F
    :cond_df
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v2

    invoke-interface {v2, v7, v5}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->adjustWindowFrameForSplitIme(Lcom/android/server/wm/WindowState;Landroid/window/ClientWindowFrames;)V

    .line 1887
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_f2

    iget-object v1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    :cond_f2
    move-object v3, v1

    .line 1888
    .local v3, "tf":Lcom/android/server/wm/TaskFragmentStub;
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    move-object/from16 v2, p1

    move-object v4, v5

    move-object v11, v5

    move-object v5, v9

    move-object v9, v6

    .end local v6    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    move v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->adaptEmbeddingWindowNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskFragmentStub;Landroid/window/ClientWindowFrames;Lcom/android/server/wm/WindowState;Z)V

    .line 1891
    iget v1, v7, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, v7, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v7, v11, v1, v2}, Lcom/android/server/wm/WindowState;->setFrames(Landroid/window/ClientWindowFrames;II)V

    .line 1892
    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 2

    .line 1007
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(I)I
    .registers 4
    .param p1, "displayRotation"    # I

    .line 2570
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    .line 2571
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2572
    .local v0, "gravity":I
    packed-switch v0, :pswitch_data_16

    .line 2578
    :pswitch_d
    const/4 v1, 0x4

    return v1

    .line 2576
    :pswitch_f
    const/4 v1, 0x2

    return v1

    .line 2574
    :pswitch_11
    const/4 v1, 0x1

    return v1

    .line 2581
    .end local v0    # "gravity":I
    :cond_13
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_11
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method notifyDisplayReady()V
    .registers 3

    .line 2341
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2353
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 9

    .line 2199
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 2201
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2202
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 2203
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 2204
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 2205
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 2207
    .local v5, "seascapeRotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2208
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2210
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2211
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2212
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v6, v4

    .line 2213
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 2214
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeightForRotation(I)I

    move-result v7

    aput v7, v6, v5

    .line 2215
    const v6, 0x105013a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    goto :goto_51

    .line 2218
    :cond_44
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v7, 0x0

    aput v7, v6, v5

    aput v7, v6, v4

    aput v7, v6, v3

    aput v7, v6, v2

    .line 2222
    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    .line 2225
    :goto_51
    const v6, 0x10e00af

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 2226
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 2227
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 2228
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 2229
    invoke-virtual {v6}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    .line 2230
    const v6, 0x1110182

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 2231
    const v6, 0x111017f

    .line 2232
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 2235
    const v6, 0x10501e1

    .line 2236
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2237
    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 2241
    const v6, 0x111002c

    .line 2242
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 2243
    .local v6, "shouldAttach":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v7, v6, :cond_a2

    .line 2244
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 2246
    :cond_a2
    return-void
.end method

.method onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 1811
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 1812
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 3
    .param p1, "lockTaskState"    # I

    .line 3101
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 3102
    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 2

    .line 2190
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2191
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 2192
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 2193
    return-void
.end method

.method onPowerKeyDown(Z)V
    .registers 8
    .param p1, "isScreenOn"    # Z

    .line 3079
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 3080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 3081
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 3079
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 3082
    .local v0, "panic":Z
    if-eqz v0, :cond_20

    .line 3083
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3085
    :cond_20
    return-void
.end method

.method onSystemUiSettingsChanged()Z
    .registers 3

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onSettingChanged(I)Z

    move-result v0

    return v0
.end method

.method onVrStateChangedLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3088
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 3089
    return-void
.end method

.method release()V
    .registers 4

    .line 3299
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 3300
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3301
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3302
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->release()V

    .line 3303
    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_a

    goto :goto_4a

    .line 1590
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_3f

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_13

    goto :goto_3f

    .line 1594
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1a

    .line 1595
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_54

    .line 1596
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_28

    .line 1597
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    .line 1598
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_54

    .line 1599
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_36

    .line 1600
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_54

    .line 1604
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLaptopOverlay:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_54

    if-ne v0, p1, :cond_54

    .line 1605
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLaptopOverlay:Lcom/android/server/wm/WindowState;

    goto :goto_54

    .line 1591
    :cond_3f
    :goto_3f
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1592
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    .line 1593
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_54

    .line 1587
    :cond_4a
    :goto_4a
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1588
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    .line 1589
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1608
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_5a

    .line 1609
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1612
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1613
    return-void
.end method

.method resetSystemBarAttributes()V
    .registers 2

    .line 2688
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 2690
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1063
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1064
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1065
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1066
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 1053
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1054
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1055
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 1056
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1057
    monitor-exit v0

    .line 1058
    return-void

    .line 1057
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .registers 21
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v3, :cond_26

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    int-to-long v9, v2

    .local v9, "protoLogParam1":J
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x1458bdef

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v11, v12, v7, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1667
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":J
    :cond_26
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const v9, 0x10a002d

    const v10, 0x10a002e

    const/4 v11, 0x3

    if-ne v1, v3, :cond_3c

    .line 1668
    if-eq v2, v6, :cond_3b

    if-ne v2, v7, :cond_36

    goto :goto_3b

    .line 1671
    :cond_36
    if-eq v2, v8, :cond_3a

    if-ne v2, v11, :cond_df

    .line 1673
    :cond_3a
    return v9

    .line 1670
    :cond_3b
    :goto_3b
    return v10

    .line 1675
    :cond_3c
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v12, 0x10a0029

    const v13, 0x10a002b

    const v14, 0x10a0026

    const v15, 0x10a002a

    const v16, 0x10a0027

    const v17, 0x10a002c

    if-ne v1, v3, :cond_92

    .line 1676
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_5b

    .line 1677
    return v5

    .line 1680
    :cond_5b
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v7, :cond_78

    .line 1681
    if-eq v2, v6, :cond_69

    if-ne v2, v7, :cond_64

    goto :goto_69

    .line 1688
    :cond_64
    if-eq v2, v8, :cond_68

    if-ne v2, v11, :cond_df

    .line 1690
    :cond_68
    return v14

    .line 1683
    :cond_69
    :goto_69
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1684
    const v3, 0x10a0028

    return v3

    .line 1686
    :cond_77
    return v16

    .line 1692
    :cond_78
    if-ne v3, v6, :cond_85

    .line 1693
    if-eq v2, v6, :cond_84

    if-ne v2, v7, :cond_7f

    goto :goto_84

    .line 1696
    :cond_7f
    if-eq v2, v8, :cond_83

    if-ne v2, v11, :cond_df

    .line 1698
    :cond_83
    return v13

    .line 1695
    :cond_84
    :goto_84
    return v17

    .line 1700
    :cond_85
    if-ne v3, v8, :cond_df

    .line 1701
    if-eq v2, v6, :cond_91

    if-ne v2, v7, :cond_8c

    goto :goto_91

    .line 1704
    :cond_8c
    if-eq v2, v8, :cond_90

    if-ne v2, v11, :cond_df

    .line 1706
    :cond_90
    return v12

    .line 1703
    :cond_91
    :goto_91
    return v15

    .line 1709
    :cond_92
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_a2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_a2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_a2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_df

    .line 1711
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_ab

    .line 1712
    return v5

    .line 1715
    :cond_ab
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_b2

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_b4

    :cond_b2
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    .line 1717
    .local v3, "pos":I
    :goto_b4
    if-eq v2, v6, :cond_bb

    if-ne v2, v7, :cond_b9

    goto :goto_bb

    :cond_b9
    move v6, v5

    goto :goto_bc

    :cond_bb
    :goto_bb
    move v6, v8

    .line 1718
    .local v6, "isExitOrHide":Z
    :goto_bc
    if-eq v2, v8, :cond_c2

    if-ne v2, v11, :cond_c1

    goto :goto_c2

    :cond_c1
    move v8, v5

    :cond_c2
    :goto_c2
    move v7, v8

    .line 1720
    .local v7, "isEnterOrShow":Z
    sparse-switch v3, :sswitch_data_104

    goto :goto_df

    .line 1743
    :sswitch_c7
    if-eqz v6, :cond_ca

    .line 1744
    return v10

    .line 1745
    :cond_ca
    if-eqz v7, :cond_df

    .line 1746
    return v9

    .line 1736
    :sswitch_cd
    if-eqz v6, :cond_d0

    .line 1737
    return v16

    .line 1738
    :cond_d0
    if-eqz v7, :cond_df

    .line 1739
    return v14

    .line 1729
    :sswitch_d3
    if-eqz v6, :cond_d6

    .line 1730
    return v17

    .line 1731
    :cond_d6
    if-eqz v7, :cond_df

    .line 1732
    return v13

    .line 1722
    :sswitch_d9
    if-eqz v6, :cond_dc

    .line 1723
    return v15

    .line 1724
    :cond_dc
    if-eqz v7, :cond_df

    .line 1725
    return v12

    .line 1752
    .end local v3    # "pos":I
    .end local v6    # "isExitOrHide":Z
    .end local v7    # "isEnterOrShow":Z
    :cond_df
    :goto_df
    const/4 v3, 0x5

    if-ne v2, v3, :cond_103

    .line 1753
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1757
    const/4 v3, -0x1

    return v3

    .line 1759
    :cond_f0
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v3, :cond_ff

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x4db3cc1d

    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v5, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    :cond_ff
    const v3, 0x10a0013

    return v3

    .line 1764
    :cond_103
    return v5

    :sswitch_data_104
    .sparse-switch
        0x1 -> :sswitch_d9
        0x2 -> :sswitch_d3
        0x4 -> :sswitch_cd
        0x8 -> :sswitch_c7
    .end sparse-switch
.end method

.method public setAwake(Z)V
    .registers 2
    .param p1, "awake"    # Z

    .line 1019
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 1020
    return-void
.end method

.method public setDockMode(I)V
    .registers 2
    .param p1, "dockMode"    # I

    .line 987
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 988
    return-void
.end method

.method public setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1227
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_23

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1232
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1234
    :cond_23
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3
    .param p1, "plugged"    # Z

    .line 952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 953
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 6
    .param p1, "plugged"    # Z
    .param p2, "force"    # Z

    .line 956
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_27

    .line 957
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 958
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 961
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 962
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 964
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    return-void
.end method

.method public setLidState(I)V
    .registers 2
    .param p1, "lidState"    # I

    .line 1011
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 1012
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2
    .param p1, "persistentVrModeEnabled"    # Z

    .line 979
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 980
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .registers 4
    .param p1, "pointerLocationEnabled"    # Z

    .line 3238
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3239
    return-void

    .line 3242
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 3243
    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x5

    .line 3242
    :goto_e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3244
    return-void
.end method

.method shouldAttachNavBarToAppDuringTransition()Z
    .registers 2

    .line 3340
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .registers 19
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1780
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 1781
    .local v2, "controller":Lcom/android/server/wm/InsetsStateController;
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_63

    .line 1782
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1783
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1785
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 1786
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 1783
    invoke-virtual/range {v5 .. v16}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    .line 1788
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v5

    .line 1789
    .local v5, "sources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 1790
    .local v6, "state":Landroid/view/InsetsState;
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "index":I
    :goto_48
    if-ltz v7, :cond_60

    .line 1791
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1792
    .local v8, "type":I
    invoke-virtual {v2, v8}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v9

    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v9, v1, v10}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 1790
    .end local v8    # "type":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_48

    .line 1781
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "sources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    .end local v6    # "state":Landroid/view/InsetsState;
    .end local v7    # "index":I
    :cond_60
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 1796
    .end local v3    # "i":I
    :cond_63
    return-void
.end method

.method public switchUser()V
    .registers 1

    .line 2182
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 2183
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    .line 2184
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_f

    .line 933
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 935
    :cond_f
    return-void
.end method

.method public takeScreenshot(II)V
    .registers 10
    .param p1, "screenshotType"    # I
    .param p2, "source"    # I

    .line 3117
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_34

    .line 3118
    nop

    .line 3119
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 3120
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2b

    move v3, v2

    :cond_2b
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    .line 3118
    move v1, p1

    move v2, v4

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 3123
    :cond_34
    return-void
.end method

.method topAppHidesStatusBar()Z
    .registers 4

    .line 2172
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_a

    goto :goto_11

    .line 2175
    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2173
    :cond_11
    :goto_11
    return v1
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 4

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2250
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_19

    const v1, 0x1110180

    .line 2252
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 2253
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    .line 2254
    return-void
.end method

.method updateInsetsSourceFramesExceptIme(Lcom/android/server/wm/DisplayFrames;)V
    .registers 19
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_42

    .line 1800
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1801
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->getLayoutingAttrs(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1803
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 1804
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v12

    const/4 v13, 0x0

    iget v14, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 1801
    move-object/from16 v16, v15

    invoke-virtual/range {v4 .. v15}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    .line 1806
    move-object/from16 v4, v16

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 1799
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 1808
    .end local v2    # "i":I
    :cond_42
    return-void
.end method

.method updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .registers 4
    .param p1, "appearance"    # I
    .param p2, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 2822
    if-eqz p2, :cond_19

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 2829
    :cond_d
    and-int/lit8 p1, p1, -0x11

    .line 2830
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 2832
    return p1

    .line 2824
    :cond_19
    :goto_19
    and-int/lit8 p1, p1, -0x11

    .line 2825
    return p1
.end method

.method updateSystemBarAttributes()V
    .registers 23

    .line 2693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2694
    .local v1, "winCandidate":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_14

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_14

    .line 2698
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2702
    :cond_14
    if-nez v1, :cond_17

    .line 2703
    return-void

    .line 2708
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4e

    .line 2713
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_33

    .line 2714
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v2

    if-eqz v2, :cond_33

    move v2, v4

    goto :goto_34

    :cond_33
    move v2, v5

    .line 2715
    .local v2, "lastFocusCanReceiveKeys":Z
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_4a

    .line 2716
    :cond_43
    if-eqz v2, :cond_48

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_4a

    .line 2717
    :cond_48
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_4a
    move-object v1, v3

    .line 2718
    if-nez v1, :cond_4e

    .line 2719
    return-void

    .line 2722
    .end local v2    # "lastFocusCanReceiveKeys":Z
    :cond_4e
    move-object v2, v1

    .line 2723
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 2725
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    .line 2726
    .local v3, "displayId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisableFlags()I

    move-result v14

    .line 2727
    .local v14, "disableFlags":I
    invoke-direct {v0, v2, v14}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I

    move-result v15

    .line 2728
    .local v15, "opaqueAppearance":I
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v6, v7, v8}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v13

    .line 2730
    .local v13, "navColorWin":Lcom/android/server/wm/WindowState;
    if-eqz v13, :cond_73

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v13, v6, :cond_73

    move v10, v4

    goto :goto_74

    :cond_73
    move v10, v5

    .line 2736
    .local v10, "isNavbarColorManagedByIme":Z
    :goto_74
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v6, v6, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v0, v6, v13}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    move-result v6

    or-int/2addr v6, v15

    .line 2737
    invoke-static {}, Lcom/android/server/wm/DisplayPolicyStub;->getInstance()Lcom/android/server/wm/DisplayPolicyStub;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v7, v2, v8, v9, v13}, Lcom/android/server/wm/DisplayPolicyStub;->getExtraNavigationBarAppearance(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v7

    or-int v12, v6, v7

    .line 2741
    .local v12, "appearance":I
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v11, v6, Landroid/view/InsetsFlags;->behavior:I

    .line 2742
    .local v11, "behavior":I
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2743
    .local v9, "focusedApp":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 2744
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v6

    if-nez v6, :cond_a6

    goto :goto_a8

    :cond_a6
    move v6, v5

    goto :goto_a9

    :cond_a8
    :goto_a8
    move v6, v4

    :goto_a9
    move v8, v6

    .line 2745
    .local v8, "isFullscreen":Z
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2746
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Lcom/android/internal/view/AppearanceRegion;

    .line 2747
    .local v7, "statusBarAppearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2748
    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eq v6, v14, :cond_c9

    .line 2749
    iput v14, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 2750
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2751
    .local v6, "cause":Ljava/lang/String;
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v14, v6}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 2754
    .end local v6    # "cause":Ljava/lang/String;
    :cond_c9
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v4, v12, :cond_f2

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v4, v11, :cond_f2

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 2756
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/InsetsVisibilities;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 2757
    invoke-static {v4, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v4, v8, :cond_f2

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2759
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 2760
    return-void

    .line 2762
    :cond_f2
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_111

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-eq v4, v8, :cond_111

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v4, v12

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_111

    .line 2764
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v8, :cond_10d

    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_10e

    :cond_10d
    const/4 v5, 0x1

    :cond_10e
    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 2767
    :cond_111
    new-instance v4, Landroid/view/InsetsVisibilities;

    .line 2768
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InsetsVisibilities;-><init>(Landroid/view/InsetsVisibilities;)V

    .line 2769
    .local v4, "requestedVisibilities":Landroid/view/InsetsVisibilities;
    iput v12, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 2770
    iput v11, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 2771
    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 2772
    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 2773
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 2774
    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2775
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    move-object v6, v5

    move-object/from16 v16, v7

    .end local v7    # "statusBarAppearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    .local v16, "statusBarAppearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    move v7, v3

    move/from16 v17, v8

    .end local v8    # "isFullscreen":Z
    .local v17, "isFullscreen":Z
    move v8, v12

    move-object/from16 v18, v9

    .end local v9    # "focusedApp":Ljava/lang/String;
    .local v18, "focusedApp":Ljava/lang/String;
    move-object/from16 v9, v16

    move/from16 v19, v11

    .end local v11    # "behavior":I
    .local v19, "behavior":I
    move/from16 v20, v12

    .end local v12    # "appearance":I
    .local v20, "appearance":I
    move-object v12, v4

    move-object/from16 v21, v13

    .end local v13    # "navColorWin":Lcom/android/server/wm/WindowState;
    .local v21, "navColorWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v13, v18

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    .line 2778
    return-void
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 1252
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_10

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1257
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1a

    .line 1258
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1261
    :cond_1a
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const/4 v3, -0x7

    sparse-switch v0, :sswitch_data_ea

    goto :goto_80

    .line 1272
    :sswitch_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_80

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1277
    return v3

    .line 1292
    :sswitch_33
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_80

    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_80

    .line 1282
    :sswitch_43
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_80

    .line 1286
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1287
    :cond_5c
    return v3

    .line 1301
    :sswitch_5d
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1304
    goto :goto_80

    .line 1306
    :sswitch_63
    const/16 v0, -0xa

    return v0

    .line 1263
    :sswitch_66
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_7f

    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_80

    .line 1267
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1268
    :cond_7f
    return v3

    .line 1309
    :cond_80
    :goto_80
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v4, 0x0

    if-eqz v0, :cond_e8

    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_94

    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1316
    :cond_94
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    .line 1318
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    move v2, v4

    :goto_9d
    if-ge v2, v1, :cond_e8

    aget v5, v0, v2

    .line 1319
    .local v5, "insetType":I
    sparse-switch v5, :sswitch_data_10c

    goto :goto_e5

    .line 1338
    :sswitch_a5
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_e5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1339
    return v3

    .line 1333
    :sswitch_b0
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_e5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1334
    return v3

    .line 1327
    :sswitch_bb
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_cf

    :cond_c5
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_e5

    .line 1328
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1329
    :cond_cf
    return v3

    .line 1321
    :sswitch_d0
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_da

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_e4

    :cond_da
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_e5

    .line 1322
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1323
    :cond_e4
    return v3

    .line 1318
    .end local v5    # "insetType":I
    :cond_e5
    :goto_e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 1345
    :cond_e8
    return v4

    nop

    :sswitch_data_ea
    .sparse-switch
        0x7d0 -> :sswitch_66
        0x7de -> :sswitch_63
        0x7e1 -> :sswitch_5d
        0x7e3 -> :sswitch_43
        0x7e8 -> :sswitch_33
        0x7f1 -> :sswitch_5d
        0x7f8 -> :sswitch_23
        0x7f9 -> :sswitch_5d
    .end sparse-switch

    :sswitch_data_10c
    .sparse-switch
        0x0 -> :sswitch_d0
        0x1 -> :sswitch_bb
        0x14 -> :sswitch_b0
        0x15 -> :sswitch_a5
    .end sparse-switch
.end method
