.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# static fields
.field public static final SHOW_TYPES_FOR_PANIC:I

.field public static final SHOW_TYPES_FOR_SWIPE:I

.field public static final USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field public volatile mAwake:Z

.field public mBottomGestureHost:Lcom/android/server/wm/WindowState;

.field public mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

.field public mCanSystemBarsBeShownByUser:Z

.field public final mCarDockEnablesAccelerometer:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public final mDeskDockEnablesAccelerometer:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public volatile mDisplayUiMode:I

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mFocusedPackageName:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHasBottomNavigationBar:Z

.field public volatile mHasNavigationBar:Z

.field public volatile mHasStatusBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Ljava/lang/Runnable;

.field public mHidingPermanentInsetsTypes:I

.field public mImeInsetsConsumed:Z

.field public mImmersiveConfirmationWindowExists:Z

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public mIsImmersiveMode:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mLastRequestedVisibleTypes:I

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLeftGestureHost:Lcom/android/server/wm/WindowState;

.field public mLeftGestureInset:I

.field public final mLetterboxDetails:Ljava/util/ArrayList;

.field public volatile mLidState:I

.field public final mLock:Ljava/lang/Object;

.field public mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public volatile mNotificationShade:Lcom/android/server/wm/WindowState;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public final mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public mRightGestureHost:Lcom/android/server/wm/WindowState;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mShowingPermanentInsetsTypes:I

.field public mShowingTransientInsetsTypes:I

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSystemBarColorApps:Landroid/util/ArraySet;

.field public final mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

.field public mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopGestureHost:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public final mUiContext:Landroid/content/Context;

