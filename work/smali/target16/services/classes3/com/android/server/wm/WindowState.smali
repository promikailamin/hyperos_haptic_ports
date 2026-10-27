.class public Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Lcom/android/server/wm/InputTarget;


# static fields
.field public static final sTmpSB:Ljava/lang/StringBuilder;

.field public static final sWindowSubLayerComparator:Ljava/util/Comparator;


# instance fields
.field public final mAboveInsetsState:Landroid/view/InsetsState;

.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAnimatingExit:Z

.field public mAnimatingTypes:I

.field public final mAppOp:I

.field public mAppOpVisibility:Z

.field public final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field public final mBaseLayer:I

.field public mBufferSeqId:I

.field public final mClient:Landroid/view/IWindow;

.field public mCompatScale:F

.field public final mContext:Landroid/content/Context;

.field public mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field public mCreateTime:J

.field public mDestroying:Z

.field public mDisableFlags:I

.field public mDragResizing:Z

.field public mDragResizingChangeReported:Z

.field public final mDrawHandlers:Ljava/util/ArrayList;

.field public mDrawLock:Landroid/os/PowerManager$WakeLock;

.field public mDrawnStateEvaluated:Z

.field public final mExclusionRects:Ljava/util/List;

.field public mFocusCallbacks:Landroid/os/RemoteCallbackList;

.field public final mForceSeamlesslyRotate:Z

.field public mFrameRateSelectionPriority:I

.field public mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

.field public mFrozenInsetsState:Landroid/view/InsetsState;

.field public final mGivenContentInsets:Landroid/graphics/Rect;

.field public mGivenInsetsPending:Z

.field public final mGivenTouchableRegion:Landroid/graphics/Region;

.field public final mGivenVisibleInsets:Landroid/graphics/Rect;

.field public mGlobalScale:F

.field public mHScale:F

.field public mHasSurface:Z

.field public mHaveFrame:Z

.field public mHidden:Z

.field public mHiddenWhileSuspended:Z

.field public mImeInsetsConsumed:Z

.field public mInRelayout:Z

.field public mInputChannelToken:Landroid/os/IBinder;

.field public final mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public mInsetsAnimationRunning:Z

.field public mInsetsSourceProviders:Landroid/util/SparseArray;

.field public mInteractionPriorityScore:I

.field public mInvGlobalScale:F

.field public mIsChildWindow:Z

.field public mIsDimming:Z

.field public final mIsFloatingLayer:Z

.field public mIsForceHiddenNonSystemOverlayWindow:Z

.field public final mIsImWindow:Z

.field public mIsSurfacePositionPaused:Z

.field public final mIsWallpaper:Z

.field public final mKeepClearAreas:Ljava/util/List;

.field public mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

.field public mLastConfigReportedToClient:Z