.field public mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method public static synthetic $r8$lambda$06OrFZ7bRHbKfvv8y5Odzk_ykLE(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 2759
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasFillingContent()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$0D3qSFTs4ZGrtzHlfTiLEIQETeU(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$callStatusBarSafely$9(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$77M0WC5DVTFJWkt-VSvKuBKWmLs(IILjava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 4

    .line 2660
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8LdvEordfxTTSy9wu2U7CmjSry4(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayAddSystemDecorations$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$8VO1rJfRNuJGNI8f10e6N-r26aQ(Lcom/android/server/wm/DisplayPolicy;ZIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayAddSystemDecorations$4(ZIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIXesvdT_aRdzoKMJGkH12ZMtl8(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Ljava/lang/Integer;
    .registers 3

    .line 1332
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 1333
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BKTr9ZjdQgcFR5eJzDS_qFVcM9Q(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GRfdgAecI7OT2glQOBoKxEYtuTw(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2754
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasAdjacentTask()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NZzAQnlrSr5c31KvymgfhHHJdsA(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$OWLe1L-hDkzuNlvzr3kczhn_1n8(Lcom/android/server/wm/DisplayPolicy;IZILcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarsLw$12(IZILcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYiNZTKrLZN0J-F0iJMDMc00nbQ(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;Lcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 10

    move v0, p1

    move p1, p0

    move-object p0, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move p2, v0

    .line 2688
    invoke-interface/range {p0 .. p8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UZjhmqvNczn9Iu1faBXyJIBeebU(Lcom/android/server/wm/DisplayPolicy;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->lambda$notifyDisplayRemoveSystemDecorations$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdKS65QqzQ93Ft9uXiJ4t5J4Jsk(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Ljava/lang/Integer;
    .registers 10

    .line 1258
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 1259
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object p1, v0, p1

    .line 1260
    iget-object v0, p3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1261
    iget-object p3, p3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 1263
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getSource()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    const/4 v3, 0x1

    if-eq v1, v3, :cond_31

    const/4 p4, 0x2

    if-eq v1, p4, :cond_29

    const/4 p0, 0x3

    if-eq v1, p0, :cond_21

    goto :goto_3c

    .line 1275
    :cond_21
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getArbitraryRectangle()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1271
    :cond_29
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_3c

    move v2, v3

    goto :goto_3c

    .line 1268
    :cond_31
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 1265
    :cond_39
    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3c
    :goto_3c
    const/4 p0, -0x1

    if-ne p2, p0, :cond_44

    .line 1279
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_4e

    .line 1280
    :cond_44
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    .line 1282
    :goto_4e
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    if-eqz p2, :cond_59

    .line 1283
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1285
    :cond_59
    invoke-static {p5, p0}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    if-eqz v2, :cond_65

    if-eqz p0, :cond_65

    .line 1288
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, v0, p5, p0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1291
    :cond_65
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_82

    .line 1294
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    .line 1295
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, v0, p0, p2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1297
    invoke-virtual {p0, p5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 1298
    invoke-virtual {p5, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1301
    :cond_82
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v8wJWTcVhOMmJgm9Sq80-TCQWoU(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->lambda$onOverlayChanged$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBottomGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeftGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNavigationBarAlwaysShowOnSideGesture(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRightGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemGestures(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopGestureHost(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingPanicGestureUptime(Lcom/android/server/wm/DisplayPolicy;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 182
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 183
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 188
    const-string v0, "persist.wm.debug.cached_insets_switch"

    const/4 v1, 0x1

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 372
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 262
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayUiMode:I

    const/4 v1, 0x0

    .line 275
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 277
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    .line 280
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 283
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 286
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 309
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 353
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 358
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 361
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 364
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 374
    new-instance v2, Landroid/view/WindowLayout;

    invoke-direct {v2}, Landroid/view/WindowLayout;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 378
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 3006
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 436
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 437
    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_7a

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_84

    .line 438
    :cond_7a
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_84
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 439
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_91

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_9d

    .line 441
    :cond_91
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/content/Context;

    move-result-object v3

    :goto_9d
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 442
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 443
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v4, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 444
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 446
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 448
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111006c

    .line 449
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v6, 0x1110143

    .line 450
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const v6, 0x1110006

    .line 451
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_dd

    const v6, 0x111023f

    .line 452
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_db

    goto :goto_dd

    :cond_db
    move v6, v0

    goto :goto_de

    :cond_dd
    :goto_dd
    move v6, v1

    :goto_de
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    const v6, 0x10e00bf

    .line 454
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    .line 456
    const-string v5, "accessibility"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 458
    iget-boolean v5, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v5, :cond_fe

    .line 459
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 460
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 461
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 464
    :cond_fe
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    .line 465
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v6, p0, v5}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 467
    sget-boolean v5, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v5, :cond_120

    .line 468
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 620
    new-instance v7, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {v7, v3, v6, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 622
    invoke-virtual {p2, v7}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 624
    :cond_120
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;II)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 675
    iget-object v4, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 677
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_15b

    .line 678
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 679
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110262

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 683
    const-string v3, "qemu.hw.mainkeys"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 685
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_163

    .line 686
    :cond_150
    const-string v0, "0"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 687
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_163

    .line 690
    :cond_15b
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 691
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 694
    :cond_163
    :goto_163
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy;

    .line 695
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 698
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 699
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {p1, v6, p2, v2, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 709
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v6, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-direct {p1, v6, v2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 713
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 714
    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 715
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1316
    :cond_3
    iget v0, p1, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_d

    .line 1317
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    .line 1318
    :cond_d
    iget v0, p1, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_17

    .line 1319
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 1320
    :cond_17
    iget v0, p1, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_21

    .line 1321
    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    return-void

    .line 1322
    :cond_21
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    if-eqz p1, :cond_2b

    .line 1323
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    .line 1325
    :cond_2b
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public static chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .registers 4

    if-eqz p1, :cond_15

    .line 2977
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 2978
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;I)Z

    move-result p2

    if-eqz p2, :cond_15

    return-object p1

    .line 2981
    :cond_15
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;I)Z

    move-result p1

    if-eqz p1, :cond_20

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .registers 4

    if-eqz p1, :cond_28

    .line 2709
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_28

    if-eqz p0, :cond_27

    .line 2718
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 2721
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_26

    goto :goto_27

    :cond_26
    return-object p0

    :cond_27
    :goto_27
    return-object p1

    :cond_28
    return-object p0
.end method

.method public static drawsBarBackground(Lcom/android/server/wm/WindowState;I)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 2899
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v3

    .line 2901
    :goto_11
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, 0x8000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 2903
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result p0

    and-int/2addr p0, p1

    if-nez p0, :cond_25

    move p0, v0

    goto :goto_26

    :cond_25
    move p0, v3

    :goto_26
    if-nez v1, :cond_2e

    if-nez v2, :cond_2e

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v3

    :cond_2e
    :goto_2e
    return v0
.end method

.method public static getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;
    .registers 4

    .line 1257
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    return-object v0
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .registers 7

    .line 3302
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_22

    .line 3303
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 3304
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p2

    if-nez v3, :cond_14

    goto :goto_1f

    .line 3307
    :cond_14
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2838
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method

.method public static isNavBarEmpty(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x1600000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 3286
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3292
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 3293
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 3292
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2460
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2461
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public final addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 13

    .line 1710
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1713
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    const/4 v1, 0x1

    if-eqz p1, :cond_7e

    .line 1716
    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, p4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_7e

    .line 1733
    :cond_1f
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v4, p1, v5}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 1735
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne p1, p2, :cond_78

    .line 1736
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v3, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_5b

    .line 1737
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    :cond_5b
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v3, Landroid/graphics/Rect;->right:I

    if-eq p1, p2, :cond_78

    .line 1741
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p4, v3, v4, v5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    :cond_78
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return v1

    .line 1717
    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/internal/view/AppearanceRegion;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p2, v2, p4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return v1
.end method

.method public final addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 1752
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_9

    .line 1754
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 12

    .line 1209
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_12

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_f

    goto :goto_17

    .line 1211
    :cond_f
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_17

    .line 1217
    :cond_12
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_17

    .line 1214
    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1220
    :goto_17
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 1221
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 1223
    :cond_21
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz v0, :cond_7a

    .line 1224
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_27
    if-ltz v0, :cond_7a

    .line 1225
    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    .line 1230
    invoke-static {p1, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;

    move-result-object v3

    .line 1232
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 1236
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1237
    array-length v6, v4

    sub-int/2addr v6, v1

    :goto_3f
    if-ltz v6, :cond_52

    .line 1238
    aget-object v7, v4, v6

    .line 1239
    invoke-virtual {v7}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getWindowType()I

    move-result v7

    invoke-static {p1, v0, v6}, Lcom/android/server/wm/DisplayPolicy;->getFrameProvider(Lcom/android/server/wm/WindowState;II)Lcom/android/internal/util/function/TriFunction;

    move-result-object v8

    .line 1238
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3f

    :cond_51
    const/4 v5, 0x0

    .line 1244
    :cond_52
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1245
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getId()I

    move-result v6

    .line 1246
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v7

    .line 1245
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    .line 1247
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getFlags()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 1248
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 1249
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_7a
    return-void
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    .line 997
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_55

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_51

    const/16 v1, 0x7df

    if-eq v0, v1, :cond_46

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_46

    goto/16 :goto_a1

    .line 1016
    :cond_17
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1004

    if-ltz v2, :cond_25

    cmp-long v0, v0, v3

    if-lez v0, :cond_27

    .line 1018
    :cond_25
    iput-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1023
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1027
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1029
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v0, :cond_a1

    const v0, 0x1030004

    .line 1030
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_a1

    .line 1001
    :cond_46
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    const v1, -0x40001

    and-int/2addr v0, v1

    .line 1003
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_a1

    :cond_51
    const/4 v0, 0x3

    .line 1008
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_a1

    .line 1035
    :cond_55
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a1

    .line 1036
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a1

    .line 1038
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_74

    goto :goto_a1

    .line 1041
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal attributes: Main window of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1042
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that isn\'t translucent trying to fit insets. fitInsetsTypes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p1

    .line 1043
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1049
    :cond_a1
    :goto_a1
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_ad

    or-int/lit8 v1, v1, 0x10

    .line 1050
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 1053
    :cond_ad
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1054
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 1055
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_f6

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f6

    .line 1057
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    move-result v0

    if-nez v0, :cond_f6

    .line 1062
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1067
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1062
    const-string v1, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1069
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput p0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1073
    :cond_f6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    if-nez p0, :cond_102

    .line 1074
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p0, p0, -0x21

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_102
    return-void
.end method

.method public final applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 1792
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p2

    .line 1795
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_1b

    .line 1800
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setFrozen(Z)V

    :cond_1b
    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 1804
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    return-void

    .line 1806
    :cond_23
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_26
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 14

    .line 1528
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-ne v0, v1, :cond_c

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasBottomNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    .line 1533
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 1535
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1538
    iget-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    const/4 v1, 0x1

    if-nez p4, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p4

    if-eqz p4, :cond_2a

    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p4, :cond_2a

    .line 1539
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p4

    if-eqz p4, :cond_2a

    .line 1540
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1543
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasInsetsSourceProvider()Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_9b

    .line 1544
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object p4

    .line 1545
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1546
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_3e
    if-ltz v4, :cond_9b

    .line 1547
    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1548
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v5

    .line 1549
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    .line 1550
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v8

    or-int/2addr v7, v8

    and-int/2addr v6, v7

    if-nez v6, :cond_5b

    goto :goto_98

    .line 1553
    :cond_5b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_6c

    goto :goto_98

    .line 1557
    :cond_6c
    invoke-virtual {v5, v3, v3, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v5

    .line 1559
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_7a

    iget v6, v5, Landroid/graphics/Insets;->left:I

    if-lez v6, :cond_7a

    .line 1560
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1562
    :cond_7a
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_84

    iget v6, v5, Landroid/graphics/Insets;->top:I

    if-lez v6, :cond_84

    .line 1563
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1565
    :cond_84
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_8e

    iget v6, v5, Landroid/graphics/Insets;->right:I

    if-lez v6, :cond_8e

    .line 1566
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1568
    :cond_8e
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_98

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_98

    .line 1569
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    :cond_98
    :goto_98
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 1574
    :cond_9b
    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p4, p4, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    if-eqz p4, :cond_aa

    .line 1575
    iget p4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    or-int/2addr p4, v3

    iput p4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    .line 1578
    :cond_aa
    iget-boolean p4, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    if-eq p4, v3, :cond_c7

    .line 1579
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1580
    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p4, p4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1581
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v3

    if-eqz v3, :cond_c7

    if-eqz p4, :cond_c7

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_c7

    .line 1582
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 1585
    :cond_c7
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x2000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_d6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p4

    if-eqz p4, :cond_d6

    .line 1586
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    :cond_d6
    if-nez v0, :cond_da

    goto/16 :goto_230

    .line 1593
    :cond_da
    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt p4, v1, :cond_e4

    const/16 v0, 0x7d0

    if-ge p4, v0, :cond_e4

    move p4, v1

    goto :goto_e5

    :cond_e4
    move p4, v2

    .line 1595
    :goto_e5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_113

    .line 1596
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1597
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v3

    if-eqz v3, :cond_104

    .line 1600
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v3, :cond_101

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v3

    if-eqz v3, :cond_104

    .line 1601
    :cond_101
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    move p4, v1

    :cond_104
    if-eqz p4, :cond_113

    if-nez p3, :cond_113

    .line 1606
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_113

    and-int/2addr v0, v1

    if-eqz v0, :cond_113

    .line 1608
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_113
    if-eqz p4, :cond_11d

    if-nez p3, :cond_11d

    .line 1613
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_123

    :cond_11d
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v0, v3, :cond_1bc

    .line 1622
    :cond_123
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_12d

    iget-boolean p2, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz p2, :cond_12d

    goto :goto_12e

    :cond_12d
    move v1, v2

    .line 1627
    :goto_12e
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_13c

    if-nez v1, :cond_13c

    .line 1628
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->fillsDisplayWindowingMode(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_13c

    .line 1629
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1634
    :cond_13c
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_18f

    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 1635
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_18f

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 1636
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_18f

    .line 1637
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1639
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_18f

    .line 1640
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance p4, Lcom/android/internal/view/AppearanceRegion;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x8

    new-instance v1, Landroid/graphics/Rect;

    .line 1642
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p4, v0, v1}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 1640
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1644
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1654
    :cond_18f
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 1655
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_19e

    .line 1656
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1659
    :cond_19e
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_1a4

    .line 1660
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1666
    :cond_1a4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_230

    .line 1668
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1669
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxDetails()Lcom/android/internal/statusbar/LetterboxDetails;

    move-result-object p1

    if-eqz p1, :cond_230

    .line 1671
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1674
    :cond_1bc
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_203

    .line 1675
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1f3

    .line 1678
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p2

    .line 1679
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result p3

    if-ge p3, p2, :cond_1f3

    .line 1680
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p2, p2, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p2, p2, 0x8

    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1683
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 1681
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/wm/DisplayPolicy;->addStatusBarAppearanceRegionsForDimmingWindow(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1f3

    .line 1684
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1687
    :cond_1f3
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_230

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_230

    .line 1688
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1689
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    return-void

    :cond_203
    if-eqz p4, :cond_230

    if-nez p3, :cond_230

    .line 1691
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_20f

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_230

    .line 1693
    :cond_20f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    .line 1694
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p3

    .line 1693
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_230

    .line 1695
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_22a

    .line 1696
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1697
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->addSystemBarColorApp(Lcom/android/server/wm/WindowState;)V

    .line 1699
    :cond_22a
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_230

    .line 1700
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    :cond_230
    :goto_230
    return-void
.end method

.method public areInsetsTypesForciblyShownTransiently(I)Z
    .registers 2

    .line 1782
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public assertDisplaySingletonPolicy(ILjava/lang/String;II)Z
    .registers 8

    .line 1170
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isSingletonPerDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1173
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "DisplayPolicy"

    invoke-virtual {v0, p2, p3, p4, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/16 p2, 0x7d0

    const/4 p3, 0x1

    if-eq p1, p2, :cond_35

    const/16 p2, 0x7e3

    if-eq p1, p2, :cond_2a

    const/16 p2, 0x7f8

    if-eq p1, p2, :cond_1d

    goto :goto_40

    .line 1183
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_40

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_40

    return p3

    .line 1188
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_40

    return p3

    .line 1178
    :cond_35
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_40

    return p3

    :cond_40
    :goto_40
    return v1
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 2

    const/4 v0, 0x0

    .line 1497
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 1498
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 1499
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 1500
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 1501
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1502
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1503
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1505
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1506
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1507
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1509
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 1511
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 1512
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 1513
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 1514
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    .line 1515
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    return-void
.end method

.method public final callStatusBarSafely(Ljava/util/function/Consumer;)V
    .registers 4

    .line 2694
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final clearNavBarOpaqueFlag(I)I
    .registers 2

    .line 0
    and-int/lit8 p0, p1, -0x3

    return p0
.end method

.method public final configureNavBarOpacity(IZZ)I
    .registers 9

    .line 2935
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 2939
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_14

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    move v2, v1

    .line 2944
    :goto_17
    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    if-eqz v2, :cond_42

    .line 2946
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_42

    :cond_23
    if-nez v3, :cond_3a

    if-nez p2, :cond_31

    if-eqz p3, :cond_2a

    goto :goto_31

    :cond_2a
    if-eqz v2, :cond_42

    .line 2954
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_42

    .line 2950
    :cond_31
    :goto_31
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz p2, :cond_42

    .line 2951
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_42

    :cond_3a
    if-ne v3, v1, :cond_42

    if-eqz p3, :cond_42

    .line 2958
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    .line 2962
    :cond_42
    :goto_42
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result p0

    if-nez p0, :cond_4f

    or-int/lit8 p0, p1, 0x40

    return p0

    :cond_4f
    return p1
.end method

.method public final configureStatusBarOpacity(I)I
    .registers 7

    .line 2912
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    if-ltz v0, :cond_28

    .line 2913
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2914
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;I)Z

    move-result v4

    and-int/2addr v1, v4

    .line 2915
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_28
    if-eqz v1, :cond_2c

    and-int/lit8 p1, p1, -0x2

    :cond_2c
    if-nez v2, :cond_31

    or-int/lit8 p0, p1, 0x20

    return p0

    :cond_31
    return p1
.end method

.method public final disablePointerLocation()V
    .registers 3

    .line 3248
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    return-void

    .line 3252
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3253
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3256
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3257
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3258
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 3063
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3066
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    const-string v2, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3068
    const-string v2, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3069
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3070
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDockMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v2}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3071
    const-string v2, " mLidState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAwake="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3073
    const-string v2, " mScreenOnEarly="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3074
    const-string v2, " mScreenOnFully="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3075
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mKeyguardDrawComplete="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3076
    const-string v2, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3077
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHdmiPlugged="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3078
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v2, :cond_b8

    .line 3079
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastDisableFlags=0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    :cond_b8
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v2, :cond_d1

    .line 3083
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastAppearance="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3084
    const-class v2, Landroid/view/InsetsFlags;

    const-string v3, "appearance"

    iget v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    :cond_d1
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v2, :cond_ea

    .line 3087
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastBehavior="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3088
    const-class v2, Landroid/view/InsetsFlags;

    const-string v3, "behavior"

    iget v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    :cond_ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mShowingDream="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3091
    const-string v2, " mDreamingLockscreen="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3092
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_112

    .line 3093
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBar="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3095
    :cond_112
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_123

    .line 3096
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExpandedPanel="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3098
    :cond_123
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isKeyguardShowing="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3099
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_16a

    .line 3100
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBar="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3101
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarOpacityMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3102
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavigationBarCanMove="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3103
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasBottomNavigationBar="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3104
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3106
    :cond_16a
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17b

    .line 3107
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLeftGestureHost="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3109
    :cond_17b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_18c

    .line 3110
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTopGestureHost="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3112
    :cond_18c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_19d

    .line 3113
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRightGestureHost="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3115
    :cond_19d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1ae

    .line 3116
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBottomGestureHost="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3118
    :cond_1ae
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1bf

    .line 3119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFocusedWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3121
    :cond_1bf
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1d0

    .line 3122
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3125
    :cond_1d0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1e1

    .line 3126
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSystemUiControllingWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3129
    :cond_1e1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 3130
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSystemBarColorApps="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3133
    :cond_1f6
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20b

    .line 3134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRelaunchingSystemBarColorApps="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3135
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3137
    :cond_20b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_21c

    .line 3138
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarColorWindowCandidate="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3141
    :cond_21c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_22d

    .line 3142
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNavBarBackgroundWindowCandidate="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3143
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3145
    :cond_22d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    if-eqz v2, :cond_24d

    .line 3146
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastStatusBarAppearanceRegions="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_23e
    if-ltz v2, :cond_24d

    .line 3148
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_23e

    .line 3151
    :cond_24d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    if-eqz v2, :cond_26d

    .line 3152
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastLetterboxDetails="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_25e
    if-ltz v2, :cond_26d

    .line 3154
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_25e

    .line 3157
    :cond_26d
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_298

    .line 3158
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStatusBarBackgroundWindows="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_285
    if-ltz v2, :cond_298

    .line 3160
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3161
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_285

    .line 3164
    :cond_298
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    if-eqz v2, :cond_2ad

    .line 3165
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3166
    const-string v2, "mShowingTransientInsetsTypes="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3167
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingTransientInsetsTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    :cond_2ad
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    if-eqz v2, :cond_2c2

    .line 3170
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    const-string v2, "mShowingPermanentInsetsTypes="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3172
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    :cond_2c2
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    if-eqz v2, :cond_2d7

    .line 3175
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    const-string v2, "mHidingPermanentInsetsTypes="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3179
    :cond_2d7
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_303

    .line 3180
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3181
    const-string v2, "mSystemBarVisibilityOverrideMap:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2ef
    if-ltz v2, :cond_303

    .line 3183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3185
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2ef

    .line 3188
    :cond_303
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mTopIsFullscreen="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mImeInsetsConsumed="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3190
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mForceShowNavigationBarEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3192
    const-string p1, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mRemoteInsetsControllerControlsSystemBars="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3194
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3195
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDecorInsetsInfo:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3197
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz p1, :cond_361

    .line 3198
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCachedDecorInsets:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3201
    :cond_361
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez p1, :cond_36a

    .line 3202
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_36a
    return-void
.end method

.method public final enablePointerLocation()V
    .registers 4

    .line 3220
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    return-void

    .line 3224
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    .line 3225
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3226
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7df

    .line 3227
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    .line 3228
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3231
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3232
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    .line 3233
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3234
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3235
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3236
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_3e
    const/4 v1, -0x3

    .line 3239
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3241
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3242
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3243
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3244
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method public final fillsDisplayWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 2579
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 2585
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2586
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2587
    :goto_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final fillsDisplayWindowingMode(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 2567
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 2573
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2574
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2575
    :goto_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_16

    :cond_d
    const/4 v1, 0x1

    .line 948
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 949
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 950
    monitor-exit v0

    return v1

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 945
    :cond_16
    :goto_16
    monitor-exit v0

    return v2

    .line 950
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public finishPostLayoutPolicyLw()V
    .registers 3

    .line 1766
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v0, :cond_e

    .line 1767
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 1770
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 1772
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v0, v1, :cond_1e

    .line 1773
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 1775
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 1778
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    return-void
.end method

.method public finishScreenTurningOn()Z
    .registers 9

    .line 968
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0x566f8194b44dc932L    # -1.755751079760187E-108

    const/16 v5, 0x3ff

    invoke-static {v7, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_6b

    .line 976
    :cond_3b
    :goto_3b
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    const/4 v3, 0x0

    if-nez v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_51

    goto :goto_69

    .line 981
    :cond_51
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v4, 0x2

    aget-boolean v1, v1, v4

    const/4 v4, 0x0

    if-eqz v1, :cond_63

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x53a7e01d7e89c72aL    # -4.517733403274509E-95

    invoke-static {v1, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 982
    :cond_63
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 983
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 984
    monitor-exit v0

    return v2

    .line 978
    :cond_69
    :goto_69
    monitor-exit v0

    return v3

    .line 984
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_39

    throw p0
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 956
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_13

    :cond_c
    const/4 v1, 0x1

    .line 961
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 962
    monitor-exit v0

    return v1

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    :goto_13
    const/4 p0, 0x0

    .line 958
    monitor-exit v0

    return p0

    .line 962
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 2370
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2371
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2372
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_11

    .line 2373
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2375
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .registers 13

    .line 2842
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object p0

    .line 2843
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2844
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2845
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 2846
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 2847
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2848
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2849
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2850
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_28
    if-ltz v5, :cond_95

    .line 2851
    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 2852
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    if-eq v8, p2, :cond_35

    goto :goto_92

    .line 2855
    :cond_35
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    if-ne p2, v8, :cond_85

    .line 2856
    iget-object v8, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2857
    invoke-virtual {v7, v0, v0, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    .line 2860
    iget v9, v8, Landroid/graphics/Insets;->left:I

    if-lez v9, :cond_54

    .line 2861
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    goto :goto_85

    .line 2862
    :cond_54
    iget v9, v8, Landroid/graphics/Insets;->top:I

    if-lez v9, :cond_64

    .line 2863
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    goto :goto_85

    .line 2864
    :cond_64
    iget v9, v8, Landroid/graphics/Insets;->right:I

    if-lez v9, :cond_75

    .line 2865
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Insets;->right:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    goto :goto_85

    .line 2866
    :cond_75
    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v8, :cond_85

    .line 2867
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Insets;->bottom:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 2870
    :cond_85
    :goto_85
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2871
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2872
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_92
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_95
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1940
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2

    .line 1932
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1935
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .registers 4

    .line 2246
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->get(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayId()I
    .registers 1

    .line 736
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getDisplayUiMode()I
    .registers 1

    .line 3326
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayUiMode:I

    return p0
.end method

.method public getDockMode()I
    .registers 1

    .line 779
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return p0
.end method

.method public getImeSourceFrameProvider()Lcom/android/internal/util/function/TriFunction;
    .registers 1

    .line 1331
    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;-><init>()V

    return-object p0
.end method

.method public getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 1

    .line 2453
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getLidState()I
    .registers 1

    .line 815
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return p0
.end method

.method public getNavigationBar()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1380
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getNotificationShade()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1376
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 1

    .line 3059
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object p0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 1

    .line 883
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object p0
.end method

.method public getStatusBar()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1372
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_14

    .line 226
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 227
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 229
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object p0

    .line 230
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public getSystemUiContext()Landroid/content/Context;
    .registers 1

    .line 1945
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object p0
.end method

.method public getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 1486
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    if-nez v1, :cond_14

    .line 236
    const-class v1, Lcom/android/server/UiModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UiModeManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 238
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerInternal;

    monitor-exit v0

    return-object p0

    .line 239
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    throw p0
.end method

.method public hasBottomNavigationBar()Z
    .registers 4

    .line 2359
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2360
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 2362
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    const/4 v2, 0x1

    .line 2361
    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 2363
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-lez p0, :cond_1c

    return v2

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public hasNavigationBar()Z
    .registers 1

    .line 783
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return p0
.end method

.method public hasSideGestures()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_c

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAwake()Z
    .registers 1

    .line 859
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return p0
.end method

.method public isCarDockEnablesAccelerometer()Z
    .registers 1

    .line 759
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return p0
.end method

.method public isDeskDockEnablesAccelerometer()Z
    .registers 1

    .line 763
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return p0
.end method

.method public isDisplaySwitching()Z
    .registers 1

    .line 2355
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->isDisplaySwitching()Z

    move-result p0

    return p0
.end method

.method public isForceShowNavigationBarEnabled()Z
    .registers 1

    .line 879
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    return p0
.end method

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 2891
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isHdmiPlugged()Z
    .registers 1

    .line 755
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return p0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2991
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-gt v1, v2, :cond_28

    .line 2992
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_28

    .line 2995
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    move-result p0

    return p0

    :cond_28
    :goto_28
    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 1

    .line 871
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return p0
.end method

.method public final isKeyguardOccluded()Z
    .registers 1

    .line 2449
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowing()Z
    .registers 1

    .line 2445
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result p0

    return p0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 1

    .line 771
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return p0
.end method

.method public final isPowerKeyDownPanic(ZJZZ)Z
    .registers 10

    if-nez p1, :cond_11

    .line 3032
    iget-wide v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 3034
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_11
    if-eqz p1, :cond_1a

    if-eqz p4, :cond_1a

    if-nez p5, :cond_1a

    .line 3038
    iput-wide p2, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    goto :goto_1e

    :cond_1a
    const-wide/16 p1, 0x0

    .line 3040
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteInsetsControllerControllingSystemBars()Z
    .registers 1

    .line 888
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return p0
.end method

.method public isScreenOnEarly()Z
    .registers 1

    .line 863
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return p0
.end method

.method public isScreenOnFully()Z
    .registers 1

    .line 867
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return p0
.end method

.method public final isSingletonPerDisplay(I)Z
    .registers 2

    .line 0
    const/16 p0, 0x7d0

    if-eq p1, p0, :cond_f

    const/16 p0, 0x7f8

    if-eq p1, p0, :cond_f

    const/16 p0, 0x7e3

    if-ne p1, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 3268
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz p0, :cond_11

    .line 3269
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 1

    .line 875
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return p0
.end method

.method public final synthetic lambda$callStatusBarSafely$9(Ljava/util/function/Consumer;)V
    .registers 2

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2697
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final synthetic lambda$new$0()V
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 703
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v1, :cond_12

    .line 704
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_19

    .line 706
    :cond_12
    :goto_12
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 707
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_10

    throw p0
.end method

.method public final synthetic lambda$notifyDisplayAddSystemDecorations$4(ZIZ)V
    .registers 5

    .line 1975
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_SYS_DECORS_CALLBACKS_VIA_WM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    .line 1977
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1979
    invoke-interface {p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_13
    if-eqz p3, :cond_22

    .line 1983
    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 1984
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p0, :cond_22

    .line 1986
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_22
    return-void
.end method

.method public final synthetic lambda$notifyDisplayAddSystemDecorations$5()V
    .registers 2

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1995
    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayAddSystemDecorations(I)V

    .line 1997
    :cond_d
    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 1998
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p0, :cond_1a

    .line 2000
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayAddSystemDecorations(I)V

    :cond_1a
    return-void
.end method

.method public final synthetic lambda$notifyDisplayRemoveSystemDecorations$6(I)V
    .registers 3

    .line 2015
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_SYS_DECORS_CALLBACKS_VIA_WM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2018
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    .line 2021
    :cond_11
    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 2022
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz p0, :cond_1e

    .line 2024
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    .line 2026
    :cond_1e
    const-class p0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 2027
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationManagerInternal;

    if-eqz p0, :cond_2b

    .line 2029
    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationManagerInternal;->onDisplayRemoveSystemDecorations(I)V

    :cond_2b
    return-void
.end method

.method public final synthetic lambda$onOverlayChanged$3()V
    .registers 2

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1860
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_c

    .line 1861
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    :cond_c
    return-void
.end method

.method public final synthetic lambda$updateSystemBarsLw$12(IZILcom/android/server/statusbar/StatusBarManagerInternal;)V
    .registers 5

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result p0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->immersiveModeChanged(IIZI)V

    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 19

    move-object/from16 v0, p1

    .line 1461
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->skipLayout()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    move-object/from16 v1, p3

    .line 1467
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    .line 1469
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1470
    sget-object v14, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    if-eqz p2, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iput-object v2, v14, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 1474
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-ne v5, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    const/4 v3, -0x1

    if-eqz v2, :cond_31

    .line 1475
    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move v10, v4

    goto :goto_32

    :cond_31
    move v10, v3

    :goto_32
    if-eqz v2, :cond_36

    .line 1476
    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_36
    move v11, v3

    .line 1478
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 1479
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v9

    .line 1480
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v12

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1478
    invoke-virtual/range {v4 .. v14}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 1482
    iget p0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v14, p0, v1}, Lcom/android/server/wm/WindowState;->setFrames(Landroid/window/ClientWindowFrames;II)V

    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 1

    .line 807
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return p0
.end method

.method public notifyDisplayAddSystemDecorations()V
    .registers 6

    .line 1954
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 1956
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1957
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v1

    .line 1958
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_SYS_DECORS_CALLBACKS_VIA_WM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    .line 1960
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 1961
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayAddSystemDecorations(I)V

    .line 1963
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x5

    .line 1964
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->isWindowingModeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_41

    if-eqz v1, :cond_41

    .line 1965
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v3, :cond_3a

    .line 1967
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->allowContentModeSwitch()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1969
    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    .line 1973
    :cond_41
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isHomeSupported()Z

    move-result v2

    .line 1974
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/DisplayPolicy;ZIZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1991
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyDisplayRemoveSystemDecorations()V
    .registers 4

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 2008
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_SYS_DECORS_CALLBACKS_VIA_WM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2009
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    .line 2010
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayRemoveSystemDecorations(I)V

    .line 2012
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    .line 2013
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 3

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ff

    .line 1871
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 1872
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 1873
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    const v1, 0x1110218

    .line 1875
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    const v1, 0x1110006

    .line 1876
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    const v1, 0x1110037

    .line 1882
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1884
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v1, v0, :cond_3f

    .line 1885
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    :cond_3f
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3

    .line 1443
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_9

    .line 1444
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    :cond_9
    return-void
.end method

.method public final onDisplaySwitchFinished()V
    .registers 2

    .line 819
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplaySwitching(Z)V

    return-void
.end method

.method public onDisplaySwitchStart()V
    .registers 2

    .line 2344
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplaySwitching(Z)V

    return-void
.end method

.method public onDisplayUiModeChanged()V
    .registers 3

    .line 3333
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getUiModeManagerInternal()Lcom/android/server/UiModeManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerInternal;->getDisplayUiMode(I)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3336
    :goto_10
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayUiMode:I

    return-void
.end method

.method public onOverlayChanged()V
    .registers 3

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1858
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->requestDisplayUpdate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 8

    .line 3023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 3024
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    .line 3023
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->isPowerKeyDownPanic(ZJZZ)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 3026
    iget-object p0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p1, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method public onUserActivityEventTouch()V
    .registers 2

    .line 3050
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v0, :cond_5

    return-void

    .line 3054
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 3055
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public physicalDisplayChanged()V
    .registers 2

    .line 2256
    sget-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    if-eqz v0, :cond_7

    .line 2257
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCachedDecorInsets()V

    :cond_7
    return-void
.end method

.method public physicalDisplayUpdated()V
    .registers 2

    .line 2330
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-nez v0, :cond_5

    return-void

    .line 2333
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 2335
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    return-void

    .line 2338
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2339
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result p0

    iput p0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    return-void
.end method

.method public release()V
    .registers 4

    .line 3276
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 3277
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3278
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3279
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 3280
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_31
    return-void
.end method

.method public removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2469
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 2470
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_12

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_12
    return-void
.end method

.method public removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 7

    .line 1344
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 1345
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_15

    .line 1346
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_f

    .line 1347
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_15

    .line 1348
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_15

    .line 1349
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1351
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1b

    .line 1352
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1355
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasInsetsSourceProvider()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v0

    .line 1357
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    .line 1358
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_31
    if-ltz v3, :cond_4a

    .line 1359
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 1360
    invoke-virtual {v4, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 1362
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InsetsStateController;->removeSourceProvider(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 1365
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1366
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_5b

    const/4 p1, 0x0

    .line 1367
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    :cond_5b
    return-void
.end method

.method public replaceInsetsSourcesIfNeeded(Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 6

    .line 2307
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 2308
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_46

    .line 2311
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    if-eqz p2, :cond_1b

    .line 2312
    new-instance p2, Landroid/view/InsetsState;

    invoke-direct {p2, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p1, p2

    .line 2313
    :cond_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_21
    if-ltz p2, :cond_46

    .line 2314
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 2315
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 2317
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 2318
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    move-result-object v0

    .line 2317
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_43
    add-int/lit8 p2, p2, -0x1

    goto :goto_21

    :cond_46
    :goto_46
    return-object p1
.end method

.method public requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .registers 9

    .line 2380
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-eqz v0, :cond_6

    goto/16 :goto_aa

    :cond_6
    if-eqz p1, :cond_aa

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_aa

    .line 2387
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    const-string v1, "WindowManager"

    if-nez v0, :cond_20

    .line 2388
    const-string p0, "Remote insets controller disallows showing system bars - ignoring request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2392
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 2394
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    if-eqz v0, :cond_aa

    .line 2396
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-ne v0, v3, :cond_37

    goto/16 :goto_aa

    .line 2402
    :cond_37
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 2404
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_aa

    .line 2409
    :cond_44
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v3, v4

    .line 2410
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result v4

    and-int/2addr v3, v4

    .line 2412
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 2413
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    if-ne v4, v5, :cond_75

    .line 2414
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_75

    .line 2418
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-interface {v0, p0, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 2422
    :cond_75
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 2424
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p1

    sget v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 2426
    invoke-interface {v0, v3, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_a5

    .line 2429
    :cond_8a
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr p2, v3

    invoke-interface {v0, p2, v2}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 2434
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, p2, :cond_a5

    .line 2435
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->transferTouch()Z

    move-result p1

    if-nez p1, :cond_a5

    .line 2437
    const-string p1, "Could not transfer touch to the status bar"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :cond_a5
    :goto_a5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->confirmImmersivePrompt()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public resetSystemBarAttributes()V
    .registers 2

    const/4 v0, 0x0

    .line 2562
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public screenTurnedOff(Z)V
    .registers 4

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_f

    .line 930
    :try_start_5
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string v1, "Display-off"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->addSleepToken(Ljava/lang/String;)V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_23

    :cond_f
    :goto_f
    const/4 p1, 0x0

    .line 932
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 933
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 934
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 935
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 p1, 0x0

    .line 936
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 937
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 938
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_d

    throw p0
.end method

.method public screenTurnedOn()V
    .registers 1

    .line 923
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    return-void
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 5

    .line 900
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string v2, "Display-off"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->removeSleepToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 902
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v1, 0x0

    .line 903
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 904
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 905
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 906
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 907
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2d

    .line 910
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 911
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_2e

    :catchall_2b
    move-exception p0

    goto :goto_40

    :cond_2d
    const/4 p1, 0x0

    .line 913
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2b

    if-eqz p1, :cond_3f

    const-wide/16 v0, 0x20

    .line 916
    const-string v2, "screenTurnedOnWhileDozing"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 917
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    :cond_3f
    return-void

    .line 913
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_2b

    throw p0
.end method

.method public selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .registers 8

    .line 1402
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1f

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v1, p2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, -0x67141f488b6fcf64L

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1f
    const/4 p0, 0x5

    const/4 v1, 0x0

    if-ne p2, p0, :cond_46

    .line 1405
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 1406
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, -0x1

    return p0

    .line 1411
    :cond_31
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_42

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x57024d80d683c60dL

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_42
    const p0, 0x10a0013

    return p0

    :cond_46
    return v1
.end method

.method public setAwake(Z)V
    .registers 5

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-ne p1, v1, :cond_c

    .line 825
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_87

    .line 827
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 828
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_16

    .line 829
    monitor-exit v0

    return-void

    :cond_16
    if-eqz p1, :cond_29

    .line 832
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 833
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setVisibleDozeUiProcessAsync(Lcom/android/server/wm/WindowProcessController;)V

    goto :goto_46

    .line 834
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_46

    .line 836
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 837
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 838
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 839
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStateUpdater:Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessStateController$ActivityStateAsyncUpdater;->setVisibleDozeUiProcessAsync(Lcom/android/server/wm/WindowProcessController;)V

    .line 842
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    if-nez p1, :cond_85

    .line 845
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 850
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-nez p1, :cond_85

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez p1, :cond_85

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result p1

    if-nez p1, :cond_85

    .line 851
    const-string p1, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Late acquire sleep token for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string p1, "Display-off"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->addSleepToken(Ljava/lang/String;)V

    .line 855
    :cond_85
    monitor-exit v0

    return-void

    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_9

    throw p0
.end method

.method public setCanSystemBarsBeShownByUser(Z)V
    .registers 2

    .line 1950
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    return-void
.end method

.method public setDockMode(I)V
    .registers 2

    .line 775
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return-void
.end method

.method public setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 1083
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_23

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    if-nez p2, :cond_23

    .line 1087
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 1088
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_23
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 4

    if-nez p2, :cond_8

    .line 744
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq p2, p1, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 745
    :cond_8
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 746
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 747
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 748
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const-string v0, "state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setLidState(I)V
    .registers 2

    .line 811
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2

    .line 767
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return-void
.end method

.method public setPointerLocationEnabled(Z)V
    .registers 3

    .line 3211
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3215
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    const/4 p1, 0x4

    goto :goto_e

    :cond_d
    const/4 p1, 0x5

    :goto_e
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .registers 2

    .line 894
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return-void
.end method

.method public setSystemBarVisibilityOverride(Landroid/os/IBinder;II)V
    .registers 7

    .line 2527
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;

    const/4 v1, 0x0

    if-nez p2, :cond_1e

    if-eqz p3, :cond_e

    goto :goto_1e

    :cond_e
    if-eqz v0, :cond_3b

    .line 2540
    :try_start_10
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2541
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarVisibilityOverride()V

    return-void

    :catch_1c
    move-exception p0

    goto :goto_3c

    :cond_1e
    :goto_1e
    if-nez v0, :cond_32

    .line 2531
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/IBinder;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_1c

    .line 2532
    :try_start_25
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2533
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_2f

    move-object v0, v2

    goto :goto_32

    :catch_2f
    move-exception p0

    move-object v0, v2

    goto :goto_3c

    .line 2535
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->set(II)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarVisibilityOverride()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_1c

    :cond_3b
    return-void

    .line 2546
    :goto_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " due to RemoteException."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public shouldAttachNavBarToAppDuringTransition()Z
    .registers 2

    .line 3318
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 1813
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_40

    :cond_e
    if-eqz p2, :cond_27

    .line 1818
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_27

    .line 1819
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1820
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result p2

    if-nez p2, :cond_27

    :cond_26
    return v1

    .line 1826
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_3d

    .line 1828
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p0

    if-nez p0, :cond_3c

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_3d

    :cond_3c
    move v1, p2

    :cond_3d
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_40
    :goto_40
    return v1
.end method

.method public shouldKeepCurrentDecorInsets()Z
    .registers 2

    .line 2251
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    if-eqz v0, :cond_10

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->canPreserve()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .registers 15

    .line 1425
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 1426
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_5d

    .line 1427
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1428
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 1430
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    .line 1431
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v10

    iget v11, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v12, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1428
    invoke-virtual/range {v2 .. v12}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    .line 1433
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v1

    .line 1434
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 1435
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_44
    if-ltz v3, :cond_5a

    .line 1436
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_44

    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_5d
    return-void
.end method

.method public final supportsPointerLocation()Z
    .registers 2

    .line 3207
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public switchUser()V
    .registers 1

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 727
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_9

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 730
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 731
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_13
    return-void
.end method

.method public topAppHidesSystemBar(I)Z
    .registers 3

    .line 1837
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    .line 1838
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsPolicy;->areTypesForciblyShown(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 1841
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public updateCachedDecorInsets()V
    .registers 7

    .line 2270
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2271
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    move-object v3, v1

    goto :goto_31

    .line 2273
    :cond_10
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2274
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 2275
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2277
    iget v4, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRotation:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v5, v5, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-ne v4, v5, :cond_2e

    .line 2278
    iget-object v1, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRegularBarsInsets:Ljava/util/ArrayList;

    :cond_2e
    iput-object v1, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreservedInsets:Ljava/util/ArrayList;

    move-object v1, v0

    .line 2281
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 2283
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->copyRegularBarInsets(Landroid/view/InsetsState;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRegularBarsInsets:Ljava/util/ArrayList;

    .line 2286
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v4, v4, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mRotation:I

    .line 2287
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_6b

    .line 2291
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    if-eqz v3, :cond_66

    .line 2293
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v3, v0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 2295
    :cond_66
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    :cond_6b
    return-void
.end method

.method public updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 4

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1891
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v2, v1, :cond_17

    const v1, 0x1110219

    .line 1893
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 1894
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    return-void
.end method

.method public final updateCurrentUserResources()V
    .registers 15

    .line 1902
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_15

    .line 1908
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    .line 1914
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 1915
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1914
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    .line 1916
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 1917
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1918
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    .line 1920
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v6

    .line 1921
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v7

    .line 1922
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1923
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1925
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1916
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method public updateDecorInsetsInfo()Z
    .registers 7

    .line 2219
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2222
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 2223
    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2224
    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 2225
    iget v2, v2, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 2226
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2227
    invoke-virtual {v5, v0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)V

    .line 2228
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v0

    .line 2229
    iget-object v2, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v1

    .line 2232
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->canPreserve()Z

    move-result v0

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    .line 2233
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2235
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->invalidate()V

    .line 2236
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 2237
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez p0, :cond_51

    const/4 p0, 0x1

    return p0

    :cond_51
    return v1
.end method

.method public final updateForceShowNavBarSettings()V
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 721
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 722
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 723
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public updateHasNavigationBarIfNeeded()V
    .registers 3

    .line 787
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 788
    const-string v0, "WindowManager"

    const-string v1, "mHasNavigationBar shouldn\'t be updated when the flag is off."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_16

    return-void

    .line 795
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return-void
.end method

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .registers 3

    .line 2735
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result p0

    if-nez p0, :cond_d

    and-int/lit8 p0, p1, -0x11

    return p0

    :cond_d
    and-int/lit8 p0, p1, -0x11

    .line 2743
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p1, p1, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public updateSystemBarAttributes()V
    .registers 14

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isRemoteInsetsControllerControllingSystemBars()Z

    move-result v0

    .line 2597
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_13

    if-nez v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->fillsDisplayWindowingMode(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2598
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_15

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_15
    if-eqz v1, :cond_48

    .line 2602
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    .line 2604
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2606
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_48

    .line 2607
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_46

    if-nez v0, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2608
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->fillsDisplayWindowingMode(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2611
    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_48

    .line 2613
    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :cond_48
    :goto_48
    if-nez v1, :cond_5a

    .line 2617
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_13c

    if-nez v0, :cond_13c

    .line 2619
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->fillsDisplayWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto/16 :goto_13c

    .line 2625
    :cond_5a
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    const/4 v0, 0x0

    if-eqz v1, :cond_68

    .line 2628
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisableFlags()I

    move-result v2

    goto :goto_69

    :cond_68
    move v2, v0

    .line 2629
    :goto_69
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    .line 2630
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_13c

    .line 2635
    :cond_77
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8e

    .line 2637
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v7, :cond_8e

    move v7, v6

    goto :goto_90

    :cond_8e
    move v7, v6

    move v6, v0

    :goto_90
    if-eqz v1, :cond_99

    .line 2640
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_9a

    :cond_99
    move v8, v0

    .line 2639
    :goto_9a
    invoke-virtual {p0, v8, v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    move-result v5

    or-int/2addr v4, v5

    .line 2643
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 2644
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_ad

    :cond_ac
    move-object v5, v1

    :goto_ad
    if-eqz v5, :cond_b6

    .line 2647
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v5, v5, Landroid/view/InsetsFlags;->behavior:I

    goto :goto_b7

    :cond_b6
    move v5, v7

    :goto_b7
    if-eqz v1, :cond_bf

    .line 2650
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_bd
    move-object v9, v8

    goto :goto_c2

    .line 2651
    :cond_bf
    const-string v8, "none"

    goto :goto_bd

    :goto_c2
    if-eqz v1, :cond_da

    .line 2652
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 2653
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v8

    if-nez v8, :cond_da

    :cond_d8
    move v8, v7

    goto :goto_db

    :cond_da
    move v8, v0

    .line 2654
    :goto_db
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 2655
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/internal/view/AppearanceRegion;

    .line 2656
    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2657
    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eq v11, v2, :cond_ff

    .line 2658
    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v1, :cond_f5

    .line 2659
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_f7

    :cond_f5
    const-string v11, "null"

    .line 2660
    :goto_f7
    new-instance v12, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v12, v3, v2, v11}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    :cond_ff
    if-eqz v1, :cond_106

    .line 2664
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v1

    goto :goto_107

    :cond_106
    move v1, v0

    .line 2665
    :goto_107
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2666
    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2667
    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v11, v4, :cond_13d

    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v11, v5, :cond_13d

    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    if-ne v11, v1, :cond_13d

    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedPackageName:Ljava/lang/String;

    .line 2670
    invoke-static {v11, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13d

    iget-boolean v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v11, v8, :cond_13d

    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2672
    invoke-static {v11, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13d

    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 2673
    invoke-static {v11, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13d

    :cond_13c
    :goto_13c
    return-void

    .line 2676
    :cond_13d
    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v11, v11, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v11, :cond_15c

    iget-boolean v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v11, v8, :cond_14e

    iget v11, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v11, v4

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_15c

    .line 2678
    :cond_14e
    iget-object v11, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v8, :cond_158

    and-int/lit8 v12, v4, 0x4

    if-eqz v12, :cond_159

    :cond_158
    move v0, v7

    :cond_159
    invoke-virtual {v11, v0}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 2681
    :cond_15c
    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 2682
    iput v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 2683
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 2684
    iput-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedPackageName:Ljava/lang/String;

    .line 2685
    iput-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 2686
    iput-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 2687
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    move v7, v5

    move-object v5, v10

    move-object v10, v2

    .line 2688
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateSystemBarVisibilityOverride()V
    .registers 5

    const/4 v0, 0x0

    .line 2551
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    .line 2552
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    .line 2553
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2c

    .line 2554
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarVisibilityOverrideMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;

    .line 2555
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->getForciblyShowingInsetsTypes()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    .line 2556
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy$SystemBarVisibilityOverride;->getForciblyHidingInsetsTypes()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2558
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    return-void
.end method

.method public final updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I
    .registers 14

    .line 2749
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 2752
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>()V

    .line 2753
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    .line 2757
    :goto_16
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_RESTRICT_FREEFORM_HIDDEN_SYSTEM_BARS_TO_FILLING_TASKS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2758
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2d

    :cond_28
    const/4 v4, 0x5

    .line 2764
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_37

    .line 2766
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_37

    move v4, v3

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    if-eqz v4, :cond_4c

    .line 2768
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    move v0, v3

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    if-nez v1, :cond_5f

    .line 2770
    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_FULLY_IMMERSIVE_IN_DESKTOP:Landroid/window/DesktopModeFlags;

    .line 2771
    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-eqz v5, :cond_5a

    if-eqz v0, :cond_5d

    goto :goto_5f

    :cond_5a
    if-eqz v4, :cond_5d

    goto :goto_5f

    :cond_5d
    move v0, v2

    goto :goto_60

    :cond_5f
    :goto_5f
    move v0, v3

    .line 2774
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingPermanentInsetsTypes:I

    iget v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHidingPermanentInsetsTypes:I

    invoke-virtual {v5, p1, v6, v7, v0}, Lcom/android/server/wm/InsetsPolicy;->updateSystemBars(Lcom/android/server/wm/WindowState;IIZ)V

    .line 2780
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v0

    .line 2781
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 2784
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v6

    invoke-interface {v5, v6, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(IZ)V

    :cond_86
    if-eqz v0, :cond_96

    .line 2789
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 2790
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_96

    :cond_94
    move v0, v3

    goto :goto_97

    :cond_96
    move v0, v2

    :goto_97
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    const/4 v0, 0x3

    .line 2793
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->configureStatusBarOpacity(I)I

    move-result v0

    .line 2794
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZ)I

    move-result v0

    .line 2798
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 2799
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eq v1, v4, :cond_c9

    .line 2801
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    if-eqz p1, :cond_b3

    .line 2803
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    goto :goto_b4

    :cond_b3
    const/4 v1, 0x0

    :goto_b4
    const/4 v5, -0x1

    if-eqz v1, :cond_ba

    .line 2804
    iget v1, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    goto :goto_bb

    :cond_ba
    move v1, v5

    :goto_bb
    if-eqz p1, :cond_c1

    .line 2805
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v5

    .line 2807
    :cond_c1
    new-instance v6, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0, v1, v4, v5}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/DisplayPolicy;IZI)V

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayPolicy;->callStatusBarSafely(Ljava/util/function/Consumer;)V

    :cond_c9
    if-eqz p1, :cond_d7

    .line 2813
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result p1

    if-nez p1, :cond_d7

    move p1, v3

    goto :goto_d8

    :cond_d7
    move p1, v2

    .line 2814
    :goto_d8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2815
    iget-wide v7, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_ec

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-gtz v1, :cond_ec

    move v2, v3

    .line 2817
    :cond_ec
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2818
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    if-eqz v2, :cond_115

    if-eqz p1, :cond_115

    if-eqz v4, :cond_115

    .line 2821
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result p1

    if-eqz p1, :cond_115

    .line 2824
    iput-wide v9, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 2825
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result p1

    if-nez p1, :cond_115

    .line 2826
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p0

    sget p1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    :cond_115
    return v0
.end method

.method public validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 8

    .line 1108
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_10

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1113
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    .line 1114
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1121
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1120
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/android/server/wm/WindowManagerService;->isCallerVirtualDeviceOwner(II)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1121
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1123
    const-string v0, "android.permission.CREATE_VIRTUAL_DEVICE"

    goto :goto_39

    .line 1124
    :cond_37
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    .line 1126
    :goto_39
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1128
    invoke-virtual {p0, v2, v0, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->assertDisplaySingletonPolicy(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 p0, -0x7

    return p0

    :cond_43
    const/16 v3, 0x7de

    if-eq v2, v3, :cond_72

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_58

    const/16 v3, 0x7e8

    if-eq v2, v3, :cond_58

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_58

    const/16 v3, 0x7f9

    if-eq v2, v3, :cond_58

    goto :goto_5d

    .line 1137
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1144
    :goto_5d
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz p1, :cond_70

    .line 1146
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p1

    if-nez p1, :cond_70

    .line 1147
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_70
    const/4 p0, 0x0

    return p0

    :cond_72
    const/16 p0, -0xa

    return p0
.end method