.field public final mLastExclusionLogUptimeMillis:[J

.field public final mLastGrantedExclusionHeight:[I

.field public mLastHScale:F

.field public final mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

.field public final mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field public final mLastReportedFrames:Landroid/window/ClientWindowFrames;

.field public final mLastReportedInsetsState:Landroid/view/InsetsState;

.field public final mLastRequestedExclusionHeight:[I

.field public mLastRequestedHeight:I

.field public mLastRequestedWidth:I

.field public mLastShownChangedReported:Z

.field public final mLastSurfaceInsets:Landroid/graphics/Rect;

.field public mLastTitle:Ljava/lang/CharSequence;

.field public mLastVScale:F

.field public mLayer:I

.field public final mLayoutAttached:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mLegacyPolicyVisibilityAfterAnim:Z

.field public mMergedLocalInsetsSources:Landroid/util/SparseArray;

.field public mMovedByResize:Z

.field public mObscured:Z

.field public mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

.field public mOrientationChangeRedrawRequestTime:J

.field public final mOverrideScale:F

.field public final mOwnerCanAddInternalSystemWindow:Z

.field public final mOwnerUid:I

.field public mPendingSyncResize:Z

.field public mPermanentlyHidden:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mPolicyVisibility:I

.field public mPrepareSyncSeqId:I

.field public mRedrawForSyncReported:Z

.field public mRelayoutCalled:Z

.field public mRelayoutSeq:I

.field public mRemoveOnExit:Z

.field public mRemoved:Z

.field public mRequestedHeight:I

.field public mRequestedVisibleTypes:I

.field public mRequestedWidth:I

.field public final mSession:Lcom/android/server/wm/Session;

.field public final mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

.field public mShouldScaleWallpaper:Z

.field public final mShowUserId:I

.field public mStartingData:Lcom/android/server/wm/StartingData;

.field public mStringNameCache:Ljava/lang/String;

.field public final mSubLayer:I

.field public mSurfacePlacementNeeded:Z

.field public final mSurfacePosition:Landroid/graphics/Point;

.field public mSurfaceTranslationY:I

.field public mSyncSeqId:I

.field public mSystemContentPriority:I

.field public final mTapExcludeRegion:Landroid/graphics/Region;

.field public final mTempConfiguration:Landroid/content/res/Configuration;

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpMatrixArray:[F

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public mTouchableInsets:I

.field public final mUnrestrictedKeepClearAreas:Ljava/util/List;

.field public mVScale:F

.field public mViewVisibility:I

.field public mWallpaperDisplayOffsetX:I

.field public mWallpaperDisplayOffsetY:I

.field public mWallpaperScale:F

.field public mWallpaperX:F

.field public mWallpaperXStep:F

.field public mWallpaperY:F

.field public mWallpaperYStep:F

.field public mWallpaperZoomOut:F

.field public mWasExiting:Z

.field public final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field public final mWindowFrames:Lcom/android/server/wm/WindowFrames;

.field public final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field public mWindowRemovalAllowed:Z

.field public mXOffset:I

.field public mYOffset:I


# direct methods
.method public static synthetic $r8$lambda$1Dh42fMlKh0smzISa_42i-8OSNI(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 4625
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4626
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 4627
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4630
    :cond_10
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 4634
    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_21

    .line 4635
    iput-object p2, p3, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 4636
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4640
    :cond_21
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz p1, :cond_3d

    .line 4642
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2b
    if-ltz p2, :cond_3d

    .line 4643
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {p3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2b

    :cond_3d
    return-void
.end method

.method public static synthetic $r8$lambda$QQ19J5HQy2zH20YYKv231qLt20A(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 2350
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public static synthetic $r8$lambda$uQyra3OObpru_TLpWVa2wpurdwc(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 699
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;IIIZ)V
    .registers 25

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    .line 1062
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 315
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x3

    .line 348
    iput v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v5, 0x1

    .line 358
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 361
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 366
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 368
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 369
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wm/WindowState;->mCreateTime:J

    const/4 v6, 0x0

    .line 388
    iput v6, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 394
    iput v6, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 400
    iput v6, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    .line 408
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    const/4 v7, -0x1

    .line 432
    iput v7, p0, Lcom/android/server/wm/WindowState;->mRelayoutSeq:I

    .line 433
    iput v7, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 440
    new-instance v8, Landroid/util/MergedConfiguration;

    invoke-direct {v8}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 452
    new-instance v8, Landroid/window/ClientWindowFrames;

    invoke-direct {v8}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 454
    new-instance v8, Landroid/view/InsetsState;

    invoke-direct {v8}, Landroid/view/InsetsState;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 456
    new-instance v8, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v8}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 459
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 472
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 478
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 483
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 491
    iput v6, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 494
    iput v8, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 495
    iput v8, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 496
    iput v8, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 498
    iput v8, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v8, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 499
    iput v8, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v8, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 504
    iput v6, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 505
    iput v6, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 509
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 511
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v8, 0x9

    .line 512
    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 514
    new-instance v8, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v8}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 521
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 527
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 533
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 536
    filled-new-array {v6, v6}, [I

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    .line 537
    filled-new-array {v6, v6}, [I

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    const/4 v8, 0x2

    .line 538
    new-array v8, v8, [J

    fill-array-data v8, :array_290

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/high16 v8, -0x40800000    # -1.0f

    .line 544
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 545
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 549
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 557
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 558
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/high16 v8, -0x80000000

    .line 562
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 563
    iput v8, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 630
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 644
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 645
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 646
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 660
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 665
    new-instance v8, Landroid/view/InsetsState;

    invoke-direct {v8}, Landroid/view/InsetsState;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    const/4 v8, 0x0

    .line 670
    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 676
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 686
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 691
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 720
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 728
    iput-object v8, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 731
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v10

    iput v10, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 733
    iput v6, p0, Lcom/android/server/wm/WindowState;->mAnimatingTypes:I

    .line 748
    iput v7, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 756
    iput v6, p0, Lcom/android/server/wm/WindowState;->mSystemContentPriority:I

    .line 762
    iput v6, p0, Lcom/android/server/wm/WindowState;->mInteractionPriorityScore:I

    .line 769
    new-instance v10, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-direct {v10}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 782
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    .line 794
    new-instance v10, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v10, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    .line 1063
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1064
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 p1, p3

    .line 1065
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 p1, p6

    .line 1066
    iput p1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 1067
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1068
    iget-object p1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1069
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move/from16 p1, p9

    .line 1070
    iput p1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    move/from16 p1, p10

    .line 1071
    iput p1, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    move/from16 p1, p11

    .line 1072
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 1073
    new-instance p1, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {p1, p0, v8}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 1074
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1075
    iget-object p1, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 p1, p8

    .line 1076
    iput p1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1077
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v9, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1078
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 1079
    iget-boolean p1, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 1080
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_187

    .line 1081
    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1}, Landroid/window/ActivityWindowInfo;-><init>()V

    goto :goto_188

    :cond_187
    move-object p1, v8

    .line 1082
    :goto_188
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 1083
    new-instance p1, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    .line 1084
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_196

    .line 1085
    invoke-virtual {v10, v6}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v8

    .line 1086
    :cond_196
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-direct {v1, v8, v10}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 1087
    invoke-virtual {p1, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 1088
    iget v1, p2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOwnerPid(I)V

    .line 1089
    iget v1, p2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOwnerUid(I)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 1091
    iget-object v1, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPackageName(Ljava/lang/String;)V

    .line 1092
    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    .line 1098
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    const/16 v8, 0x7dc

    const/16 v10, 0x7db

    const/16 v11, 0x3e8

    if-lt p1, v11, :cond_204

    const/16 v12, 0x7cf

    if-gt p1, v12, :cond_204

    .line 1101
    invoke-interface {v9, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    add-int/2addr p1, v11

    iput p1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 1103
    iget p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v9, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 1104
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 1106
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3eb

    if-eq p1, v9, :cond_1eb

    move p1, v5

    goto :goto_1ec

    :cond_1eb
    move p1, v6

    :goto_1ec
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1108
    iget-object p1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p1, v10, :cond_1f9

    if-ne p1, v8, :cond_1f7

    goto :goto_1f9

    :cond_1f7
    move v8, v6

    goto :goto_1fa

    :cond_1f9
    :goto_1f9
    move v8, v5

    :goto_1fa
    iput-boolean v8, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-ne p1, v1, :cond_200

    move p1, v5

    goto :goto_201

    :cond_200
    move p1, v6

    .line 1110
    :goto_201
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_226

    .line 1114
    :cond_204
    invoke-interface {v9, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    add-int/2addr p1, v11

    iput p1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 1116
    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 1117
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 1118
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 1119
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p1, v10, :cond_21c

    if-ne p1, v8, :cond_21a

    goto :goto_21c

    :cond_21a
    move v8, v6

    goto :goto_21d

    :cond_21c
    :goto_21c
    move v8, v5

    :goto_21d
    iput-boolean v8, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-ne p1, v1, :cond_223

    move p1, v5

    goto :goto_224

    :cond_223
    move p1, v6

    .line 1121
    :goto_224
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 1123
    :goto_226
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez p1, :cond_230

    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_22f

    goto :goto_230

    :cond_22f
    move v5, v6

    :cond_230
    :goto_230
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 1125
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_241

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz p1, :cond_241

    .line 1128
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    or-int/2addr p1, v1

    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1131
    :cond_241
    new-instance p1, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1132
    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1134
    iput v7, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 1135
    iput v7, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 1136
    iput v7, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1137
    iput v7, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1138
    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1139
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v1, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v0, p2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateGlobalScale()V

    .line 1145
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz p1, :cond_28e

    .line 1146
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean p1, p1, v6

    if-eqz p1, :cond_289

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x70e7831d52b837f9L    # 7.475827382670387E235

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, v4, v6, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1147
    :cond_289
    sget-object p1, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    :cond_28e
    return-void

    nop

    :array_290
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 3508
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method private registeredForDisplayAreaConfigChanges()Z
    .registers 3

    .line 3628
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3629
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 3630
    :goto_b
    iget v0, p0, Lcom/android/server/wm/Session;->mPid:I

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    if-ne v0, v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 3634
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->registeredForDisplayAreaConfigChanges()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public adjustDims()V
    .registers 1

    .line 5260
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->applyDims()V

    .line 5261
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->adjustDims()V

    return-void
.end method

.method public final adjustRegionInFreeformWindowMode(Landroid/graphics/Rect;)V
    .registers 3

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2713
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/16 v0, 0x1e

    .line 2714
    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    neg-int p0, p0

    .line 2716
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method public adjustStartingWindowFlags()V
    .registers 9

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3b

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3b

    .line 2876
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2877
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    and-int v6, v4, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_1c

    move v6, v2

    goto :goto_1d

    :cond_1c
    move v6, v7

    .line 2878
    :goto_1d
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v0

    if-nez v5, :cond_23

    goto :goto_24

    :cond_23
    move v2, v7

    :goto_24
    const v5, -0x480002

    and-int/2addr v4, v5

    const v5, 0x480001

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    .line 2879
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz v6, :cond_3b

    if-eqz v2, :cond_3b

    .line 2882
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 2883
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->deferStartingWindowRemovalForKeyguardUnoccluding()V

    :cond_3b
    return-void
.end method

.method public final applyDims()V
    .registers 6

    .line 5134
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5135
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldDrawBlurBehind()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5136
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5137
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->canApplyDim(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    .line 5144
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5145
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_34

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 5146
    :goto_35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldDrawBlurBehind()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getBlurBehindRadius()I

    move-result v1

    goto :goto_44

    :cond_43
    move v1, v2

    .line 5150
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimController()Lcom/android/server/wm/Dimmer;

    move-result-object v3

    .line 5151
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v3, :cond_68

    .line 5153
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_74

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x2cacdfd5dd63cacbL    # -2.4934158542816614E93

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 5158
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 5159
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/server/wm/Dimmer;->adjustAppearance(Lcom/android/server/wm/WindowState;FI)V

    .line 5161
    :cond_71
    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/Dimmer;->adjustPosition(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V

    :cond_74
    return-void
.end method

.method public final applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4

    .line 4688
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4691
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public final applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 4697
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p2

    if-nez p2, :cond_f

    .line 4698
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_f
    return v0

    .line 4702
    :cond_10
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4703
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public applySizeOverride(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 11

    .line 2958
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr p0, v2

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    :goto_14
    move v4, p0

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_14

    :goto_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 2957
    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public applyWithNextDraw(Ljava/util/function/Consumer;)V
    .registers 5

    .line 6025
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_30

    .line 6026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyWithNextDraw with mSyncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 6027
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6026
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6029
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_4d

    .line 6031
    iget v0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-gt v0, v1, :cond_40

    add-int/lit8 v1, v1, 0x1

    .line 6032
    iput v1, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    .line 6034
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/WindowState$DrawHandler;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/WindowState$DrawHandler;-><init>(ILjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 6036
    :cond_4d
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 6037
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/WindowState$DrawHandler;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/WindowState$DrawHandler;-><init>(ILjava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6039
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    .line 6042
    :goto_60
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x40

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method

.method public areAppWindowBoundsLetterboxed()Z
    .registers 2

    .line 3974
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3975
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 3977
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public asWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 5529
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 5530
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5536
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_2f

    .line 5537
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x2

    if-eqz v3, :cond_2b

    .line 5538
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_4b

    .line 5540
    :cond_2b
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_4b

    :cond_2f
    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_48

    .line 5543
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_44

    .line 5544
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_4b

    .line 5546
    :cond_44
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_4b

    .line 5549
    :cond_48
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5551
    :goto_4b
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_53
    return-void
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 5458
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_15

    .line 5459
    iget p2, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz p2, :cond_c

    .line 5464
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 5467
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p2, 0x7fffffff

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 5471
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5472
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeLayeringTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 5475
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public canAddInternalSystemWindow()Z
    .registers 1

    .line 1267
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return p0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 5

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1936
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-nez v0, :cond_25

    .line 1937
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    .line 1938
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_1e

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    move p0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move p0, v2

    :goto_1f
    if-eqz v0, :cond_24

    if-nez p0, :cond_24

    return v2

    :cond_24
    return v1

    .line 1941
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_38

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of p0, p0, Lcom/android/server/wm/SnapshotStartingData;

    if-nez p0, :cond_39

    :cond_38
    return v2

    :cond_39
    return v1
.end method

.method public canBeHiddenByKeyguard()Z
    .registers 5

    .line 3928
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 3931
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x7f8

    if-eq v0, v2, :cond_2e

    const/16 v3, 0x7f9

    if-eq v0, v3, :cond_2e

    .line 3940
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3941
    invoke-interface {p0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-ge v0, p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public canBeImeLayeringTarget()Z
    .registers 6

    .line 2524
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2530
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 2534
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f4

    if-ne v0, v2, :cond_16

    return v1

    .line 2539
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_22

    .line 2540
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    return v1

    .line 2546
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2547
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    .line 2552
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    goto :goto_42

    .line 2564
    :cond_37
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20008

    and-int/2addr v2, v3

    if-eqz v2, :cond_42

    if-eq v2, v3, :cond_42

    return v1

    :cond_42
    :goto_42
    if-eqz v0, :cond_51

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_51

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2575
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_51

    return v1

    .line 2597
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    if-nez v0, :cond_69

    .line 2598
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_69

    :cond_68
    return v1

    :cond_69
    :goto_69
    const/4 p0, 0x1

    return p0
.end method

.method public final canPlayMoveAnimation()Z
    .registers 3

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v0

    goto :goto_1b

    .line 2167
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v0

    .line 2168
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3b

    .line 2170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez p0, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public canReceiveKeys()Z
    .registers 2

    const/4 v0, 0x0

    .line 2906
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p0

    return p0
.end method

.method public canReceiveKeys(Z)Z
    .registers 5

    .line 2925
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 2930
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_62

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2f

    .line 2933
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_49

    .line 2935
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2936
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldIgnoreInput()Z

    move-result v0

    if-nez v0, :cond_62

    :cond_49
    if-nez p1, :cond_61

    .line 2943
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    if-nez p1, :cond_61

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_61

    :cond_60
    return v2

    :cond_61
    :goto_61
    return v1

    :cond_62
    return v2
.end method

.method public canReceiveKeysReason(Z)Ljava/lang/String;
    .registers 6

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromTouch= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVisibleRequestedOrAdding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mViewVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRemoveOnExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appWindowsAreFocusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 2916
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4d

    :cond_4b
    move p1, v3

    goto :goto_4e

    :cond_4d
    :goto_4d
    move p1, v2

    :goto_4e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " canReceiveTouchInput="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " displayIsOnTop="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " displayIsTrusted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " transitShouldKeepFocus="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_8f

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2921
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_8f

    goto :goto_90

    :cond_8f
    move v2, v3

    :goto_90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public canReceiveTouchInput()Z
    .registers 4

    .line 2973
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_41

    .line 2978
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 2984
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackNavigationController;->shouldPauseTouch(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    return v2

    .line 2987
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldIgnoreInput()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_40

    return v1

    :cond_40
    return v2

    :cond_41
    :goto_41
    return v1
.end method

.method public canScreenshotIme()Z
    .registers 1

    .line 6146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canShowTransient()Z
    .registers 1

    .line 3923
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canShowWhenLocked()Z
    .registers 2

    .line 2949
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    .line 2951
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p0

    return p0

    .line 2953
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public cancelAndRedraw(I)Z
    .registers 5

    .line 6167
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 6168
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-lez p0, :cond_d

    return v2

    :cond_d
    return v1

    .line 6170
    :cond_e
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    iget p0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-le p0, p1, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method public checkPolicyVisibilityChange()V
    .registers 7

    .line 2763
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_55

    const/4 v0, 0x1

    if-eqz v1, :cond_f

    .line 2769
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_12

    .line 2771
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2773
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-nez v1, :cond_55

    .line 2774
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const-string v3, "checkPolicyVisibilityChange"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 2775
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_30

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2778
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2779
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_49

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x5598801f1a5cc7c0L

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2781
    :cond_49
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2783
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2787
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    :cond_55
    return-void
.end method

.method public clearClientTouchableRegion()V
    .registers 2

    const/4 v0, 0x0

    .line 6135
    iput v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 6136
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public clearFrozenInsetsState()V
    .registers 2

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public clearPolicyVisibilityFlag(I)V
    .registers 3

    .line 1767
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1768
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 4427
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4429
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 4431
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_25

    .line 4432
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 4447
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 4448
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_32
    return-void
.end method

.method public final computeDragResizing()Z
    .registers 5

    .line 4035
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4039
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_17

    return v1

    .line 4043
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    return v1

    .line 4048
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_33

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p0, v3, :cond_2b

    goto :goto_33

    .line 4052
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    :goto_33
    return v1
.end method

.method public final consumeInsetsChange()V
    .registers 3

    .line 3848
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasInsetsChanged()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3849
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setInsetsChanged(Z)V

    .line 3850
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    if-nez v0, :cond_1f

    .line 3852
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1f
    return-void
.end method

.method public final cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V
    .registers 4

    .line 3558
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3559
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_29

    .line 3563
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3564
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_18

    goto :goto_29

    .line 3568
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 3569
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreeformWindowMode(Landroid/graphics/Rect;)V

    .line 3570
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public destroySurface(ZZ)Z
    .registers 12

    .line 3312
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 3314
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3315
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v2

    :goto_17
    if-ltz v3, :cond_28

    .line 3316
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 3317
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    :cond_27
    move v4, v2

    :cond_28
    if-nez p2, :cond_31

    .line 3321
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_31

    if-nez p1, :cond_31

    goto :goto_7c

    .line 3325
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_7c

    .line 3326
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v3, 0x4

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_60

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, p2, v3, v5}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v7, -0x292331b5c05ac4f3L    # -2.7060678377745214E110

    const/16 v0, 0xfc

    invoke-static {v6, v7, v8, v0, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_60
    if-eqz p1, :cond_66

    .line 3331
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz p2, :cond_69

    .line 3332
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 3334
    :cond_69
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz p2, :cond_70

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    :cond_70
    if-eqz p1, :cond_75

    .line 3338
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3340
    :cond_75
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez p1, :cond_7c

    .line 3341
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    return v1

    :cond_7c
    :goto_7c
    return v4
.end method

.method public destroySurfaceUnchecked()V
    .registers 6

    .line 3353
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 3354
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 3358
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3359
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x65d21f3ff1173ee3L    # 3.0079123685830877E182

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3361
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3362
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    :cond_31
    return-void
.end method

.method public disposeInputChannel()V
    .registers 4

    .line 2626
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2628
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 2629
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 2634
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public final dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 5743
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 5745
    :cond_7
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->unsetBuffer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 4160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4162
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 4163
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4162
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOwnerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " showForAllUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 4167
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requested w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4172
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v0, v2, :cond_f0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v0, v2, :cond_111

    .line 4173
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LastRequested w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    :cond_111
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_119

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_13e

    .line 4177
    :cond_119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mParentWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    :cond_13e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_14a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_14a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_177

    .line 4181
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsFloatingLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_177
    if-eqz p3, :cond_190

    .line 4186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4187
    const-string v0, " mSubLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_190
    if-eqz p3, :cond_254

    .line 4190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4191
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1fe

    .line 4192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drawnStateEvaluated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mightAffectAllDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    :cond_1fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHaveFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mObscured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4199
    iget v0, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    if-eqz v0, :cond_254

    .line 4200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisableFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/View;

    const-string v2, "mSystemUiVisibility"

    iget v3, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    :cond_254
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_274

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_274

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_274

    .line 4205
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_274

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_274

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    if-nez v0, :cond_274

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_2cd

    .line 4208
    :cond_274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLegacyPolicyVisibilityAfterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppOpVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPermanentlyHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHiddenWhileSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsForceHiddenNonSystemOverlayWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    :cond_2cd
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v0, :cond_2d5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_2f8

    .line 4218
    :cond_2d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRelayoutCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f8
    if-eqz p3, :cond_3c4

    .line 4222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mGivenContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 4223
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4222
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v0, :cond_32f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_371

    .line 4225
    :cond_32f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouchableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGivenInsetsPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 4228
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 4229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "touchable region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    :cond_371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz v0, :cond_3c4

    .line 4234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedActivityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4238
    :cond_3c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReadyForDisplay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWindowRemovalAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4238
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4241
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    if-eqz v0, :cond_40b

    .line 4242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsSurfacePositionPaused=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    :cond_40b
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_434

    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mCompatFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_434
    if-eqz p3, :cond_45c

    .line 4248
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowFrames;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " surface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4251
    :cond_45c
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4253
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4254
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_49e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_49e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_49e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_4d5

    .line 4255
    :cond_49e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAnimatingExit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRemoveOnExit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDestroying="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRemoved="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    :cond_4d5
    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v0, :cond_4dd

    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v0, :cond_500

    .line 4262
    :cond_4dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mXOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mYOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    :cond_500
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_50c

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_52f

    .line 4265
    :cond_50c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mVScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4268
    :cond_52f
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53d

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_560

    .line 4269
    :cond_53d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    :cond_560
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_56c

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_58f

    .line 4273
    :cond_56c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperXStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperYStep="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    :cond_58f
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5ae

    .line 4277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperZoomOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4279
    :cond_5ae
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5b8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_5db

    .line 4281
    :cond_5b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperDisplayOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperDisplayOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    :cond_5db
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5f8

    .line 4285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDrawLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4287
    :cond_5f8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_619

    .line 4288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    :cond_619
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    if-eqz v0, :cond_63a

    .line 4291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "computeDragResizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4293
    :cond_63a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    if-eqz v0, :cond_652

    .line 4294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeInsetsConsumed=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4296
    :cond_652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keepClearAreas: restricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unrestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_6d7

    .line 4301
    iget p3, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    if-eq p3, v0, :cond_6d7

    .line 4302
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Requested non-default-visibility types: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 4304
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    xor-int/2addr v0, v1

    .line 4303
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4302
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4308
    :cond_6d7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPrepareSyncSeqId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4309
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mBufferSeqId="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 4075
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    return-void

    .line 4080
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v1, 0x10b00000001L

    .line 4081
    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v1, 0x10500000003L

    .line 4082
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4084
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p4

    if-eqz p4, :cond_2d

    .line 4086
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p4

    goto :goto_2e

    :cond_2d
    const/4 p4, -0x1

    :goto_2e
    const-wide v1, 0x10500000004L

    .line 4088
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4089
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v1, 0x10b00000005L

    invoke-virtual {p4, p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4090
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000006L

    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4091
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const-wide v1, 0x10b00000029L

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/server/wm/WindowFrames;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4092
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p4, p4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v1, 0x10b0000000cL

    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4093
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v1, 0x10b00000010L

    invoke-static {p4, p1, v1, v2}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 4094
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v1, 0x10b0000000dL

    invoke-virtual {p4, p1, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v1, 0x1080000000eL

    .line 4095
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000012L

    .line 4096
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000013L

    .line 4097
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000014L

    .line 4098
    iget p4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000016L

    .line 4099
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000017L

    .line 4100
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000022L

    .line 4101
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000023L

    .line 4102
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000024L

    .line 4103
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000025L

    .line 4104
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000026L

    .line 4105
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002aL

    .line 4106
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002bL

    .line 4107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1020000002cL

    .line 4108
    iget p4, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10500000030L

    .line 4109
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4110
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_114
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_129

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-wide v1, 0x20b0000002dL

    .line 4111
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_114

    .line 4113
    :cond_129
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_12f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-wide v1, 0x20b0000002eL

    .line 4114
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_12f

    .line 4116
    :cond_144
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    if-eqz p4, :cond_164

    const/4 p4, 0x0

    .line 4117
    :goto_149
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p4, v0, :cond_164

    .line 4118
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    const-wide v1, 0x20b0000002fL

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_149

    .line 4121
    :cond_164
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimController()Lcom/android/server/wm/Dimmer;

    move-result-object p4

    if-eqz p4, :cond_178

    .line 4123
    invoke-virtual {p4}, Lcom/android/server/wm/Dimmer;->getDimBounds()Landroid/graphics/Rect;

    move-result-object p4

    if-eqz p4, :cond_178

    const-wide v0, 0x10b00000031L

    .line 4125
    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_178
    const-wide v0, 0x10500000033L

    .line 4128
    iget p4, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4129
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p4, p4, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    const-wide v0, 0x10500000032L

    if-eqz p4, :cond_193

    .line 4130
    iget p0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_198

    .line 4132
    :cond_193
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4134
    :goto_198
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final executeDrawHandlers(Landroid/view/SurfaceControl$Transaction;I)Z
    .registers 11

    .line 6050
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x1

    if-nez p1, :cond_11

    .line 6057
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    .line 6061
    :goto_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_18
    if-ge v5, v0, :cond_31

    .line 6064
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 6065
    iget v7, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    if-gt v7, p2, :cond_2e

    .line 6066
    iget-object v7, v6, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6067
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 6070
    :cond_31
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_38

    return v1

    .line 6074
    :cond_38
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6075
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x40

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-eqz v3, :cond_4b

    .line 6077
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4b
    return v2
.end method

.method public fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/window/ActivityWindowInfo;ZZ)V
    .registers 9

    .line 3656
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3657
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3658
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1f

    .line 3659
    iget-object v2, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 3661
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_46

    .line 3662
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_2e

    .line 3663
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 3665
    :cond_2e
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3666
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_46

    .line 3667
    iget-object v1, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 3670
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getCompatScaleForClient()F

    move-result v0

    iput v0, p1, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 3671
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    iget v0, v0, Landroid/window/ClientWindowFrames;->seq:I

    invoke-static {v0}, Landroid/util/SequenceUtils;->getNextSeq(I)I

    move-result v0

    iput v0, p1, Landroid/window/ClientWindowFrames;->seq:I

    .line 3672
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    if-eq v0, p1, :cond_5d

    .line 3673
    invoke-virtual {v0, p1}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    :cond_5d
    if-nez p4, :cond_7b

    if-eqz p5, :cond_6c

    .line 3680
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_7b

    .line 3681
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_7b

    .line 3693
    :cond_6c
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p2, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    if-eqz p3, :cond_a1

    .line 3694
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz p1, :cond_a1

    .line 3695
    invoke-virtual {p3, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    goto :goto_a1

    .line 3682
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3683
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    .line 3684
    invoke-virtual {p2, p1, p4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3685
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    if-eq p2, p1, :cond_8d

    .line 3686
    invoke-virtual {p1, p2}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    :cond_8d
    if-eqz p3, :cond_a1

    .line 3688
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    if-eqz p1, :cond_a1

    .line 3689
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 3690
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, p3}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 3698
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez p1, :cond_aa

    const/4 p1, 0x1

    .line 3699
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    :cond_aa
    return-void
.end method

.method public fillInsetsSourceControls(Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 5

    .line 3719
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl$Array;->getSeq()I

    move-result v0

    .line 3721
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 3722
    invoke-virtual {p1, v1, p2}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 3723
    invoke-static {v0}, Landroid/util/SequenceUtils;->getNextSeq(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsSourceControl$Array;->setSeq(I)V

    .line 3724
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    if-eq p1, p0, :cond_24

    const/4 p2, 0x0

    .line 3726
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    :cond_24
    return-void
.end method

.method public fillInsetsState(Landroid/view/InsetsState;Z)V
    .registers 5

    .line 3708
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getSeq()I

    move-result v0

    .line 3709
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getCompatInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 3710
    invoke-static {v0}, Landroid/util/SequenceUtils;->getNextSeq(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsState;->setSeq(I)V

    .line 3711
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    if-eq p1, p0, :cond_1c

    const/4 p2, 0x0

    .line 3713
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    :cond_1c
    return-void
.end method

.method public fillsDisplay()Z
    .registers 4

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2198
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_1e

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_1e

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v1, v2, :cond_1e

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt p0, v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public fillsParent()Z
    .registers 2

    .line 5926
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z
    .registers 16

    .line 5838
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "ms"

    const-string v4, " "

    const-string v5, "WindowManager"

    const/4 v6, 0x0

    if-lez v0, :cond_36

    .line 5840
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    sub-long/2addr v7, v9

    .line 5841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finishDrawing of orientation change: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    iput-wide v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    goto :goto_71

    .line 5843
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_71

    iget-wide v7, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_71

    .line 5844
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_71

    .line 5846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-wide v7, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    sub-long/2addr v2, v7

    .line 5847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishDrawing of relaunch: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5848
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    .line 5850
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8b

    .line 5851
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5852
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 5857
    :cond_8b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    const/4 v1, 0x5

    const-wide v2, 0x7061a4986f3138b4L    # 2.191280045794295E233

    const/4 v4, 0x1

    if-eqz v0, :cond_c9

    .line 5859
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-ne v0, v4, :cond_9e

    move v0, v4

    goto :goto_9f

    :cond_9e
    move v0, v6

    :goto_9f
    if-eqz v0, :cond_c7

    .line 5860
    iget v5, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    if-le v5, p2, :cond_c7

    if-eqz p1, :cond_c7

    .line 5862
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_c4

    int-to-long v7, p2

    int-to-long v9, v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v2, v3, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5868
    :cond_c4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    :cond_c7
    move v7, v6

    goto :goto_fc

    .line 5871
    :cond_c9
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-lez v0, :cond_cf

    move v5, v4

    goto :goto_d0

    :cond_cf
    move v5, v6

    :goto_d0
    if-eqz v5, :cond_d6

    if-le v0, p2, :cond_d6

    move v7, v4

    goto :goto_d7

    :cond_d6
    move v7, v6

    :goto_d7
    if-eqz v7, :cond_fb

    if-eqz p1, :cond_fb

    .line 5874
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_f8

    int-to-long v8, p2

    int-to-long v10, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v8, v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5879
    :cond_f8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    :cond_fb
    move v0, v5

    .line 5883
    :goto_fc
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->executeDrawHandlers(Landroid/view/SurfaceControl$Transaction;I)Z

    move-result v1

    .line 5888
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5889
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_113

    .line 5891
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/AsyncRotationController;->handleFinishDrawing(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    if-eqz v2, :cond_113

    move-object p1, v3

    move v0, v4

    move p2, v6

    goto :goto_151

    :cond_113
    if-eqz v0, :cond_13e

    .line 5898
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_120

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-lt p2, v0, :cond_127

    goto :goto_122

    :cond_120
    if-nez v7, :cond_127

    .line 5899
    :goto_122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    move-result p2

    goto :goto_128

    :cond_127
    move p2, v6

    :goto_128
    if-eqz p1, :cond_13c

    .line 5901
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_136

    .line 5903
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncMethod()I

    move-result v0

    if-ne v0, v4, :cond_13c

    .line 5904
    :cond_136
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-object p1, v3

    :cond_13c
    :goto_13c
    move v0, v6

    goto :goto_151

    .line 5908
    :cond_13e
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez p2, :cond_14f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    move-result p2

    if-eqz p2, :cond_14f

    .line 5910
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    move-result p2

    goto :goto_13c

    :cond_14f
    move p2, v6

    move v0, p2

    .line 5913
    :goto_151
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p0

    or-int/2addr p0, p2

    if-nez v0, :cond_15f

    if-nez v1, :cond_15e

    if-eqz p0, :cond_15f

    :cond_15e
    return v4

    :cond_15f
    return v6
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .registers 5

    .line 5824
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5825
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 5826
    iput v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    :cond_10
    if-eqz p3, :cond_17

    .line 5832
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 5834
    :cond_17
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    return-void
.end method

.method public final forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 8

    .line 4582
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4583
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    move v3, v2

    :goto_10
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2c

    .line 4585
    iget v5, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2c

    .line 4586
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_23

    goto :goto_2c

    .line 4593
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 4596
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_33

    return v4

    :cond_33
    :goto_33
    if-ge v3, v0, :cond_4a

    .line 4601
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v4

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_41

    goto :goto_4a

    .line 4608
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    goto :goto_33

    :cond_4a
    :goto_4a
    return v2
.end method

.method public final forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6

    .line 4653
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4654
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    :goto_10
    if-ltz v0, :cond_2b

    .line 4656
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2b

    .line 4657
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_22

    goto :goto_2b

    .line 4664
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 4667
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_32

    return v1

    :cond_32
    :goto_32
    if-ltz v0, :cond_49

    .line 4672
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_40

    goto :goto_49

    .line 4679
    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_32

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return p0
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4

    .line 4565
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4567
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0

    :cond_d
    if-eqz p2, :cond_14

    .line 4571
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p0

    return p0

    .line 4573
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p0

    return p0
.end method

.method public forceReportingResized()V
    .registers 1

    .line 5618
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->forceReportingResized()V

    return-void
.end method

.method public final frameChanged()Z
    .registers 2

    .line 1491
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final frameCoversEntireAppTokenBounds()Z
    .registers 3

    .line 4008
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4009
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 4010
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public freezeInsetsState()V
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez v0, :cond_10

    .line 892
    new-instance v0, Landroid/view/InsetsState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    :cond_10
    return-void
.end method

.method public getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 6151
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getAnimatingTypes()I
    .registers 1

    .line 852
    iget p0, p0, Lcom/android/server/wm/WindowState;->mAnimatingTypes:I

    return p0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 5494
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5495
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5496
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0

    .line 5498
    :cond_17
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getBaseType()I
    .registers 1

    .line 1402
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getClientViewRootSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 5738
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getCompatInsetsState()Landroid/view/InsetsState;
    .registers 4

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1604
    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    .line 1605
    new-instance v1, Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 1606
    iget p0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->scale(F)V

    return-object v1

    :cond_18
    return-object v0
.end method

.method public getCompatScaleForClient()F
    .registers 2

    .line 1209
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_b
    iget p0, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    return p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 3615
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->registeredForDisplayAreaConfigChanges()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3616
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    .line 3621
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3622
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3623
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 1

    .line 5646
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object p0
.end method

.method public getCreateTime()J
    .registers 3

    .line 1697
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mCreateTime:J

    return-wide v0
.end method

.method public final getDimController()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 5166
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5168
    iget-object p0, v0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 5170
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 5172
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDimParent()Lcom/android/server/wm/WindowContainer;
    .registers 3

    .line 5178
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5179
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isSuitableForDimming()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 5182
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisableFlags()I
    .registers 1

    .line 1397
    iget p0, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1388
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 2

    .line 1530
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object p1
.end method

.method public getDisplayId()I
    .registers 1

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 1632
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1542
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDrawnStateEvaluated()Z
    .registers 1

    .line 1236
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return p0
.end method

.method public getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3548
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 3549
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3550
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    return-void

    .line 3553
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    return-void
.end method

.method public getFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1375
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 2

    .line 5453
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->getImeHost(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    return-object p0
.end method

.method public getImeInputTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 5613
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 5614
    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImeLayeringTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 5608
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 3

    .line 1691
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 1692
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    return-wide v0

    .line 1693
    :cond_7
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getInsetsSourceProviders()Landroid/util/SparseArray;
    .registers 2

    .line 5661
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5662
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 5664
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getInsetsState()Landroid/view/InsetsState;
    .registers 2

    const/4 v0, 0x0

    .line 1558
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public getInsetsState(Z)Landroid/view/InsetsState;
    .registers 4

    .line 1570
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 1573
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0

    .line 1576
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1577
    :goto_1e
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/InsetsPolicy;->enforceInsetsPolicyForTarget(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    .line 1579
    invoke-virtual {v1, p0, v0, p1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;
    .registers 6

    .line 1615
    new-instance v0, Landroid/view/InsetsState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 1616
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_29

    .line 1617
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 1618
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v3

    .line 1619
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eq v4, v3, :cond_26

    .line 1620
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_29
    return-object v0
.end method

.method public getKeepClearAreas(Ljava/util/Collection;Ljava/util/Collection;Landroid/graphics/Matrix;[F)V
    .registers 6

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 987
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 988
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object p0

    .line 987
    invoke-interface {p2, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;
    .registers 9

    .line 5715
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    if-eqz v0, :cond_2e

    iget v1, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-ne v1, v3, :cond_2e

    iget v1, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2e

    iget-object v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 5718
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 5719
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    iget v0, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsInputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v0, v1, :cond_49

    .line 5721
    :cond_2e
    new-instance v2, Lcom/android/internal/policy/KeyInterceptionInfo;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5722
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/KeyInterceptionInfo;-><init>(IIILjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 5724
    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

    return-object p0
.end method

.method public final getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 2865
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1551
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getMergedInsetsState()Landroid/view/InsetsState;
    .registers 4

    .line 1584
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v0, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v0, :cond_13

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    goto :goto_15

    .line 1586
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 1587
    :goto_15
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    if-nez v1, :cond_1a

    return-object v0

    .line 1591
    :cond_1a
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    const/4 v0, 0x0

    .line 1592
    :goto_20
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 1593
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_36
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnBackInvokedCallbackInfo()Landroid/window/OnBackInvokedCallbackInfo;
    .registers 1

    .line 1056
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    return-object p0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 1

    .line 1262
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOwningUid()I
    .registers 1

    .line 1257
    iget p0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return p0
.end method

.method public getParentFrame()Landroid/graphics/Rect;
    .registers 1

    .line 1392
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 4358
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 1647
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    return p0
.end method

.method public getProcess()Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 3639
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object p0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public final getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 2858
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2859
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 2860
    :goto_b
    iget v1, v0, Lcom/android/server/wm/Session;->mPid:I

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    if-ne v1, v2, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    .line 2861
    :cond_1a
    iget-object p0, v0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    .line 0
    const-wide v0, 0x10b00000008L

    return-wide v0
.end method

.method public getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;
    .registers 5

    .line 995
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 997
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 1000
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1001
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1002
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1003
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1004
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1005
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2f
    return-object p0
.end method

.method public getRequestedVisibleTypes()I
    .registers 1

    .line 827
    iget p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    return p0
.end method

.method public getRotationAnimationHint()I
    .registers 1

    .line 4418
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_7

    .line 4419
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public getSurfaceTouchableRegion(Landroid/graphics/Region;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    .line 2658
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    .line 2662
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateRegionForModalActivityWindow(Landroid/graphics/Region;)V

    goto :goto_2a

    .line 2667
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 2668
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2669
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    add-int/2addr v0, v0

    add-int/2addr v1, v1

    .line 2670
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 2672
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_31

    .line 2676
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2680
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2681
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_3d

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_44

    :cond_3d
    neg-int v1, v1

    .line 2682
    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->translate(II)V

    :cond_44
    if-eqz p2, :cond_67

    .line 2684
    iget p2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_67

    .line 2688
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 2689
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2690
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2697
    :cond_67
    iget p0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_72

    .line 2698
    invoke-virtual {p1, p0}, Landroid/graphics/Region;->scale(F)V

    :cond_72
    return-void
.end method

.method public getSyncMethod()I
    .registers 3

    .line 5974
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 5976
    :cond_8
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_e

    return p0

    .line 5977
    :cond_e
    iget p0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    return p0
.end method

.method public getSystemGestureExclusion()Ljava/util/List;
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    return-object p0
.end method

.method public getTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 5583
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5584
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5586
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5587
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 5591
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->translate(II)V

    return-void
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 1656
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 1660
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopParentWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    :goto_0
    move-object v0, p0

    :cond_1
    if-eqz p0, :cond_e

    .line 4365
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_e

    .line 4366
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_e
    return-object v0
.end method

.method public getTouchOcclusionMode()I
    .registers 4

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x2

    const/4 v2, -0x1

    .line 1187
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 3515
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 3516
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 3519
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_31

    .line 3528
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3529
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_31

    .line 3530
    :cond_20
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->translate(II)V

    goto :goto_31

    .line 3525
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_31

    .line 3522
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3535
    :cond_31
    :goto_31
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3536
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    return-void
.end method

.method public getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .registers 9

    .line 5022
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5023
    aput v2, p1, v1

    const/4 v1, 0x1

    .line 5024
    aput v2, p1, v1

    const/4 v1, 0x4

    .line 5025
    aput v0, p1, v1

    .line 5026
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5027
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v4

    .line 5028
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    .line 5031
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 5032
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 5033
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 5034
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 5035
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    add-int/2addr v0, v3

    goto :goto_55

    :cond_49
    if-eqz v3, :cond_55

    .line 5037
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 5038
    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 5039
    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    :cond_55
    :goto_55
    const/4 p0, 0x2

    int-to-float v1, v1

    .line 5041
    aput v1, p1, p0

    const/4 p0, 0x5

    int-to-float v0, v0

    .line 5042
    aput v0, p1, p0

    const/4 p0, 0x6

    .line 5043
    aput v2, p1, p0

    const/4 p0, 0x7

    .line 5044
    aput v2, p1, p0

    const/16 p0, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5045
    aput v0, p1, p0

    .line 5046
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public getUid()I
    .registers 1

    .line 1652
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p0, p0, Lcom/android/server/wm/Session;->mUid:I

    return p0
.end method

.method public getVisibleBounds(Landroid/graphics/Rect;)V
    .registers 11

    .line 1668
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1669
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 1670
    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1671
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v2, :cond_25

    .line 1673
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1675
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    :cond_25
    move v1, v2

    .line 1681
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v4, p1

    move-object v3, p1

    .line 1682
    invoke-virtual/range {v2 .. v8}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    if-eqz v1, :cond_4f

    .line 1686
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_4f
    return-void
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 6

    .line 4711
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 4712
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_42

    :cond_10
    return-object v1

    .line 4718
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4719
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    :goto_21
    if-ltz v0, :cond_3c

    .line 4721
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_3c

    .line 4722
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return-object v2

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_33

    goto :goto_3c

    .line 4729
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_21

    .line 4732
    :cond_3c
    :goto_3c
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :goto_42
    return-object p0

    :cond_43
    :goto_43
    if-ltz v0, :cond_5a

    .line 4737
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    return-object v2

    :cond_4c
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_51

    goto :goto_5a

    .line 4744
    :cond_51
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_43

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public getWindowFrames()Lcom/android/server/wm/WindowFrames;
    .registers 1

    .line 5623
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    return-object p0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .registers 6

    .line 4527
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 4528
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 4529
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 4530
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 4531
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 4532
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_24

    .line 4533
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 4535
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 4538
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 4540
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    .line 4541
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_40

    move v4, v3

    goto :goto_41

    :cond_40
    move v4, v2

    :goto_41
    iput-boolean v4, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-nez v1, :cond_47

    const/4 v1, -0x1

    goto :goto_49

    .line 4542
    :cond_47
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_49
    iput v1, v0, Landroid/view/WindowInfo;->taskId:I

    .line 4543
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move v3, v2

    :goto_56
    iput-boolean v3, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 4546
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_68

    .line 4547
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 4550
    :cond_68
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_93

    .line 4552
    iget-object v3, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v3, :cond_7b

    .line 4553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_7b
    :goto_7b
    if-ge v2, v1, :cond_93

    .line 4556
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4557
    iget-object v4, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_93
    return-object v0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getWindowTag()Ljava/lang/CharSequence;
    .registers 3

    .line 4319
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4320
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_f

    goto :goto_10

    :cond_f
    return-object v0

    .line 4321
    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 1642
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getWindowType()I
    .registers 1

    .line 6093
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    return p0
.end method

.method public handleCompleteDeferredRemoval()Z
    .registers 3

    .line 4846
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4847
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 4848
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 4850
    :cond_12
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result p0

    return p0
.end method

.method public handleTapOutsideFocusInsideSelf()V
    .registers 3

    .line 6130
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveDisplayToTopInternal(I)Z

    .line 6131
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->handleTaskFocusChange(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public handleTapOutsideFocusOutsideSelf()V
    .registers 1

    .line 0
    return-void
.end method

.method public handleWindowMovedIfNeeded()V
    .registers 5

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2142
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 2143
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2146
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 2149
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2150
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    .line 2154
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v1, v0}, Landroid/view/IWindow;->moved(II)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_36

    :catch_36
    const/4 v0, 0x0

    .line 2157
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    return-void
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .line 1708
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v0, :cond_e

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public hasCompatScale()Z
    .registers 4

    .line 1220
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    return v2

    .line 1224
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages;->useLegacyScreenCompatMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    return v1

    .line 1228
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_29
    iget p0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_32

    :cond_31
    return v1

    :cond_32
    return v2
.end method

.method public hasDrawn()Z
    .registers 2

    .line 2998
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasFillingContent()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasInsetsSourceProvider()Z
    .registers 1

    .line 5653
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final hasMoved()Z
    .registers 5

    .line 2180
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasContentChanged()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_3e

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_26

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v0, :cond_3e

    :cond_26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_34

    .line 2184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public hasWallpaper()Z
    .registers 3

    .line 5947
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public hasWallpaperForLetterboxBackground()Z
    .registers 1

    .line 5951
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hide(ZZ)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 3067
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v1

    if-nez v1, :cond_c

    move p1, v0

    .line 3070
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v1, :cond_2a

    .line 3072
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3073
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_27

    move p1, v0

    .line 3077
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_2a
    if-eqz p1, :cond_2f

    .line 3082
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v1

    :goto_33
    if-nez v1, :cond_36

    return v0

    :cond_36
    const/4 v1, 0x2

    if-eqz p1, :cond_42

    .line 3091
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v2

    if-nez v2, :cond_42

    move p1, v0

    .line 3095
    :cond_42
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 3096
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    const/4 v3, 0x1

    if-nez p1, :cond_77

    .line 3099
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 3103
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    if-eqz v2, :cond_6a

    .line 3105
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_66

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x2e33f337347c71dL

    const/4 v1, 0x0

    invoke-static {p1, v4, v5, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3107
    :cond_66
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 3109
    :cond_6a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_77

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3113
    :cond_77
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p1, :cond_82

    .line 3114
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v3

    iput v1, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_82
    if-eqz p2, :cond_89

    .line 3117
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_89
    if-eqz v2, :cond_90

    .line 3120
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_90
    return v3
.end method

.method public hideNonSystemOverlayWindowsWhenVisible()Z
    .registers 3

    .line 4350
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public hidePermanentlyLw()V
    .registers 2

    .line 3232
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 3233
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 3234
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_a
    return-void
.end method

.method public immediatelyNotifyBlastSync()V
    .registers 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 5920
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 5921
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public inRelaunchingActivity()Z
    .registers 1

    .line 3840
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public incrementSeqForRelayout()I
    .registers 3

    .line 2233
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2234
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 2235
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return v0
.end method

.method public initAppOpsState()V
    .registers 8

    .line 3186
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_a

    goto :goto_27

    .line 3193
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "init-default-visibility"

    const/4 v4, 0x1

    .line 3193
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v0, 0x0

    .line 3197
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final initExclusionRestrictions()V
    .registers 4

    .line 3430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3431
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    const/4 v2, 0x1

    .line 3432
    aput-wide v0, p0, v2

    return-void
.end method

.method public isActivityWindow()Z
    .registers 1

    .line 6192
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isAlive()Z
    .registers 1

    .line 3263
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p0}, Lcom/android/server/wm/Session;->isClientDead()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAnimatingLw()Z
    .registers 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1964
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public isAnimationRunningSelfOrParent()Z
    .registers 3

    .line 4767
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 4768
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return v1

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isChildWindow()Z
    .registers 1

    .line 4340
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return p0
.end method

.method public isClientLocal()Z
    .registers 1

    .line 3844
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of p0, p0, Landroid/view/IWindow$Stub;

    return p0
.end method

.method public isDimming()Z
    .registers 1

    .line 5479
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return p0
.end method

.method public isDisplayed()Z
    .registers 3

    .line 1953
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1954
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1956
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public isDragResizeChanged()Z
    .registers 2

    .line 4022
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result p0

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isDragResizing()Z
    .registers 1

    .line 4068
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return p0
.end method

.method public isDrawFinishedLw()Z
    .registers 2

    .line 1988
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-ne p0, v0, :cond_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isDrawn()Z
    .registers 2

    .line 2000
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isDreamWindow()Z
    .registers 2

    .line 1870
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isFocused()Z
    .registers 2

    .line 3963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isForceHiddenNonSystemOverlayWindow()Z
    .registers 1

    .line 3126
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    return p0
.end method

.method public isFullyTransparent()Z
    .registers 2

    .line 1924
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 2

    .line 4018
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isGoneForLayout()Z
    .registers 4

    .line 1969
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1970
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_39

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_39

    if-nez v0, :cond_1a

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_1a
    if-eqz v0, :cond_22

    .line 1977
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1978
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowGoneForLayout()Z

    move-result v0

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_32

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_32
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    return p0

    :cond_39
    :goto_39
    const/4 p0, 0x1

    return p0
.end method

.method public isImeLayeringTarget()Z
    .registers 2

    .line 5595
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isImeOverlayLayeringTarget()Z
    .registers 2

    .line 5602
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x20008

    and-int/2addr p0, v0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isImplicitlyExcludingAllSystemGestures()Z
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 939
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->isRequestedVisible(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_27

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v0, 0x1d

    if-ge p0, v0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public isInputMethodClientFocus(II)Z
    .registers 3

    .line 6156
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->isInputMethodClientFocus(II)Z

    move-result p0

    return p0
.end method

.method public isInsetsAnimationRunning()Z
    .registers 1

    .line 6208
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    return p0
.end method

.method public isInteresting()Z
    .registers 2

    .line 1908
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isLaidOut()Z
    .registers 2

    .line 4938
    iget p0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isLastConfigReportedToClient()Z
    .registers 1

    .line 2221
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return p0
.end method

.method public final isLegacyPolicyVisibility()Z
    .registers 2

    .line 1777
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isLetterboxedForDisplayCutout()Z
    .registers 5

    .line 3982
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3986
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->parentFrameWasClippedByDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 3990
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    return v1

    .line 3994
    :cond_17
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 4000
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isObscuringDisplay()Z
    .registers 3

    .line 2189
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2190
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 2193
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public isOnScreen()Z
    .registers 7

    .line 1845
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6f

    .line 1848
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    .line 1850
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_25

    iget v3, v3, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-ne v3, v5, :cond_25

    return v1

    .line 1857
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1858
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    goto :goto_38

    :cond_34
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    .line 1859
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_40

    if-nez v0, :cond_46

    .line 1860
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result p0

    if-eqz p0, :cond_47

    :cond_46
    return v2

    :cond_47
    return v1

    .line 1862
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result p0

    if-nez p0, :cond_5d

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_5d

    return v2

    :cond_5d
    return v1

    .line 1866
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x2

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    return v1

    :cond_6e
    :goto_6e
    return v2

    :cond_6f
    :goto_6f
    return v1
.end method

.method public final isOnVirtualDisplay()Z
    .registers 2

    .line 3403
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isOpaqueDrawn()Z
    .registers 6

    .line 2012
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const/4 v3, -0x1

    if-nez v0, :cond_16

    .line 2013
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v4, v3, :cond_20

    :cond_16
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2014
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2015
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    return v1
.end method

.method public final isParentWindowGoneForLayout()Z
    .registers 1

    .line 4383
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 4384
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isParentWindowHidden()Z
    .registers 1

    .line 4378
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4379
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isPotentialDragTarget(Z)Z
    .registers 2

    if-nez p1, :cond_8

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_8
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isPresentation()Z
    .registers 2

    .line 3399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPublicPresentation()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7ee

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isPublicPresentation()Z
    .registers 2

    .line 3395
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7f5

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isReadyForDisplay()Z
    .registers 5

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1919
    :goto_f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_30

    if-nez v0, :cond_2f

    const/4 v0, 0x2

    const/4 v3, -0x1

    .line 1920
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2f
    return v2

    :cond_30
    return v1
.end method

.method public isReadyToDispatchInsetsState()Z
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 913
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 914
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    :goto_15
    if-eqz v0, :cond_1d

    .line 915
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public isRequestedVisible(I)Z
    .registers 2

    .line 817
    iget p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isRtl()Z
    .registers 2

    .line 4854
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureLocked()Z
    .registers 6

    .line 1875
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDisableSecureWindows()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1879
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    .line 1884
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSensitiveContentPackages:Lcom/android/server/wm/SensitiveContentPackages;

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 1884
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/SensitiveContentPackages;->shouldBlockScreenCaptureForApp(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    .line 1889
    :cond_2b
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public isSelfAnimating(II)Z
    .registers 4

    .line 4956
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 4959
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result p0

    return p0
.end method

.method public isSelfOrAncestorWindowAnimatingExit()Z
    .registers 2

    .line 4758
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 4761
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public final isStartingWindowAssociatedToTask()Z
    .registers 1

    .line 5130
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .registers 4

    .line 5807
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_35

    .line 5812
    :cond_e
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-ne v0, v1, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-gt v0, v1, :cond_30

    goto :goto_2d

    :cond_29
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-gtz v0, :cond_30

    .line 5816
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    .line 5818
    :cond_30
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result p0

    return p0

    :cond_35
    :goto_35
    return v1
.end method

.method public isTrustedOverlay()Z
    .registers 2

    .line 6113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6114
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    move-result p0

    if-nez p0, :cond_15

    if-eqz v0, :cond_13

    .line 6115
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .registers 2

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicyOrInsets()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleByPolicy()Z
    .registers 2

    .line 1750
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isVisibleByPolicyOrInsets()Z
    .registers 2

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p0, :cond_10

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleNow()Z
    .registers 3

    .line 1807
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 1808
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleRequested()Z
    .registers 3

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleRequestedIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicyOrInsets()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1e

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1730
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public isVisibleRequestedOrAdding()Z
    .registers 3

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1833
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2c

    .line 1834
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2c

    if-eqz v0, :cond_22

    .line 1835
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2c

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public isWindowTrustedOverlay()Z
    .registers 4

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->isTrustedOverlay(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 1172
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v2, v2, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_29

    .line 1176
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->canCreateSystemApplicationOverlay()Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1f
    return-void
.end method

.method public layoutIgnoresClientConfig()Z
    .registers 3

    .line 6186
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final logExclusionRestrictions(I)V
    .registers 15

    .line 3407
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-wide v4, v4, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    goto :goto_4b

    .line 3415
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3416
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v3, v2, p1

    sub-long v3, v0, v3

    .line 3417
    aput-wide v0, v2, p1

    .line 3419
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v7, v0, p1

    .line 3420
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    .line 3422
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sub-int v8, v7, v0

    const/4 v0, 0x1

    add-int/lit8 v9, p1, 0x1

    .line 3425
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_42

    :goto_40
    move v10, v0

    goto :goto_44

    :cond_42
    const/4 v0, 0x0

    goto :goto_40

    :goto_44
    const/4 v11, 0x0

    long-to-int v12, v3

    const/16 v5, 0xdf

    .line 3422
    invoke-static/range {v5 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIZZI)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final logPerformShow(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public markRedrawForSyncReported()V
    .registers 2

    const/4 v0, 0x1

    .line 6097
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void
.end method

.method public matchesDisplayAreaBounds()Z
    .registers 2

    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2207
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2209
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_28

    .line 2211
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2213
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public mightAffectAllDrawn()Z
    .registers 5

    .line 1898
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v3, 0x4

    if-ne v0, v3, :cond_c

    goto :goto_e

    :cond_c
    move v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v2

    .line 1900
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v0, :cond_20

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_20

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p0, :cond_20

    return v2

    :cond_20
    return v1
.end method

.method public needsRelativeLayeringToIme()Z
    .registers 6

    .line 5397
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 5404
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 5408
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 5410
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v0

    if-eqz v0, :cond_50

    return v2

    .line 5413
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_50

    .line 5417
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_4f

    if-eq v0, p0, :cond_4f

    .line 5418
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4f

    .line 5422
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 5423
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-gtz p0, :cond_4f

    return v2

    :cond_4f
    return v1

    .line 5430
    :cond_50
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20008

    and-int/2addr v0, v3

    const/high16 v3, 0x20000

    if-ne v0, v3, :cond_77

    .line 5431
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canAddInternalSystemWindow()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 5434
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_77

    if-eq v0, p0, :cond_77

    .line 5436
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-gtz p0, :cond_77

    return v2

    :cond_77
    return v1
.end method

.method public notifyInsetsChanged()V
    .registers 7

    .line 3861
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x485151d3667acd64L    # -1.7609667631311783E-40

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3862
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasInsetsChanged()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3863
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setInsetsChanged(Z)V

    .line 3864
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 3868
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3869
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3872
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 3874
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    :cond_45
    return-void
.end method

.method public notifyInsetsControlChanged(I)V
    .registers 6

    .line 3880
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x2c37c2a3df2fc52bL    # -4.044973220124337E95

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3881
    :cond_1a
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz p1, :cond_1f

    return-void

    .line 3884
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->fillInsetsState(Landroid/view/InsetsState;Z)V

    .line 3885
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->fillInsetsSourceControls(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 3886
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    new-instance v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0, v1, v2, p0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    .line 5011
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 5012
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 5503
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 5504
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result p0

    if-eqz p0, :cond_f

    const p0, 0x7fffffff

    .line 5506
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 5512
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_23

    .line 5513
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 5514
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 5517
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 5519
    :cond_23
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAppCommitInvisible()V
    .registers 3

    .line 2070
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2071
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onAppCommitInvisible()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2073
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2074
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2077
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_37
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 2242
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2243
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2244
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2245
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_17

    const/4 v1, 0x0

    .line 2247
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 2250
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v1

    if-eq v1, p0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_6a

    :cond_28
    const/high16 v1, 0x20000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_6a

    .line 2262
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v1

    .line 2262
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 2265
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p1, :cond_6a

    iget-object p1, p1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6a

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2266
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2267
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-ne p1, v0, :cond_6a

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2269
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2268
    invoke-static {p1, v0}, Lcom/android/server/wm/utils/RegionUtils;->sizeEquals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 2270
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/StartingData;->mResizedFromTransfer:Z

    .line 2272
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 1496
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_56

    if-eq p1, v0, :cond_56

    .line 1497
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 1499
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_19
    if-ltz v0, :cond_2e

    .line 1500
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    goto :goto_2f

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_2e
    move v0, v2

    .line 1505
    :goto_2f
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    :cond_38
    if-eqz p1, :cond_56

    .line 1509
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v0

    if-ne v0, p0, :cond_56

    .line 1515
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getImeInputTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 1516
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 1520
    :cond_56
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    if-eqz p1, :cond_75

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-eq v0, v2, :cond_75

    .line 1523
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1524
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDisplayId(I)V

    :cond_75
    return-void
.end method

.method public onExitAnimationDone()V
    .registers 8

    .line 4772
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 4773
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    .line 4774
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    if-eqz v1, :cond_22

    .line 4776
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4777
    const-string v5, ""

    invoke-interface {v1, v4, v5}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4779
    :cond_22
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_52

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v4, v5, v6, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0xdfb7414ba3cc255L    # -1.7125593764379152E241

    const/16 v5, 0xfc

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4784
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_75

    .line 4786
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4787
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_67
    if-ltz v3, :cond_75

    .line 4788
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_67

    .line 4792
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v3, :cond_8b

    .line 4793
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4794
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4797
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_8b

    .line 4799
    :try_start_86
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8b} :catch_8b

    .line 4805
    :catch_8b
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_98

    .line 4809
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_99

    :goto_98
    return-void

    .line 4813
    :cond_99
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_b9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v5, 0x1820e946d2803259L    # 1.853310358357224E-192

    const/16 v3, 0xc

    invoke-static {v4, v5, v6, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4816
    :cond_b9
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4818
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 4822
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const-string v5, "onExitAnimationDone"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4828
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_e0

    .line 4829
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_da

    .line 4830
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    goto :goto_e9

    .line 4832
    :cond_da
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    goto :goto_e9

    :cond_e0
    if-eqz v0, :cond_e9

    .line 4836
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4839
    :cond_e9
    :goto_e9
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4840
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_103

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x6b612e160147c76bL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4841
    :cond_103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public onMovedByResize()V
    .registers 7

    .line 2061
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x48aafffac1ef37f0L    # 1.1760123758773867E42

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2062
    :cond_1a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_23

    .line 2064
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->onWindowBoundsChanged()V

    .line 2066
    :cond_23
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 3

    .line 1249
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    const/4 p1, 0x0

    .line 1250
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    return-void
.end method

.method public onResize()V
    .registers 8

    .line 2113
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 2114
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 2115
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v4, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v5, 0x18c0572e66b739eaL

    invoke-static {v3, v5, v6, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2116
    :cond_2e
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_45

    .line 2118
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v0, :cond_45

    .line 2119
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    .line 2123
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_4c

    .line 2124
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->onWindowBoundsChanged()V

    .line 2127
    :cond_4c
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    return-void
.end method

.method public onResizeHandled()V
    .registers 1

    .line 4951
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->onResizeHandled()V

    return-void
.end method

.method public final onResizePostDispatched(ZII)V
    .registers 7

    if-eqz p1, :cond_31

    if-ltz p2, :cond_31

    .line 3827
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 3828
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    if-eq p2, p1, :cond_31

    .line 3829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 3830
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_31

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x4fdf11be8b68c169L    # -7.310813019334474E-77

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3834
    :cond_31
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 3835
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    filled-new-array {p3}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMoved([I)V

    :cond_46
    return-void
.end method

.method public onSetAppExiting(Z)Z
    .registers 7

    .line 2082
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    .line 2089
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 2090
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 2092
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz p1, :cond_32

    .line 2093
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2094
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2095
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_2c
    if-eqz v0, :cond_31

    .line 2099
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_31
    move v2, v1

    .line 2103
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_39
    if-ltz v0, :cond_4b

    .line 2104
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2105
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->onSetAppExiting(Z)Z

    move-result v1

    or-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_4b
    return v2
.end method

.method public onSurfaceShownChanged(Z)V
    .registers 4

    .line 3367
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-ne v0, p1, :cond_5

    goto :goto_45

    .line 3370
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz p1, :cond_d

    .line 3373
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->initExclusionRestrictions()V

    goto :goto_1c

    :cond_d
    const/4 v0, 0x0

    .line 3375
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    const/4 v0, 0x1

    .line 3376
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 3377
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 3384
    :goto_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_45

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_45

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_45

    const/16 v1, 0x7f5

    if-ne v0, v1, :cond_36

    .line 3387
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnVirtualDisplay()Z

    move-result v0

    if-nez v0, :cond_45

    .line 3389
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->onNonAppSurfaceVisibilityChanged(IIZ)V

    :cond_45
    :goto_45
    return-void
.end method

.method public openInputChannel(Landroid/view/InputChannel;)V
    .registers 5

    .line 2602
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-nez v0, :cond_2b

    .line 2605
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2606
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    .line 2607
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 2608
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 2609
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    invoke-virtual {v0, p1}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 2611
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    return-void

    .line 2603
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Window already has an input channel token."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performShowLocked()Z
    .registers 7

    .line 4454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const/4 v0, 0x2

    .line 4456
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    return v1

    .line 4460
    :cond_c
    const-string v0, "performShow on "

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4462
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1b

    if-ne v0, v3, :cond_2c

    .line 4463
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2c

    .line 4464
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_29

    .line 4465
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;)V

    goto :goto_2c

    .line 4467
    :cond_29
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn()V

    .line 4471
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v3, :cond_9d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_9d

    .line 4475
    :cond_39
    const-string v0, "Showing "

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4477
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 4478
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 4481
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 4482
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_66

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x66e0c03f5735cceeL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4483
    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4484
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4486
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_9c

    .line 4487
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 4488
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4490
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_81
    if-ltz v1, :cond_9c

    .line 4491
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4492
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_99

    .line 4493
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    if-eqz v0, :cond_99

    .line 4498
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_99
    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    :cond_9c
    return v2

    :cond_9d
    :goto_9d
    return v1
.end method

.method public pokeDrawLockLw(J)V
    .registers 7

    .line 3239
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3240
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3f

    .line 3244
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3245
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 3246
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3247
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3254
    :cond_3f
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_44
    return-void
.end method

.method public prepareSurfaces()V
    .registers 3

    const/4 v0, 0x0

    .line 5243
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5244
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_25

    .line 5245
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 5247
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateFrameRateSelectionPriorityIfNeeded()V

    .line 5248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateSystemContentPriorityIfNeeded()V

    .line 5249
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5250
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateScaleIfNeeded()V

    .line 5252
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 5253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->applyDims()V

    .line 5255
    :cond_25
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void
.end method

.method public prepareSync()Z
    .registers 7

    .line 5757
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 5758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSync with mDrawHandlers, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    :cond_2c
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    return v1

    .line 5763
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    return v2

    .line 5767
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    if-eq v0, v2, :cond_4c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4c

    return v1

    .line 5779
    :cond_4c
    iput v2, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 5781
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v0, :cond_96

    .line 5782
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-lez v0, :cond_75

    .line 5786
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_70

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x5022f3507dadc9e8L    # -3.9199505725049377E-78

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5788
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 5791
    :cond_75
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 5792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncMethod()I

    move-result v0

    if-ne v0, v2, :cond_88

    .line 5793
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    iput v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 5794
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    goto :goto_a7

    .line 5795
    :cond_88
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v0, v2, :cond_a7

    .line 5797
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    goto :goto_a7

    .line 5799
    :cond_96
    iget v0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-gt v0, v1, :cond_a7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncMethod()I

    move-result v0

    if-ne v0, v2, :cond_a7

    .line 5800
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    :cond_a7
    :goto_a7
    return v2
.end method

.method public prepareWindowToDisplayDuringRelayout(Z)V
    .registers 12

    .line 2802
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_70

    .line 2803
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2817
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2818
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "theater_mode_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v1

    .line 2820
    :goto_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    move v2, v3

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v2, v1

    :goto_3b
    if-eqz v0, :cond_69

    if-eqz v2, :cond_69

    .line 2822
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2823
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2824
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_69

    .line 2828
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v8, "android.server.wm:SCREEN_ON_FLAG"

    .line 2830
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    const/4 v7, 0x2

    .line 2828
    invoke-virtual/range {v4 .. v9}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    .line 2833
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_70

    .line 2834
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_70
    if-eqz p1, :cond_73

    goto :goto_92

    .line 2845
    :cond_73
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p1, p1, 0xf0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_7f

    .line 2847
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2850
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 2851
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    :cond_92
    :goto_92
    return-void
.end method

.method public providesDisplayDecorInsets()Z
    .registers 6

    .line 1754
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1757
    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_27

    .line 1758
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInsetsSourceProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    .line 1759
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    sget v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->OVERRIDE_CONFIG_TYPES:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_24

    return v2

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_27
    return v1
.end method

.method public receiveFocusFromTapOutside()Z
    .registers 2

    const/4 v0, 0x1

    .line 6119
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p0

    return p0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    .line 3946
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3947
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_16

    .line 3948
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_20

    .line 3950
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3951
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public relayoutVisibleWindow(I)I
    .registers 9

    .line 4898
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 4900
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_11

    :cond_f
    move v3, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v3, v1

    :goto_12
    or-int/2addr p1, v3

    .line 4902
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_64

    .line 4903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relayoutVisibleWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDestroying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4908
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 4909
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 4911
    :cond_4c
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_64

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x4832185d6d27ce37L    # -6.865810971800011E-40

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4914
    :cond_64
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_71

    .line 4915
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4916
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_71
    if-nez v0, :cond_77

    .line 4919
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 4922
    :cond_77
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4924
    const-string v1, "prepareToDisplay"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4926
    :try_start_82
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_89

    .line 4928
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_89
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4929
    throw p0
.end method

.method public removeIfPossible()V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 2339
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 2340
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    const/4 v4, 0x5

    if-eqz v2, :cond_27

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x3680b9ff8a84374cL    # 3.6623275831251076E-46

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, v8, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2343
    :cond_27
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_2d

    move v2, v1

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    if-eqz v2, :cond_62

    .line 2345
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_48

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x430e0e4f844acf3bL    # -3.98439041103438E-15

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2348
    :cond_48
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_54

    .line 2349
    new-instance v6, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 2358
    :cond_54
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v6, v5, Lcom/android/server/wm/StartingData;->mTransitionId:I

    if-eqz v6, :cond_73

    .line 2359
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    invoke-interface {v6, v5}, Lcom/android/server/wm/TransitionTracer;->logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V

    goto :goto_73

    .line 2361
    :cond_62
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v1, :cond_73

    const/16 v5, 0x80

    .line 2362
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 2365
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2368
    :cond_73
    :goto_73
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_a6

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x5088bec7b71fc43bL    # -4.903126733184078E-80

    invoke-static {v9, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2373
    :cond_a6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 2374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2377
    :try_start_ae
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    const/4 v8, 0x0

    .line 2378
    iput-object v8, v0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 2380
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v9, v9, v3

    const/4 v10, 0x2

    if-eqz v9, :cond_11e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iget-boolean v14, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v15

    const/4 v4, -0x1

    invoke-virtual {v0, v10, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_e7

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v8

    if-eqz v8, :cond_e7

    move v8, v1

    goto :goto_e8

    :catchall_e4
    move-exception v0

    goto/16 :goto_2ae

    :cond_e7
    move v8, v3

    :goto_e8
    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v15, v14

    move-object v14, v13

    move-object v13, v9

    filled-new-array/range {v11 .. v19}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v8, 0x24fe4726df793069L

    const v11, 0xfff0

    invoke-static {v10, v8, v9, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2390
    :cond_11e
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v1, :cond_145

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_145

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_145

    .line 2391
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_145

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2392
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_145

    .line 2395
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v4, v4, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2396
    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivitySnapshotController;->invalidateSnapshot(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2401
    :cond_145
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_230

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_230

    .line 2406
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    if-nez v4, :cond_15f

    .line 2409
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inRelaunchingActivity()Z

    move-result v4

    if-nez v4, :cond_15f

    move v4, v1

    goto :goto_160

    :cond_15f
    move v4, v3

    .line 2413
    :goto_160
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1c6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v8

    if-eqz v8, :cond_1c6

    if-nez v2, :cond_170

    const/4 v8, 0x2

    goto :goto_171

    :cond_170
    const/4 v8, 0x5

    :goto_171
    if-eqz v4, :cond_1b5

    .line 2417
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9, v8, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v9

    if-eqz v9, :cond_1b5

    .line 2418
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_193

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v11, 0x6c1ada244de03cd5L    # 5.649831272567811E212

    invoke-static {v10, v11, v12, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_193
    if-eqz v2, :cond_1ab

    .line 2420
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v9

    if-eqz v9, :cond_1ab

    .line 2422
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v10, v10, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    const v11, 0x7fffffff

    invoke-virtual {v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2425
    :cond_1ab
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2429
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2430
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2432
    :cond_1b5
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v9}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v9

    if-eqz v9, :cond_1c6

    .line 2433
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v9, v0, v8}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    :cond_1c6
    if-eqz v4, :cond_1d4

    .line 2436
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_1d2

    .line 2437
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v4

    if-eqz v4, :cond_1d4

    :cond_1d2
    move v4, v1

    goto :goto_1d5

    :cond_1d4
    move v4, v3

    :goto_1d5
    if-eqz v2, :cond_1e3

    .line 2438
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1e3

    .line 2439
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1e3

    move v2, v1

    goto :goto_1e4

    :cond_1e3
    move v2, v3

    .line 2445
    :goto_1e4
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v8

    if-eqz v8, :cond_230

    if-nez v2, :cond_230

    if-eqz v4, :cond_230

    .line 2448
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2450
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_20a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x3981e1c998d8c5e2L    # -3.817912311750701E31

    invoke-static {v2, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2452
    :cond_20a
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_222

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x3d541e879b803df6L

    invoke-static {v2, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2454
    :cond_222
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 2455
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_22c

    .line 2456
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V
    :try_end_22c
    .catchall {:try_start_ae .. :try_end_22c} :catchall_e4

    .line 2500
    :cond_22c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2464
    :cond_230
    :try_start_230
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_29b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isPresentation()Z

    move-result v2

    if-eqz v2, :cond_29b

    .line 2465
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "removeWin"

    .line 2466
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v2

    .line 2467
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActionChain;->isCollectingOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    .line 2469
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v8

    if-nez v8, :cond_263

    .line 2470
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v9, 0x2

    .line 2471
    invoke-virtual {v8, v9}, Lcom/android/server/wm/TransitionController;->createAndStartCollecting(I)Lcom/android/server/wm/Transition;

    move-result-object v8

    .line 2470
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 2472
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    goto :goto_264

    :cond_263
    const/4 v8, 0x0

    .line 2474
    :goto_264
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2475
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2476
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2477
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->setVisibleRequested(Z)Z

    .line 2479
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    if-nez v4, :cond_289

    .line 2481
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2482
    invoke-virtual {v1, v5}, Lcom/android/server/wm/TransitionController;->isCollectingTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_289

    .line 2485
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    .line 2487
    :cond_289
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    if-eqz v8, :cond_2aa

    .line 2489
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    goto :goto_2aa

    .line 2493
    :cond_29b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2494
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2a7

    const/4 v3, 0x4

    :cond_2a7
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_2aa
    .catchall {:try_start_230 .. :try_end_2aa} :catchall_e4

    .line 2500
    :cond_2aa
    :goto_2aa
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2ae
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    throw v0
.end method

.method public removeImmediately()V
    .registers 8

    .line 2279
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2281
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_af

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x12bfe80326b53b13L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_1e
    const/4 v0, 0x1

    .line 2286
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2287
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v2, :cond_29

    .line 2288
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    .line 2293
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 2294
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 2295
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x40

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2297
    :cond_43
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2302
    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 2303
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2305
    :cond_56
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, p0, :cond_75

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inRelaunchingActivity()Z

    move-result v3

    if-nez v3, :cond_75

    .line 2306
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 2307
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    .line 2306
    invoke-virtual {v3, v5, v1, v0, v6}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZI)V

    .line 2308
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 2312
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->providesDisplayDecorInsets()Z

    move-result v3

    .line 2314
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2317
    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 2319
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/Session;->onWindowRemoved(Lcom/android/server/wm/WindowState;)V

    .line 2320
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    .line 2326
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-ne v4, p0, :cond_9f

    .line 2327
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result p0

    if-eqz p0, :cond_9f

    move v1, v0

    :cond_9f
    if-eqz v3, :cond_aa

    .line 2329
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateDecorInsetsInfo()Z

    move-result p0

    or-int/2addr v1, p0

    :cond_aa
    if-eqz v1, :cond_af

    .line 2333
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    :cond_af
    return-void
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 5484
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5489
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public reportFocusChangedSerialized(Z)V
    .registers 6

    .line 3594
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_30

    .line 3595
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2b

    .line 3597
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    if-eqz p1, :cond_1f

    .line 3600
    :try_start_15
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_28

    .line 3602
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_28} :catch_28

    :catch_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3607
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_30
    return-void
.end method

.method public reportResized()V
    .registers 27

    move-object/from16 v0, p0

    .line 3734
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inRelaunchingActivity()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    goto :goto_1e

    .line 3740
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    const-wide/16 v6, 0x20

    .line 3744
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    const-string v8, "wm.reportResized_"

    if-eqz v1, :cond_3f

    .line 3745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3748
    :cond_3f
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    const/4 v9, 0x0

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_60

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x6009ddf18f00c049L

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v9, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3750
    :cond_60
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_69

    move v11, v10

    goto :goto_6a

    :cond_69
    move v11, v9

    :goto_6a
    const/4 v12, 0x2

    if-eqz v11, :cond_85

    .line 3752
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_85

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x25ac6127b8a538c0L    # 3.275342883710709E-127

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v9, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3755
    :cond_85
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 3756
    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v13

    .line 3757
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowState;->fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/window/ActivityWindowInfo;ZZ)V

    .line 3760
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowState;->fillInsetsState(Landroid/view/InsetsState;Z)V

    .line 3764
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v1, :cond_cc

    .line 3765
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 3766
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldSyncWithBuffers()Z

    move-result v2

    if-eqz v2, :cond_b5

    move v2, v10

    goto :goto_b6

    :cond_b5
    move v2, v9

    :goto_b6
    if-nez v1, :cond_bd

    if-eqz v11, :cond_bb

    goto :goto_bd

    :cond_bb
    move v1, v9

    goto :goto_be

    :cond_bd
    :goto_bd
    move v1, v10

    :goto_be
    if-eqz v2, :cond_c3

    .line 3768
    iget v3, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    goto :goto_c4

    :cond_c3
    const/4 v3, -0x1

    :goto_c4
    move/from16 v17, v1

    :goto_c6
    move/from16 v23, v2

    move/from16 v22, v3

    goto/16 :goto_15a

    .line 3773
    :cond_cc
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-ne v1, v12, :cond_de

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    if-nez v1, :cond_dc

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v1, :cond_de

    .line 3774
    :cond_dc
    iput v10, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 3776
    :cond_de
    iget v1, v0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iget v2, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-le v1, v2, :cond_e6

    move v2, v10

    goto :goto_e7

    :cond_e6
    move v2, v9

    :goto_e7
    if-eqz v2, :cond_10f

    .line 3778
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v1, :cond_10a

    .line 3782
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_105

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x40125a8fa4c33cb5L    # 4.588438581863717

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v9, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3784
    :cond_105
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 3786
    :cond_10a
    iget v1, v0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iput v1, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    goto :goto_124

    .line 3787
    :cond_10f
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-eqz v1, :cond_11f

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 3788
    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->isForceReportingResized()Z

    move-result v1

    if-nez v1, :cond_11f

    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-ne v1, v10, :cond_124

    .line 3790
    :cond_11f
    iget v1, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 3792
    :cond_124
    :goto_124
    iput-boolean v9, v0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    .line 3793
    iget v3, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 3794
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 3795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " buf="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_156
    move/from16 v17, v9

    goto/16 :goto_c6

    .line 3799
    :goto_15a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    if-nez v23, :cond_166

    if-eqz v1, :cond_163

    goto :goto_166

    :cond_163
    move/from16 v20, v9

    goto :goto_168

    :cond_166
    :goto_166
    move/from16 v20, v10

    .line 3801
    :goto_168
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 3802
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v21

    if-eqz v1, :cond_175

    .line 3805
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    .line 3807
    :cond_175
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v24

    .line 3809
    iput-boolean v10, v0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3810
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->clearReportResizeHints()V

    .line 3811
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v1, :cond_189

    .line 3812
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->markRedrawForSyncReported()V

    .line 3814
    :cond_189
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    new-instance v14, Landroid/app/servertransaction/WindowStateResizeItem;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    invoke-direct/range {v14 .. v25}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZIIZZLandroid/window/ActivityWindowInfo;)V

    move/from16 v2, v21

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3819
    invoke-virtual {v0, v11, v13, v2}, Lcom/android/server/wm/WindowState;->onResizePostDispatched(ZII)V

    .line 3820
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v1, :cond_1b4

    .line 3821
    iput-boolean v10, v0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 3823
    :cond_1b4
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public requestDrawIfNeeded(Ljava/util/List;)V
    .registers 5

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_48

    .line 2023
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2025
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2026
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2030
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3e

    .line 2031
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_48

    .line 2032
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_2b

    goto :goto_48

    .line 2037
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_48

    .line 2042
    :cond_39
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_49

    goto :goto_48

    .line 2047
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_49

    :cond_48
    :goto_48
    return-void

    .line 2053
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 2056
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestRedrawForSync()V
    .registers 2

    const/4 v0, 0x0

    .line 5997
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void
.end method

.method public requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 4388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4389
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-eqz v1, :cond_14

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4390
    :cond_14
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4391
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4392
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 4395
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2c
    if-ltz v0, :cond_3c

    .line 4396
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4397
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method public resetAppOpsState()V
    .registers 5

    .line 3202
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v1, :cond_19

    .line 3203
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public resetContentChanged()V
    .registers 2

    .line 5627
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    return-void
.end method

.method public resetDragResizingChangeReported()V
    .registers 2

    const/4 v0, 0x0

    .line 4030
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 4031
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    return-void
.end method

.method public sendAppVisibilityToClients()V
    .registers 7

    .line 3267
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 3269
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    .line 3272
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    if-nez v0, :cond_14

    goto/16 :goto_a4

    :cond_14
    if-eqz v0, :cond_1d

    .line 3280
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->incrementSeqForRelayout()I

    move-result v1

    goto :goto_1e

    :catch_1b
    move-exception v1

    goto :goto_5e

    :cond_1d
    const/4 v1, -0x1

    :goto_1e
    const-wide/16 v2, 0x20

    .line 3281
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 3282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wm.sendAppVis_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " surf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 3285
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(ZI)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_5d} :catch_1b

    goto :goto_91

    .line 3292
    :goto_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during dispatchAppVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3293
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v1, v3, :cond_91

    iget v1, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 3294
    invoke-static {v1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-ne v1, v2, :cond_91

    .line 3295
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    :cond_91
    :goto_91
    if-nez v0, :cond_a4

    .line 3302
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a4

    .line 3303
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 3305
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8

    .line 858
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingTypes:I

    const/16 v1, 0x49

    if-eq v0, p1, :cond_51

    const-wide/16 v2, 0x20

    .line 859
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 862
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 861
    const-string v4, "%s: setAnimatingTypes(%s)"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_23
    if-eqz p1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 865
    :goto_28
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mInsetsAnimationRunning:Z

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingTypes:I

    invoke-virtual {v0, p0, v2, p1}, Lcom/android/server/wm/InsetsPolicy;->onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;II)V

    .line 870
    iput p1, p0, Lcom/android/server/wm/WindowState;->mAnimatingTypes:I

    .line 873
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 876
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    .line 877
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/InsetsStateController;->onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 880
    :cond_51
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public final setAppOpVisibilityLw(Z)V
    .registers 3

    .line 3169
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_10

    .line 3170
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 3178
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    return-void

    .line 3180
    :cond_d
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_10
    return-void
.end method

.method public setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2

    .line 5641
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-void
.end method

.method public setDisplayLayoutNeeded()V
    .registers 1

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_9
    return-void
.end method

.method public setDragResizing()V
    .registers 3

    .line 4060
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 4061
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_9

    return-void

    .line 4064
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return-void
.end method

.method public setDrawnStateEvaluated(Z)V
    .registers 2

    .line 1244
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return-void
.end method

.method public setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .registers 4

    .line 3130
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    .line 3131
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v1, v1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v1, :cond_3b

    .line 3132
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_15

    goto :goto_3b

    :cond_15
    const/16 v1, 0x7f6

    if-ne v0, v1, :cond_2a

    .line 3136
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemApplicationOverlay()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 3137
    invoke-virtual {v0}, Lcom/android/server/wm/Session;->canCreateSystemApplicationOverlay()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_3b

    .line 3141
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_2f

    goto :goto_3b

    .line 3144
    :cond_2f
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_38

    .line 3146
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    return-void

    .line 3148
    :cond_38
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public setFrames(Landroid/window/ClientWindowFrames;II)V
    .registers 9

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1278
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1280
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1281
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1282
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1285
    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_32

    .line 1288
    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 1290
    :cond_32
    iget-boolean p1, p1, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 1294
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 1298
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_51

    .line 1299
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1300
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5e

    :cond_51
    if-eqz p1, :cond_5c

    .line 1302
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1303
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1304
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    move p1, v1

    .line 1306
    :goto_5e
    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1309
    iget p1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_7e

    iget p1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-ne p3, p1, :cond_7e

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 1310
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    .line 1311
    :cond_7e
    iput p2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1312
    iput p3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1313
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 1316
    :cond_85
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 1317
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 1318
    :cond_99
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_a0
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x7f2

    if-ne p1, p2, :cond_b4

    .line 1322
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1323
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1327
    :cond_b4
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz p1, :cond_d7

    .line 1328
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 1329
    iget-object p2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1330
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne p3, v2, :cond_d0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-eq p1, p2, :cond_d7

    .line 1331
    :cond_d0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;)Z

    .line 1335
    :cond_d7
    iget-object p1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 1337
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_e7

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez p2, :cond_e7

    .line 1338
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 1340
    :cond_e7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 1341
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    return-void
.end method

.method public setHasSurface(Z)V
    .registers 2

    .line 2519
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    return-void
.end method

.method public setHiddenWhileSuspended(Z)V
    .registers 4

    .line 3153
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3154
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_28

    .line 3157
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1c

    goto :goto_28

    .line 3160
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 3162
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    return-void

    .line 3164
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 4

    .line 1154
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1158
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p1, p1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    xor-int/lit8 p1, p1, 0x1

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCanOccludePresentation(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setKeepClearAreas(Ljava/util/List;Ljava/util/List;)Z
    .registers 5

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1026
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    if-nez v0, :cond_1e

    .line 1031
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    if-nez v1, :cond_2a

    .line 1036
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1037
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public setLastExclusionHeights(III)V
    .registers 5

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    if-ne v0, p3, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 949
    :cond_e
    :goto_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz v0, :cond_15

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 953
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aput p3, v0, p1

    .line 954
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aput p2, p0, p1

    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 8

    .line 1049
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x6471b7289323c563L    # -5.978792561111694E-176

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1051
    :cond_1e
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    return-void
.end method

.method public setPolicyVisibilityFlag(I)V
    .registers 3

    .line 1772
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1773
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public setReportResizeHints()Z
    .registers 1

    .line 1406
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->setReportResizeHints()Z

    move-result p0

    return p0
.end method

.method public setRequestedSize(II)V
    .registers 4

    .line 2793
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_9

    goto :goto_a

    :cond_9
    return-void

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 2794
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2795
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2796
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    return-void
.end method

.method public setRequestedVisibleTypes(I)I
    .registers 3

    .line 835
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    if-eq v0, p1, :cond_8

    xor-int/2addr v0, p1

    .line 837
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setRequestedVisibleTypes(II)I
    .registers 5

    .line 846
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->setRequestedVisibleTypes(I)I

    move-result p0

    return p0
.end method

.method public setSecureLocked(Z)V
    .registers 7

    .line 6196
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x72c3b605e4fc36a1L    # 6.729390872251551E244

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6197
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_27

    return-void

    .line 6200
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 6201
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_3b

    .line 6202
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z

    .line 6204
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public setSurfaceTranslationY(I)V
    .registers 2

    .line 6088
    iput p1, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    return-void
.end method

.method public setSystemGestureExclusion(Ljava/util/List;)Z
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 931
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 932
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setViewVisibility(I)V
    .registers 3

    .line 5728
    iput p1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 5730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPublicPresentation()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1c

    .line 5732
    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPresentationController:Lcom/android/server/wm/PresentationController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    const-string v0, "setViewVisibility"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public setWallpaperOffset(IIF)Z
    .registers 5

    .line 6101
    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 6104
    :cond_12
    iput p1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 6105
    iput p2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 6106
    iput p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 6107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateScaleIfNeeded()V

    .line 6108
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    const/4 p0, 0x1

    return p0
.end method

.method public setWindowScale(II)V
    .registers 6

    .line 2889
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_20

    .line 2895
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, p1, :cond_12

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    goto :goto_13

    :cond_12
    move v1, v2

    .line 2896
    :goto_13
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2897
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p1, p2, :cond_1d

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    .line 2898
    :cond_1d
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    return-void

    .line 2900
    :cond_20
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    return-void
.end method

.method public final setupWindowForRemoveOnExit()V
    .registers 4

    const/4 v0, 0x1

    .line 2505
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2507
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 2510
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 2512
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    if-eqz v0, :cond_2d

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_2d
    return-void
.end method

.method public shouldCheckTokenVisibleRequested()Z
    .registers 2

    .line 1742
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public shouldControlIme()Z
    .registers 1

    .line 6141
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldDrawBlurBehind()Z
    .registers 2

    .line 5186
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    .line 5187
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public shouldMagnify()Z
    .registers 5

    .line 5108
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f7

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3c

    const/16 v2, 0x7eb

    if-eq v1, v2, :cond_3c

    const/16 v2, 0x7e8

    if-ne v1, v2, :cond_12

    goto :goto_3c

    .line 5115
    :cond_12
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v2, v0

    if-nez v2, :cond_35

    const/16 v2, 0x7db

    if-eq v1, v2, :cond_35

    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_22

    goto :goto_35

    :cond_22
    const/16 v2, 0x7e3

    if-ne v1, v2, :cond_2d

    .line 5121
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isMagnifyNavBarEnabled()Z

    move-result p0

    return p0

    :cond_2d
    const/high16 p0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_33

    return v3

    :cond_33
    const/4 p0, 0x1

    return p0

    .line 5118
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isMagnifyImeEnabled()Z

    move-result p0

    return p0

    :cond_3c
    :goto_3c
    return v3
.end method

.method public final shouldSendRedrawForSync()Z
    .registers 4

    .line 5961
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 5964
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-gtz v0, :cond_19

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    :cond_19
    return v1

    .line 5970
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    move-result p0

    return p0
.end method

.method public shouldSyncWithBuffers()Z
    .registers 3

    .line 5992
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 5993
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSyncMethod()I

    move-result p0

    if-ne p0, v1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateSyncOnReparent()Z
    .registers 2

    .line 5752
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public show(ZZ)Z
    .registers 7

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_c

    return v1

    .line 3010
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 3013
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_18

    return v1

    .line 3017
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_1d

    return v1

    .line 3022
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_22

    return v1

    .line 3026
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsForceHiddenNonSystemOverlayWindow:Z

    if-eqz v0, :cond_27

    return v1

    :cond_27
    if-eqz p1, :cond_42

    .line 3035
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_33

    :goto_31
    move p1, v1

    goto :goto_42

    .line 3037
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x2

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_31

    :cond_42
    :goto_42
    const/4 v0, 0x1

    .line 3044
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 3045
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 3046
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_55

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_55
    if-eqz p1, :cond_5c

    .line 3050
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 3052
    :cond_5c
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz p1, :cond_67

    .line 3053
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v2, v0

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_67
    if-eqz p2, :cond_6e

    .line 3056
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3058
    :cond_6e
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_7b

    .line 3059
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_7b
    return v0
.end method

.method public showForAllUsers()Z
    .registers 4

    .line 3440
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7e8

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7ee

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7f2

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7f5

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7ea

    if-eq v1, v2, :cond_33

    const/16 v2, 0x7eb

    if-eq v1, v2, :cond_33

    packed-switch v1, :pswitch_data_36

    packed-switch v1, :pswitch_data_40

    packed-switch v1, :pswitch_data_4a

    packed-switch v1, :pswitch_data_5a

    .line 3447
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_33

    const/4 p0, 0x0

    return p0

    .line 3480
    :cond_33
    :pswitch_33
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return p0

    :pswitch_data_36
    .packed-switch 0x7d0
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x7d7
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x7e1
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x7f7
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 5

    const/16 v0, 0x15

    .line 3898
    :try_start_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3900
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0, p1, p2}, Landroid/view/IWindow;->showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 3902
    const-string p1, "WindowManager"

    const-string v1, "Failed to deliver showInsets"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3903
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public showToCurrentUser()Z
    .registers 5

    .line 3487
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3488
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4e

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4e

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v1, :cond_4e

    .line 3494
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_4e

    .line 3495
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v1, v2, :cond_4e

    .line 3496
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_4e

    .line 3497
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_4e

    return v3

    .line 3503
    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_61

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 3504
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isUserVisible(I)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p0, 0x0

    return p0

    :cond_61
    :goto_61
    return v3
.end method

.method public showWallpaper()Z
    .registers 2

    .line 5936
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5939
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 5942
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public skipLayout()Z
    .registers 2

    .line 1272
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_e

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    .line 5006
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    const/16 v1, 0x10

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 7

    .line 4964
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_5

    return-void

    .line 4968
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4969
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v0, 0x2710

    .line 4971
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 4972
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4973
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4974
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4976
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4980
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 4981
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    goto :goto_61

    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 4982
    :goto_61
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4983
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public final startMoveAnimation(II)V
    .registers 12

    .line 4989
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_5

    return-void

    .line 4993
    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x57501fc39eb53344L    # 3.877691942187174E112

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4994
    :cond_1e
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4995
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4996
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4998
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4999
    new-instance p1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState-IA;)V

    iget-object p0, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p1, v2, p0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 5002
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public final subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .registers 3

    .line 3578
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 3581
    :cond_9
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3583
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 3584
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3586
    :cond_1b
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method public surfaceInsetsChanging()Z
    .registers 2

    .line 4894
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public switchUser(I)V
    .registers 3

    .line 2646
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 2648
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_e

    .line 2649
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    return-void

    .line 2653
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    return-void
.end method

.method public syncNextBuffer()Z
    .registers 4

    .line 6007
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 6008
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eq v0, v2, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_16

    :cond_15
    return v1

    :cond_16
    :goto_16
    return v2

    .line 6010
    :cond_17
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_25

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 4328
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4329
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_53

    .line 4330
    :cond_12
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 4331
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 4332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4334
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_48

    const-string v1, " EXITING}"

    goto :goto_4a

    :cond_48
    const-string v1, "}"

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 4336
    :cond_53
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object p0
.end method

.method public transferTouch()Z
    .registers 3

    .line 2622
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 6

    .line 5345
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 5348
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 5349
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 5350
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 5351
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p2, p2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Point;->offset(II)V

    .line 5354
    iget p2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_38

    .line 5355
    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 5356
    iget v0, p3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 5360
    :cond_38
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5361
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_69

    :cond_4b
    if-eqz p1, :cond_69

    .line 5363
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 5364
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p1, p1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_60

    .line 5365
    :cond_5c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5366
    :goto_60
    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 5370
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5371
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    neg-int p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 5373
    iget p1, p3, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    add-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 5

    .line 5383
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_20

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz p0, :cond_d

    goto :goto_20

    .line 5388
    :cond_d
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 5389
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void

    .line 5384
    :cond_20
    :goto_20
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 5385
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public translateToWindowX(F)F
    .registers 4

    .line 4402
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 4403
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    .line 4404
    iget p0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr p1, p0

    :cond_13
    return p1
.end method

.method public translateToWindowY(F)F
    .registers 4

    .line 4410
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 4411
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    .line 4412
    iget p0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr p1, p0

    :cond_13
    return p1
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 3

    .line 3955
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3956
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_12

    .line 3957
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_17

    .line 3959
    :cond_12
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 5

    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 4619
    invoke-static {p2, v0}, Lcom/android/server/wm/WindowContainer;->createMergedSparseArray(Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p2

    .line 4624
    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public updateAppOpsState()V
    .registers 10

    .line 3209
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_43

    .line 3212
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v4

    .line 3213
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    .line 3214
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_30

    .line 3217
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    if-eq v0, v1, :cond_43

    .line 3219
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3220
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    return-void

    .line 3223
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v7, 0x0

    const-string v8, "attempt-to-be-visible"

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_44

    if-ne v0, v1, :cond_43

    goto :goto_44

    :cond_43
    :goto_43
    return-void

    :cond_44
    :goto_44
    const/4 v0, 0x1

    .line 3226
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    return-void
.end method

.method public updateFrameRateSelectionPriorityIfNeeded()V
    .registers 6

    .line 5199
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object v0

    .line 5200
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->calculatePriority(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 5201
    iget v2, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    if-eq v2, v1, :cond_21

    .line 5202
    iput v1, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 5203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 5207
    :cond_21
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->updateFrameRateVote(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5209
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget v3, v2, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    iget v2, v2, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    const/4 v4, 0x1

    .line 5210
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 5212
    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_41
    return-void
.end method

.method public updateGlobalScale()V
    .registers 4

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2a

    .line 1195
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1f

    .line 1196
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result v0

    .line 1197
    :goto_1f
    iput v0, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 1198
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v1, v0

    .line 1199
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    return-void

    .line 1203
    :cond_2a
    iput v1, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    return-void
.end method

.method public updateLastFrames()V
    .registers 3

    .line 4943
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4944
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateRegionForModalActivityWindow(Landroid/graphics/Region;)V
    .registers 4

    .line 2732
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 2735
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2739
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2744
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2a

    .line 2751
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2753
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2757
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreeformWindowMode(Landroid/graphics/Rect;)V

    .line 2758
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    return-void
.end method

.method public updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .registers 6

    .line 4858
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 4859
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4860
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4863
    :cond_18
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_54

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_28

    goto :goto_54

    .line 4881
    :cond_28
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4882
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_4c

    .line 4883
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4884
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-nez p0, :cond_49

    .line 4885
    iget p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4887
    :cond_49
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void

    .line 4888
    :cond_4c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 4889
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    :cond_54
    :goto_54
    return-void
.end method

.method public updateResizingWindowIfNeeded()V
    .registers 12

    .line 1414
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasInsetsChanged()Z

    move-result v0

    .line 1415
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1a
    if-nez v0, :cond_1e

    goto/16 :goto_12c

    .line 1420
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v2

    .line 1423
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_30

    .line 1424
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    xor-int/2addr v3, v5

    goto :goto_3d

    .line 1428
    :cond_30
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-nez v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v3

    if-nez v3, :cond_3c

    move v3, v5

    goto :goto_3d

    :cond_3c
    move v3, v4

    .line 1434
    :goto_3d
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    if-nez v6, :cond_49

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v6

    if-eqz v6, :cond_49

    move v6, v5

    goto :goto_4a

    :cond_49
    move v6, v4

    .line 1435
    :goto_4a
    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v7, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->frameChanged()Z

    move-result v7

    if-eqz v7, :cond_5a

    move v7, v5

    goto :goto_5b

    :cond_5a
    move v7, v4

    :goto_5b
    if-nez v2, :cond_66

    if-nez v3, :cond_66

    if-nez v6, :cond_66

    if-eqz v7, :cond_64

    goto :goto_66

    :cond_64
    move v7, v4

    goto :goto_67

    :cond_66
    :goto_66
    move v7, v5

    .line 1445
    :goto_67
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez v8, :cond_81

    if-nez v7, :cond_81

    .line 1447
    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    if-nez v8, :cond_81

    iget v8, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    if-gtz v8, :cond_81

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/ArrayList;

    .line 1448
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 1449
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 1454
    :cond_81
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v8, :cond_91

    iget v8, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    iget v9, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    if-le v8, v9, :cond_8f

    move v8, v5

    goto :goto_95

    :cond_8f
    move v8, v4

    goto :goto_95

    .line 1455
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldSendRedrawForSync()Z

    move-result v8

    :goto_95
    if-nez v7, :cond_9b

    if-nez v0, :cond_9b

    if-eqz v8, :cond_12c

    .line 1458
    :cond_9b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_c7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowFrames;->getInsetsChangedInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v7, v9, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v9, 0x7ab7bd1ceaf83bb6L

    const/16 v2, 0xf0

    invoke-static {v8, v9, v10, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1463
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->onResizeHandled()V

    if-nez v3, :cond_d1

    if-eqz v6, :cond_ef

    .line 1468
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1469
    iput v5, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1470
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_ef

    .line 1471
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ef

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_ef

    .line 1474
    iput-boolean v4, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 1478
    :cond_ef
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 1479
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_111

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x77db5563b0d2c405L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1480
    :cond_111
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-eqz v0, :cond_12c

    .line 1482
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-eqz v0, :cond_12c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v0, :cond_12c

    .line 1483
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPendingSyncResize:Z

    :cond_12c
    :goto_12c
    return-void
.end method

.method public final updateScaleIfNeeded()V
    .registers 10

    .line 5218
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 5219
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 5222
    iget v1, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    mul-float/2addr v0, v1

    .line 5224
    :cond_b
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    mul-float v5, v1, v2

    .line 5225
    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v1, v0

    mul-float v8, v1, v2

    .line 5226
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    return-void

    .line 5227
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 5228
    iput v5, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 5229
    iput v8, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 4

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasInsetsSourceProvider()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_29

    .line 1349
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_c

    goto :goto_29

    .line 1354
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_11

    goto :goto_29

    .line 1359
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object p0

    .line 1360
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_29

    .line 1361
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_29
    :goto_29
    return-void
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 5275
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_119

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    if-eqz v0, :cond_a

    goto/16 :goto_119

    .line 5278
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_119

    .line 5284
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    if-nez v0, :cond_2c

    goto/16 :goto_119

    :cond_2c
    const/4 v0, 0x0

    .line 5292
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 5293
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 5296
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7d

    .line 5297
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 5298
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 5299
    iget v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 5300
    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 5301
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 5300
    invoke-virtual {v2, v3, v3, v4, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5302
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5303
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    .line 5304
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 5303
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    goto :goto_86

    .line 5306
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 5309
    :goto_86
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5310
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 5311
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 5312
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AsyncRotationController;->hasSeamlessOperation(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-eqz v1, :cond_98

    goto/16 :goto_119

    .line 5318
    :cond_98
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v1

    if-nez v1, :cond_119

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 5319
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->isFrameSizeChanged()Z

    move-result v1

    .line 5320
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_bc

    if-eqz v2, :cond_ba

    goto :goto_bc

    :cond_ba
    move v1, v0

    goto :goto_bd

    :cond_bc
    :goto_bc
    move v1, v3

    .line 5322
    :goto_bd
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Point;->set(II)V

    if-eqz v2, :cond_d3

    .line 5324
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_d3
    if-eqz v1, :cond_ef

    .line 5326
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5327
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    move-result v1

    if-nez v1, :cond_ef

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_ef

    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v1, :cond_ef

    move v1, v3

    goto :goto_f0

    :cond_ef
    move v1, v0

    .line 5329
    :goto_f0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_109

    .line 5333
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v4

    if-eqz v4, :cond_109

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 5334
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v2

    .line 5335
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatOrientationOverrides;->getIsRelaunchingAfterRequestedOrientationChanged()Z

    move-result v2

    if-eqz v2, :cond_109

    move v0, v3

    :cond_109
    if-nez v1, :cond_114

    if-eqz v0, :cond_10e

    goto :goto_114

    .line 5339
    :cond_10e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5337
    :cond_114
    :goto_114
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    :cond_119
    :goto_119
    return-void
.end method

.method public updateSurfacePositionIfNeeded()V
    .registers 5

    .line 5265
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_13

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v0, :cond_13

    return-void

    .line 5269
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final updateSystemContentPriorityIfNeeded()V
    .registers 4

    .line 5234
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInteractionPriorityScore:I

    .line 5235
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemContentPriority:I

    if-eq v0, v1, :cond_11

    .line 5236
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setSystemContentPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 5237
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSystemContentPriority:I

    :cond_11
    return-void
.end method

.method public updateTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 5561
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_23

    if-eqz p1, :cond_15

    .line 5567
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_15

    .line 5570
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_1a

    .line 5568
    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 5574
    :goto_1a
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void

    .line 5563
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to update window not attached to any display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateTrustedOverlay()V
    .registers 5

    .line 1163
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    move-result v3

    .line 1163
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 1165
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->forceChange()V

    return-void
.end method

.method public useBlastForNextSync()V
    .registers 3

    .line 5981
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_18

    .line 5982
    :cond_6
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 5983
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5985
    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 5988
    :cond_13
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mBufferSeqId:I

    :cond_18
    :goto_18
    return-void
.end method

.method public wouldBeVisibleIfPolicyIgnored()Z
    .registers 3

    .line 1785
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_14

    goto :goto_28

    .line 1788
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1789
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v1
.end method

.method public final wouldBeVisibleRequestedIfPolicyIgnored()Z
    .registers 3

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1794
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2b

    .line 1795
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_17

    goto :goto_2b

    .line 1798
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1799
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_29

    :cond_28
    return v1

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 4144
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 4145
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 4146
    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4147
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-wide v0, 0x10900000003L

    .line 4149
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4151
    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
